#ifndef REALTIME_HELPER_H
#define REALTIME_HELPER_H

#ifdef __cplusplus
extern "C" {
#endif

void init_audio_workgroup(void);
void join_audio_workgroup(void *token_out);
void leave_audio_workgroup(void *token);
void configure_realtime(int period_ms, int computation_ms, int constraint_ms);

#ifdef __cplusplus
}
#endif

#endif // REALTIME_HELPER_H
