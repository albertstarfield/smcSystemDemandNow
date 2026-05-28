#include "smc_helper.h"
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <os/lock.h>

// Cache for SMC keyInfo
#define KEY_INFO_CACHE_SIZE 100
static struct {
    UInt32 key;
    SMCKeyData_keyInfo_t keyInfo;
} g_keyInfoCache[KEY_INFO_CACHE_SIZE];
static int g_keyInfoCacheCount = 0;
static os_unfair_lock g_keyInfoSpinLock = OS_UNFAIR_LOCK_INIT;

UInt32 _strtoul(const char *str, int size, int base)
{
    UInt32 total = 0;
    int i;
    for (i = 0; i < size; i++)
    {
        if (base == 16)
            total += str[i] << (size - 1 - i) * 8;
        else
            total += ((unsigned char) (str[i]) << (size - 1 - i) * 8);
    }
    return total;
}

void _ultostr(char *str, size_t str_size, UInt32 val)
{
    if (str_size < 5) return;
    str[0] = (unsigned char)(val >> 24);
    str[1] = (unsigned char)(val >> 16);
    str[2] = (unsigned char)(val >> 8);
    str[3] = (unsigned char)(val);
    str[4] = '\0';
}

float _strtof(unsigned char *str, int size, int e)
{
    float total = 0;
    int i;
    for (i = 0; i < size; i++)
    {
        if (i == (size - 1))
            total += (str[i] & 0xff) >> e;
        else
            total += str[i] << (size - 1 - i) * (8 - e);
    }
    total += (str[size-1] & 0x03) * 0.25;
    return total;
}

kern_return_t SMCCall2(int index, SMCKeyData_t *inputStructure, SMCKeyData_t *outputStructure, io_connect_t conn)
{
    size_t structureInputSize = sizeof(SMCKeyData_t);
    size_t structureOutputSize = sizeof(SMCKeyData_t);
    return IOConnectCallStructMethod(conn, index, inputStructure, structureInputSize, outputStructure, &structureOutputSize);
}

kern_return_t SMCGetKeyInfo(UInt32 key, SMCKeyData_keyInfo_t* keyInfo, io_connect_t conn)
{
    SMCKeyData_t inputStructure;
    SMCKeyData_t outputStructure;
    kern_return_t result = kIOReturnSuccess;
    int i = 0;

    os_unfair_lock_lock(&g_keyInfoSpinLock);

    for (; i < g_keyInfoCacheCount; ++i)
    {
        if (key == g_keyInfoCache[i].key)
        {
            *keyInfo = g_keyInfoCache[i].keyInfo;
            break;
        }
    }

    if (i == g_keyInfoCacheCount)
    {
        memset(&inputStructure, 0, sizeof(inputStructure));
        memset(&outputStructure, 0, sizeof(outputStructure));

        inputStructure.key = key;
        inputStructure.data8 = SMC_CMD_READ_KEYINFO;

        result = SMCCall2(KERNEL_INDEX_SMC, &inputStructure, &outputStructure, conn);
        if (result == kIOReturnSuccess)
        {
            *keyInfo = outputStructure.keyInfo;
            if (g_keyInfoCacheCount < KEY_INFO_CACHE_SIZE)
            {
                g_keyInfoCache[g_keyInfoCacheCount].key = key;
                g_keyInfoCache[g_keyInfoCacheCount].keyInfo = outputStructure.keyInfo;
                ++g_keyInfoCacheCount;
            }
        }
    }

    os_unfair_lock_unlock(&g_keyInfoSpinLock);

    return result;
}

kern_return_t SMCReadKey2(const char *key, SMCVal_t *val, io_connect_t conn)
{
    kern_return_t result;
    SMCKeyData_t  inputStructure;
    SMCKeyData_t  outputStructure;

    memset(&inputStructure, 0, sizeof(SMCKeyData_t));
    memset(&outputStructure, 0, sizeof(SMCKeyData_t));
    memset(val, 0, sizeof(SMCVal_t));

    inputStructure.key = _strtoul(key, 4, 16);
    snprintf(val->key, sizeof(val->key), "%s", key);

    result = SMCGetKeyInfo(inputStructure.key, &outputStructure.keyInfo, conn);
    if (result != kIOReturnSuccess) return result;

    val->dataSize = outputStructure.keyInfo.dataSize;
    _ultostr(val->dataType, sizeof(val->dataType), outputStructure.keyInfo.dataType);
    inputStructure.keyInfo.dataSize = val->dataSize;
    inputStructure.data8 = SMC_CMD_READ_BYTES;

    result = SMCCall2(KERNEL_INDEX_SMC, &inputStructure, &outputStructure, conn);
    if (result != kIOReturnSuccess) return result;

    memcpy(val->bytes, outputStructure.bytes, sizeof(outputStructure.bytes));

    return kIOReturnSuccess;
}

kern_return_t SMCWriteKey2(SMCVal_t writeVal, io_connect_t conn)
{
    kern_return_t result;
    SMCKeyData_t  inputStructure;
    SMCKeyData_t  outputStructure;
    SMCVal_t      readVal;

    result = SMCReadKey2(writeVal.key, &readVal, conn);
    if (result != kIOReturnSuccess) return result;

    memset(&inputStructure, 0, sizeof(SMCKeyData_t));
    inputStructure.key = _strtoul(writeVal.key, 4, 16);
    inputStructure.data8 = SMC_CMD_WRITE_BYTES;
    inputStructure.keyInfo.dataSize = writeVal.dataSize;
    memcpy(inputStructure.bytes, writeVal.bytes, writeVal.dataSize);

    result = SMCCall2(KERNEL_INDEX_SMC, &inputStructure, &outputStructure, conn);

    return result;
}

float getFloatFromVal(SMCVal_t val)
{
    if (val.dataSize > 0)
    {
        if (strcmp(val.dataType, DATATYPE_SP78) == 0 && val.dataSize == 2) {
             return ((SInt16)ntohs(*(UInt16*)val.bytes)) / 256.0;
        }
        if (strncmp(val.dataType, "flt", 3) == 0 && val.dataSize == 4) {
             float fval;
             memcpy(&fval, val.bytes, sizeof(float));
             return fval;
        }
        if (strcmp(val.dataType, DATATYPE_FPE2) == 0 && val.dataSize == 2) {
             return _strtof(val.bytes, val.dataSize, 2);
        }
        if (strcmp(val.dataType, DATATYPE_UINT16) == 0 && val.dataSize == 2) {
             return (float)ntohs(*(UInt16*)val.bytes);
        }
        if (strcmp(val.dataType, DATATYPE_UINT8) == 0 && val.dataSize == 1) {
             return (float)val.bytes[0];
        }
    }
    return 0.0f;
}

int smc_helper_open(io_connect_t *conn)
{
    kern_return_t result;
    io_iterator_t iterator;
    io_object_t   device;

    CFMutableDictionaryRef matchingDictionary = IOServiceMatching("AppleSMC");
    if (matchingDictionary == NULL) {
        return (int)kIOReturnError;
    }

    result = IOServiceGetMatchingServices(kIOMainPortDefault, matchingDictionary, &iterator);
    if (result != kIOReturnSuccess)
    {
        CFRelease(matchingDictionary);
        return (int)kIOReturnError;
    }

    device = IOIteratorNext(iterator);
    IOObjectRelease(iterator);
    if (device == 0)
    {
        return (int)kIOReturnNotFound;
    }

    result = IOServiceOpen(device, mach_task_self(), 0, conn);
    IOObjectRelease(device);
    if (result != kIOReturnSuccess)
    {
        return (int)result;
    }

    return 0;
}

int smc_helper_close(io_connect_t conn)
{
    return (int)IOServiceClose(conn);
}

int smc_helper_read_key(io_connect_t conn, const char *key, float *val)
{
    SMCVal_t rawVal;
    kern_return_t result = SMCReadKey2(key, &rawVal, conn);
    if (result == kIOReturnSuccess) {
        *val = getFloatFromVal(rawVal);
        if (strcmp(key, "F0Ac") == 0 || strcmp(key, "F1Ac") == 0 || strcmp(key, "F0Tg") == 0 || strcmp(key, "F1Tg") == 0) {
            printf("[DAEMON_C_HELPER] Read key %s: dataType=%s, dataSize=%d, val=%f, bytes=%02x%02x%02x%02x\n", 
                   key, rawVal.dataType, rawVal.dataSize, *val,
                   rawVal.bytes[0], rawVal.bytes[1], rawVal.bytes[2], rawVal.bytes[3]);
            fflush(stdout);
        }
        return 0;
    }
    return (int)result;
}

int smc_helper_write_key_hex(io_connect_t conn, const char *key, const char *hex_str)
{
    SMCVal_t val;
    memset(&val, 0, sizeof(SMCVal_t));
    strncpy(val.key, key, sizeof(val.key) - 1);

    size_t hex_len = strlen(hex_str);
    if (hex_len % 2 != 0 || hex_len > 64) {
        return (int)kIOReturnBadArgument;
    }
    val.dataSize = hex_len / 2;

    char byte_str[3] = {0};
    for (size_t i = 0; i < val.dataSize; i++) {
        byte_str[0] = hex_str[i * 2];
        byte_str[1] = hex_str[i * 2 + 1];
        val.bytes[i] = (unsigned char)strtol(byte_str, NULL, 16);
    }

    kern_return_t result = SMCWriteKey2(val, conn);
    printf("[DAEMON_C_HELPER] Write key %s = %s, result=%d\n", key, hex_str, (int)result);
    fflush(stdout);
    return (int)result;
}
