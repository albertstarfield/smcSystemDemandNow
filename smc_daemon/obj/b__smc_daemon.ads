pragma Warnings (Off);
pragma Ada_95;
with System;
with System.Parameters;
with System.Secondary_Stack;
package ada_main is

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: 15.0.1 20250418 (prerelease)" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   GNAT_Version_Address : constant System.Address := GNAT_Version'Address;
   pragma Export (C, GNAT_Version_Address, "__gnat_version_address");

   Ada_Main_Program_Name : constant String := "_ada_smc_daemon" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#89422a21#;
   pragma Export (C, u00001, "smc_daemonB");
   u00002 : constant Version_32 := 16#b2cfab41#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#6278fccd#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#76789da1#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#78511131#;
   pragma Export (C, u00005, "ada__calendarB");
   u00006 : constant Version_32 := 16#c907a168#;
   pragma Export (C, u00006, "ada__calendarS");
   u00007 : constant Version_32 := 16#33a162cd#;
   pragma Export (C, u00007, "ada__exceptionsB");
   u00008 : constant Version_32 := 16#00870947#;
   pragma Export (C, u00008, "ada__exceptionsS");
   u00009 : constant Version_32 := 16#85bf25f7#;
   pragma Export (C, u00009, "ada__exceptions__last_chance_handlerB");
   u00010 : constant Version_32 := 16#a028f72d#;
   pragma Export (C, u00010, "ada__exceptions__last_chance_handlerS");
   u00011 : constant Version_32 := 16#70765b54#;
   pragma Export (C, u00011, "systemS");
   u00012 : constant Version_32 := 16#7fa0a598#;
   pragma Export (C, u00012, "system__soft_linksB");
   u00013 : constant Version_32 := 16#a3fdee7d#;
   pragma Export (C, u00013, "system__soft_linksS");
   u00014 : constant Version_32 := 16#d0b087d0#;
   pragma Export (C, u00014, "system__secondary_stackB");
   u00015 : constant Version_32 := 16#debd0a58#;
   pragma Export (C, u00015, "system__secondary_stackS");
   u00016 : constant Version_32 := 16#a43efea2#;
   pragma Export (C, u00016, "system__parametersB");
   u00017 : constant Version_32 := 16#45e1a745#;
   pragma Export (C, u00017, "system__parametersS");
   u00018 : constant Version_32 := 16#bca88fbc#;
   pragma Export (C, u00018, "system__storage_elementsS");
   u00019 : constant Version_32 := 16#0286ce9f#;
   pragma Export (C, u00019, "system__soft_links__initializeB");
   u00020 : constant Version_32 := 16#ac2e8b53#;
   pragma Export (C, u00020, "system__soft_links__initializeS");
   u00021 : constant Version_32 := 16#8599b27b#;
   pragma Export (C, u00021, "system__stack_checkingB");
   u00022 : constant Version_32 := 16#b7294e42#;
   pragma Export (C, u00022, "system__stack_checkingS");
   u00023 : constant Version_32 := 16#45e1965e#;
   pragma Export (C, u00023, "system__exception_tableB");
   u00024 : constant Version_32 := 16#fd5d2d4d#;
   pragma Export (C, u00024, "system__exception_tableS");
   u00025 : constant Version_32 := 16#42d3e466#;
   pragma Export (C, u00025, "system__exceptionsS");
   u00026 : constant Version_32 := 16#c367aa24#;
   pragma Export (C, u00026, "system__exceptions__machineB");
   u00027 : constant Version_32 := 16#ec13924a#;
   pragma Export (C, u00027, "system__exceptions__machineS");
   u00028 : constant Version_32 := 16#7706238d#;
   pragma Export (C, u00028, "system__exceptions_debugB");
   u00029 : constant Version_32 := 16#40780307#;
   pragma Export (C, u00029, "system__exceptions_debugS");
   u00030 : constant Version_32 := 16#52e91815#;
   pragma Export (C, u00030, "system__img_intS");
   u00031 : constant Version_32 := 16#f2c63a02#;
   pragma Export (C, u00031, "ada__numericsS");
   u00032 : constant Version_32 := 16#174f5472#;
   pragma Export (C, u00032, "ada__numerics__big_numbersS");
   u00033 : constant Version_32 := 16#8a5c240d#;
   pragma Export (C, u00033, "system__unsigned_typesS");
   u00034 : constant Version_32 := 16#5c7d9c20#;
   pragma Export (C, u00034, "system__tracebackB");
   u00035 : constant Version_32 := 16#f6ecafe9#;
   pragma Export (C, u00035, "system__tracebackS");
   u00036 : constant Version_32 := 16#5f6b6486#;
   pragma Export (C, u00036, "system__traceback_entriesB");
   u00037 : constant Version_32 := 16#b86ae4d8#;
   pragma Export (C, u00037, "system__traceback_entriesS");
   u00038 : constant Version_32 := 16#65d5266b#;
   pragma Export (C, u00038, "system__traceback__symbolicB");
   u00039 : constant Version_32 := 16#140ceb78#;
   pragma Export (C, u00039, "system__traceback__symbolicS");
   u00040 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00040, "ada__exceptions__tracebackB");
   u00041 : constant Version_32 := 16#26ed0985#;
   pragma Export (C, u00041, "ada__exceptions__tracebackS");
   u00042 : constant Version_32 := 16#f9910acc#;
   pragma Export (C, u00042, "system__address_imageB");
   u00043 : constant Version_32 := 16#d19ac66e#;
   pragma Export (C, u00043, "system__address_imageS");
   u00044 : constant Version_32 := 16#45c8b1f1#;
   pragma Export (C, u00044, "system__img_address_32S");
   u00045 : constant Version_32 := 16#9111f9c1#;
   pragma Export (C, u00045, "interfacesS");
   u00046 : constant Version_32 := 16#68e81073#;
   pragma Export (C, u00046, "system__img_address_64S");
   u00047 : constant Version_32 := 16#fd158a37#;
   pragma Export (C, u00047, "system__wch_conB");
   u00048 : constant Version_32 := 16#a9757837#;
   pragma Export (C, u00048, "system__wch_conS");
   u00049 : constant Version_32 := 16#5c289972#;
   pragma Export (C, u00049, "system__wch_stwB");
   u00050 : constant Version_32 := 16#84645436#;
   pragma Export (C, u00050, "system__wch_stwS");
   u00051 : constant Version_32 := 16#7cd63de5#;
   pragma Export (C, u00051, "system__wch_cnvB");
   u00052 : constant Version_32 := 16#afb5b247#;
   pragma Export (C, u00052, "system__wch_cnvS");
   u00053 : constant Version_32 := 16#e538de43#;
   pragma Export (C, u00053, "system__wch_jisB");
   u00054 : constant Version_32 := 16#1a02d06d#;
   pragma Export (C, u00054, "system__wch_jisS");
   u00055 : constant Version_32 := 16#401f6fd6#;
   pragma Export (C, u00055, "interfaces__cB");
   u00056 : constant Version_32 := 16#3dbcc8ee#;
   pragma Export (C, u00056, "interfaces__cS");
   u00057 : constant Version_32 := 16#c04dcb27#;
   pragma Export (C, u00057, "system__os_libB");
   u00058 : constant Version_32 := 16#f51dc4c4#;
   pragma Export (C, u00058, "system__os_libS");
   u00059 : constant Version_32 := 16#94d23d25#;
   pragma Export (C, u00059, "system__atomic_operations__test_and_setB");
   u00060 : constant Version_32 := 16#57acee8e#;
   pragma Export (C, u00060, "system__atomic_operations__test_and_setS");
   u00061 : constant Version_32 := 16#b7152171#;
   pragma Export (C, u00061, "system__atomic_operationsS");
   u00062 : constant Version_32 := 16#553a519e#;
   pragma Export (C, u00062, "system__atomic_primitivesB");
   u00063 : constant Version_32 := 16#78a6d0b7#;
   pragma Export (C, u00063, "system__atomic_primitivesS");
   u00064 : constant Version_32 := 16#b98923bf#;
   pragma Export (C, u00064, "system__case_utilB");
   u00065 : constant Version_32 := 16#bf658c01#;
   pragma Export (C, u00065, "system__case_utilS");
   u00066 : constant Version_32 := 16#fb523cdb#;
   pragma Export (C, u00066, "system__crtlS");
   u00067 : constant Version_32 := 16#256dbbe5#;
   pragma Export (C, u00067, "system__stringsB");
   u00068 : constant Version_32 := 16#ebf45b4c#;
   pragma Export (C, u00068, "system__stringsS");
   u00069 : constant Version_32 := 16#31c3dbd8#;
   pragma Export (C, u00069, "system__os_primitivesB");
   u00070 : constant Version_32 := 16#778b3ea2#;
   pragma Export (C, u00070, "system__os_primitivesS");
   u00071 : constant Version_32 := 16#0513e9ec#;
   pragma Export (C, u00071, "ada__calendar__delaysB");
   u00072 : constant Version_32 := 16#205f84f4#;
   pragma Export (C, u00072, "ada__calendar__delaysS");
   u00073 : constant Version_32 := 16#eda0337a#;
   pragma Export (C, u00073, "ada__real_timeB");
   u00074 : constant Version_32 := 16#d2689d96#;
   pragma Export (C, u00074, "ada__real_timeS");
   u00075 : constant Version_32 := 16#9351de22#;
   pragma Export (C, u00075, "system__taskingB");
   u00076 : constant Version_32 := 16#340c0b4a#;
   pragma Export (C, u00076, "system__taskingS");
   u00077 : constant Version_32 := 16#0be5d5a2#;
   pragma Export (C, u00077, "system__task_primitivesS");
   u00078 : constant Version_32 := 16#ebe91b3f#;
   pragma Export (C, u00078, "system__os_interfaceB");
   u00079 : constant Version_32 := 16#df3d0b31#;
   pragma Export (C, u00079, "system__os_interfaceS");
   u00080 : constant Version_32 := 16#27272da6#;
   pragma Export (C, u00080, "interfaces__c__extensionsS");
   u00081 : constant Version_32 := 16#8f29e754#;
   pragma Export (C, u00081, "system__os_constantsS");
   u00082 : constant Version_32 := 16#9cd38c2c#;
   pragma Export (C, u00082, "system__os_locksS");
   u00083 : constant Version_32 := 16#38ee6d30#;
   pragma Export (C, u00083, "system__task_primitives__operationsB");
   u00084 : constant Version_32 := 16#10d0fa74#;
   pragma Export (C, u00084, "system__task_primitives__operationsS");
   u00085 : constant Version_32 := 16#4d23c29f#;
   pragma Export (C, u00085, "system__interrupt_managementB");
   u00086 : constant Version_32 := 16#455d0086#;
   pragma Export (C, u00086, "system__interrupt_managementS");
   u00087 : constant Version_32 := 16#73dc29bf#;
   pragma Export (C, u00087, "system__multiprocessorsB");
   u00088 : constant Version_32 := 16#48dac427#;
   pragma Export (C, u00088, "system__multiprocessorsS");
   u00089 : constant Version_32 := 16#e0fce7f8#;
   pragma Export (C, u00089, "system__task_infoB");
   u00090 : constant Version_32 := 16#f06ce655#;
   pragma Export (C, u00090, "system__task_infoS");
   u00091 : constant Version_32 := 16#45653325#;
   pragma Export (C, u00091, "system__tasking__debugB");
   u00092 : constant Version_32 := 16#efd4ee9a#;
   pragma Export (C, u00092, "system__tasking__debugS");
   u00093 : constant Version_32 := 16#ca878138#;
   pragma Export (C, u00093, "system__concat_2B");
   u00094 : constant Version_32 := 16#c58d28a3#;
   pragma Export (C, u00094, "system__concat_2S");
   u00095 : constant Version_32 := 16#752a67ed#;
   pragma Export (C, u00095, "system__concat_3B");
   u00096 : constant Version_32 := 16#fa0c42f6#;
   pragma Export (C, u00096, "system__concat_3S");
   u00097 : constant Version_32 := 16#3ab08e6e#;
   pragma Export (C, u00097, "system__img_lliS");
   u00098 : constant Version_32 := 16#3066cab0#;
   pragma Export (C, u00098, "system__stack_usageB");
   u00099 : constant Version_32 := 16#2e36c345#;
   pragma Export (C, u00099, "system__stack_usageS");
   u00100 : constant Version_32 := 16#20ec7aa3#;
   pragma Export (C, u00100, "system__ioB");
   u00101 : constant Version_32 := 16#ee34ac1b#;
   pragma Export (C, u00101, "system__ioS");
   u00102 : constant Version_32 := 16#e6d4fa36#;
   pragma Export (C, u00102, "ada__stringsS");
   u00103 : constant Version_32 := 16#96a20755#;
   pragma Export (C, u00103, "ada__strings__fixedB");
   u00104 : constant Version_32 := 16#11b694ce#;
   pragma Export (C, u00104, "ada__strings__fixedS");
   u00105 : constant Version_32 := 16#203d5282#;
   pragma Export (C, u00105, "ada__strings__mapsB");
   u00106 : constant Version_32 := 16#6feaa257#;
   pragma Export (C, u00106, "ada__strings__mapsS");
   u00107 : constant Version_32 := 16#b451a498#;
   pragma Export (C, u00107, "system__bit_opsB");
   u00108 : constant Version_32 := 16#bd85f768#;
   pragma Export (C, u00108, "system__bit_opsS");
   u00109 : constant Version_32 := 16#5b4659fa#;
   pragma Export (C, u00109, "ada__charactersS");
   u00110 : constant Version_32 := 16#cde9ea2d#;
   pragma Export (C, u00110, "ada__characters__latin_1S");
   u00111 : constant Version_32 := 16#d053aba9#;
   pragma Export (C, u00111, "ada__strings__searchB");
   u00112 : constant Version_32 := 16#97fe4a15#;
   pragma Export (C, u00112, "ada__strings__searchS");
   u00113 : constant Version_32 := 16#a201b8c5#;
   pragma Export (C, u00113, "ada__strings__text_buffersB");
   u00114 : constant Version_32 := 16#a7cfd09b#;
   pragma Export (C, u00114, "ada__strings__text_buffersS");
   u00115 : constant Version_32 := 16#8b7604c4#;
   pragma Export (C, u00115, "ada__strings__utf_encodingB");
   u00116 : constant Version_32 := 16#c9e86997#;
   pragma Export (C, u00116, "ada__strings__utf_encodingS");
   u00117 : constant Version_32 := 16#bb780f45#;
   pragma Export (C, u00117, "ada__strings__utf_encoding__stringsB");
   u00118 : constant Version_32 := 16#b85ff4b6#;
   pragma Export (C, u00118, "ada__strings__utf_encoding__stringsS");
   u00119 : constant Version_32 := 16#d1d1ed0b#;
   pragma Export (C, u00119, "ada__strings__utf_encoding__wide_stringsB");
   u00120 : constant Version_32 := 16#5678478f#;
   pragma Export (C, u00120, "ada__strings__utf_encoding__wide_stringsS");
   u00121 : constant Version_32 := 16#c2b98963#;
   pragma Export (C, u00121, "ada__strings__utf_encoding__wide_wide_stringsB");
   u00122 : constant Version_32 := 16#d7af3358#;
   pragma Export (C, u00122, "ada__strings__utf_encoding__wide_wide_stringsS");
   u00123 : constant Version_32 := 16#683e3bb7#;
   pragma Export (C, u00123, "ada__tagsB");
   u00124 : constant Version_32 := 16#4ff764f3#;
   pragma Export (C, u00124, "ada__tagsS");
   u00125 : constant Version_32 := 16#3548d972#;
   pragma Export (C, u00125, "system__htableB");
   u00126 : constant Version_32 := 16#f1af03bf#;
   pragma Export (C, u00126, "system__htableS");
   u00127 : constant Version_32 := 16#1f1abe38#;
   pragma Export (C, u00127, "system__string_hashB");
   u00128 : constant Version_32 := 16#56ea83c0#;
   pragma Export (C, u00128, "system__string_hashS");
   u00129 : constant Version_32 := 16#e7d0da5b#;
   pragma Export (C, u00129, "system__val_lluS");
   u00130 : constant Version_32 := 16#238798c9#;
   pragma Export (C, u00130, "system__sparkS");
   u00131 : constant Version_32 := 16#a571a4dc#;
   pragma Export (C, u00131, "system__spark__cut_operationsB");
   u00132 : constant Version_32 := 16#629c0fb7#;
   pragma Export (C, u00132, "system__spark__cut_operationsS");
   u00133 : constant Version_32 := 16#365e21c1#;
   pragma Export (C, u00133, "system__val_utilB");
   u00134 : constant Version_32 := 16#f3b10aca#;
   pragma Export (C, u00134, "system__val_utilS");
   u00135 : constant Version_32 := 16#27ac21ac#;
   pragma Export (C, u00135, "ada__text_ioB");
   u00136 : constant Version_32 := 16#60f53344#;
   pragma Export (C, u00136, "ada__text_ioS");
   u00137 : constant Version_32 := 16#b228eb1e#;
   pragma Export (C, u00137, "ada__streamsB");
   u00138 : constant Version_32 := 16#613fe11c#;
   pragma Export (C, u00138, "ada__streamsS");
   u00139 : constant Version_32 := 16#367911c4#;
   pragma Export (C, u00139, "ada__io_exceptionsS");
   u00140 : constant Version_32 := 16#05222263#;
   pragma Export (C, u00140, "system__put_imagesB");
   u00141 : constant Version_32 := 16#6cd85c4b#;
   pragma Export (C, u00141, "system__put_imagesS");
   u00142 : constant Version_32 := 16#22b9eb9f#;
   pragma Export (C, u00142, "ada__strings__text_buffers__utilsB");
   u00143 : constant Version_32 := 16#89062ac3#;
   pragma Export (C, u00143, "ada__strings__text_buffers__utilsS");
   u00144 : constant Version_32 := 16#1cacf006#;
   pragma Export (C, u00144, "interfaces__c_streamsB");
   u00145 : constant Version_32 := 16#d07279c2#;
   pragma Export (C, u00145, "interfaces__c_streamsS");
   u00146 : constant Version_32 := 16#ec2f4d1e#;
   pragma Export (C, u00146, "system__file_ioB");
   u00147 : constant Version_32 := 16#16390e12#;
   pragma Export (C, u00147, "system__file_ioS");
   u00148 : constant Version_32 := 16#c34b231e#;
   pragma Export (C, u00148, "ada__finalizationS");
   u00149 : constant Version_32 := 16#d00f339c#;
   pragma Export (C, u00149, "system__finalization_rootB");
   u00150 : constant Version_32 := 16#7a0a6580#;
   pragma Export (C, u00150, "system__finalization_rootS");
   u00151 : constant Version_32 := 16#ef3c5c6f#;
   pragma Export (C, u00151, "system__finalization_primitivesB");
   u00152 : constant Version_32 := 16#f622319e#;
   pragma Export (C, u00152, "system__finalization_primitivesS");
   u00153 : constant Version_32 := 16#fa03c63e#;
   pragma Export (C, u00153, "system__file_control_blockS");
   u00154 : constant Version_32 := 16#b5988c27#;
   pragma Export (C, u00154, "gnatS");
   u00155 : constant Version_32 := 16#656efae9#;
   pragma Export (C, u00155, "gnat__os_libS");
   u00156 : constant Version_32 := 16#3c9c2ae7#;
   pragma Export (C, u00156, "interfaces__c__stringsB");
   u00157 : constant Version_32 := 16#bd4557ce#;
   pragma Export (C, u00157, "interfaces__c__stringsS");
   u00158 : constant Version_32 := 16#3eba7a68#;
   pragma Export (C, u00158, "smc_daemon_stateB");
   u00159 : constant Version_32 := 16#8c7280bf#;
   pragma Export (C, u00159, "smc_daemon_stateS");
   u00160 : constant Version_32 := 16#03e83d1c#;
   pragma Export (C, u00160, "ada__numerics__elementary_functionsB");
   u00161 : constant Version_32 := 16#b51e9213#;
   pragma Export (C, u00161, "ada__numerics__elementary_functionsS");
   u00162 : constant Version_32 := 16#edf015bc#;
   pragma Export (C, u00162, "ada__numerics__aux_floatS");
   u00163 : constant Version_32 := 16#effcb9fc#;
   pragma Export (C, u00163, "ada__numerics__aux_linker_optionsS");
   u00164 : constant Version_32 := 16#8272e858#;
   pragma Export (C, u00164, "ada__numerics__aux_long_floatS");
   u00165 : constant Version_32 := 16#d273669e#;
   pragma Export (C, u00165, "ada__numerics__aux_long_long_floatS");
   u00166 : constant Version_32 := 16#33fcdf18#;
   pragma Export (C, u00166, "ada__numerics__aux_short_floatS");
   u00167 : constant Version_32 := 16#d56674ad#;
   pragma Export (C, u00167, "system__exn_fltS");
   u00168 : constant Version_32 := 16#b3448438#;
   pragma Export (C, u00168, "system__fat_fltS");
   u00169 : constant Version_32 := 16#bcc987d2#;
   pragma Export (C, u00169, "system__concat_4B");
   u00170 : constant Version_32 := 16#438e046a#;
   pragma Export (C, u00170, "system__concat_4S");
   u00171 : constant Version_32 := 16#7f4ba8ed#;
   pragma Export (C, u00171, "system__img_fltS");
   u00172 : constant Version_32 := 16#1b28662b#;
   pragma Export (C, u00172, "system__float_controlB");
   u00173 : constant Version_32 := 16#908a1868#;
   pragma Export (C, u00173, "system__float_controlS");
   u00174 : constant Version_32 := 16#19ff6eea#;
   pragma Export (C, u00174, "system__img_unsS");
   u00175 : constant Version_32 := 16#1efd3382#;
   pragma Export (C, u00175, "system__img_utilB");
   u00176 : constant Version_32 := 16#076fffed#;
   pragma Export (C, u00176, "system__img_utilS");
   u00177 : constant Version_32 := 16#d56ce2ec#;
   pragma Export (C, u00177, "system__powten_fltS");
   u00178 : constant Version_32 := 16#3938641c#;
   pragma Export (C, u00178, "system__tasking__protected_objectsB");
   u00179 : constant Version_32 := 16#94fe996c#;
   pragma Export (C, u00179, "system__tasking__protected_objectsS");
   u00180 : constant Version_32 := 16#85efc30a#;
   pragma Export (C, u00180, "system__soft_links__taskingB");
   u00181 : constant Version_32 := 16#13803e06#;
   pragma Export (C, u00181, "system__soft_links__taskingS");
   u00182 : constant Version_32 := 16#3880736e#;
   pragma Export (C, u00182, "ada__exceptions__is_null_occurrenceB");
   u00183 : constant Version_32 := 16#2f594863#;
   pragma Export (C, u00183, "ada__exceptions__is_null_occurrenceS");
   u00184 : constant Version_32 := 16#06ec70ec#;
   pragma Export (C, u00184, "system__tasking__stagesB");
   u00185 : constant Version_32 := 16#9016fe58#;
   pragma Export (C, u00185, "system__tasking__stagesS");
   u00186 : constant Version_32 := 16#2d236812#;
   pragma Export (C, u00186, "ada__task_initializationB");
   u00187 : constant Version_32 := 16#d7b0c315#;
   pragma Export (C, u00187, "ada__task_initializationS");
   u00188 : constant Version_32 := 16#49c205ec#;
   pragma Export (C, u00188, "system__restrictionsB");
   u00189 : constant Version_32 := 16#dd1509c5#;
   pragma Export (C, u00189, "system__restrictionsS");
   u00190 : constant Version_32 := 16#6994122a#;
   pragma Export (C, u00190, "system__tasking__initializationB");
   u00191 : constant Version_32 := 16#7ddd8125#;
   pragma Export (C, u00191, "system__tasking__initializationS");
   u00192 : constant Version_32 := 16#22e08be4#;
   pragma Export (C, u00192, "system__tasking__task_attributesB");
   u00193 : constant Version_32 := 16#c000b6ef#;
   pragma Export (C, u00193, "system__tasking__task_attributesS");
   u00194 : constant Version_32 := 16#8a281bf3#;
   pragma Export (C, u00194, "system__tasking__queuingB");
   u00195 : constant Version_32 := 16#c332098d#;
   pragma Export (C, u00195, "system__tasking__queuingS");
   u00196 : constant Version_32 := 16#5cc76ab2#;
   pragma Export (C, u00196, "system__tasking__protected_objects__entriesB");
   u00197 : constant Version_32 := 16#7daf93e7#;
   pragma Export (C, u00197, "system__tasking__protected_objects__entriesS");
   u00198 : constant Version_32 := 16#233462d7#;
   pragma Export (C, u00198, "system__tasking__rendezvousB");
   u00199 : constant Version_32 := 16#1968381f#;
   pragma Export (C, u00199, "system__tasking__rendezvousS");
   u00200 : constant Version_32 := 16#d993ce9d#;
   pragma Export (C, u00200, "system__tasking__entry_callsB");
   u00201 : constant Version_32 := 16#e2bc808d#;
   pragma Export (C, u00201, "system__tasking__entry_callsS");
   u00202 : constant Version_32 := 16#8e05f478#;
   pragma Export (C, u00202, "system__tasking__protected_objects__operationsB");
   u00203 : constant Version_32 := 16#74b8b389#;
   pragma Export (C, u00203, "system__tasking__protected_objects__operationsS");
   u00204 : constant Version_32 := 16#1bad0f8b#;
   pragma Export (C, u00204, "system__tasking__utilitiesB");
   u00205 : constant Version_32 := 16#6483d4eb#;
   pragma Export (C, u00205, "system__tasking__utilitiesS");
   u00206 : constant Version_32 := 16#e487fee6#;
   pragma Export (C, u00206, "smc_filesB");
   u00207 : constant Version_32 := 16#3a0ec24b#;
   pragma Export (C, u00207, "smc_filesS");
   u00208 : constant Version_32 := 16#f17a2d80#;
   pragma Export (C, u00208, "ada__directoriesB");
   u00209 : constant Version_32 := 16#c1305a6c#;
   pragma Export (C, u00209, "ada__directoriesS");
   u00210 : constant Version_32 := 16#c1ef1512#;
   pragma Export (C, u00210, "ada__calendar__formattingB");
   u00211 : constant Version_32 := 16#5a9d5c4e#;
   pragma Export (C, u00211, "ada__calendar__formattingS");
   u00212 : constant Version_32 := 16#974d849e#;
   pragma Export (C, u00212, "ada__calendar__time_zonesB");
   u00213 : constant Version_32 := 16#55da5b9f#;
   pragma Export (C, u00213, "ada__calendar__time_zonesS");
   u00214 : constant Version_32 := 16#6e143a7e#;
   pragma Export (C, u00214, "system__val_fixed_64S");
   u00215 : constant Version_32 := 16#afdc38b2#;
   pragma Export (C, u00215, "system__arith_64B");
   u00216 : constant Version_32 := 16#34c19b86#;
   pragma Export (C, u00216, "system__arith_64S");
   u00217 : constant Version_32 := 16#ce5f50f9#;
   pragma Export (C, u00217, "system__val_intS");
   u00218 : constant Version_32 := 16#39f8db91#;
   pragma Export (C, u00218, "system__val_unsS");
   u00219 : constant Version_32 := 16#9de61c25#;
   pragma Export (C, u00219, "ada__characters__handlingB");
   u00220 : constant Version_32 := 16#729cc5db#;
   pragma Export (C, u00220, "ada__characters__handlingS");
   u00221 : constant Version_32 := 16#b459efcb#;
   pragma Export (C, u00221, "ada__strings__maps__constantsS");
   u00222 : constant Version_32 := 16#179d7d28#;
   pragma Export (C, u00222, "ada__containersS");
   u00223 : constant Version_32 := 16#c3b32edd#;
   pragma Export (C, u00223, "ada__containers__helpersB");
   u00224 : constant Version_32 := 16#444c93c2#;
   pragma Export (C, u00224, "ada__containers__helpersS");
   u00225 : constant Version_32 := 16#52627794#;
   pragma Export (C, u00225, "system__atomic_countersB");
   u00226 : constant Version_32 := 16#ac6eb497#;
   pragma Export (C, u00226, "system__atomic_countersS");
   u00227 : constant Version_32 := 16#79b2a143#;
   pragma Export (C, u00227, "ada__directories__hierarchical_file_namesB");
   u00228 : constant Version_32 := 16#34d5eeb2#;
   pragma Export (C, u00228, "ada__directories__hierarchical_file_namesS");
   u00229 : constant Version_32 := 16#ab4ad33a#;
   pragma Export (C, u00229, "ada__directories__validityB");
   u00230 : constant Version_32 := 16#0877bcae#;
   pragma Export (C, u00230, "ada__directories__validityS");
   u00231 : constant Version_32 := 16#4259a79c#;
   pragma Export (C, u00231, "ada__strings__unboundedB");
   u00232 : constant Version_32 := 16#b40332b4#;
   pragma Export (C, u00232, "ada__strings__unboundedS");
   u00233 : constant Version_32 := 16#b3c38977#;
   pragma Export (C, u00233, "system__return_stackS");
   u00234 : constant Version_32 := 16#756a1fdd#;
   pragma Export (C, u00234, "system__stream_attributesB");
   u00235 : constant Version_32 := 16#cc7d5f1e#;
   pragma Export (C, u00235, "system__stream_attributesS");
   u00236 : constant Version_32 := 16#1c617d0b#;
   pragma Export (C, u00236, "system__stream_attributes__xdrB");
   u00237 : constant Version_32 := 16#e4218e58#;
   pragma Export (C, u00237, "system__stream_attributes__xdrS");
   u00238 : constant Version_32 := 16#95768d35#;
   pragma Export (C, u00238, "system__fat_lfltS");
   u00239 : constant Version_32 := 16#efa623df#;
   pragma Export (C, u00239, "system__fat_llfS");
   u00240 : constant Version_32 := 16#de35814d#;
   pragma Export (C, u00240, "system__file_attributesS");
   u00241 : constant Version_32 := 16#8f8e85c2#;
   pragma Export (C, u00241, "system__regexpB");
   u00242 : constant Version_32 := 16#5344fc98#;
   pragma Export (C, u00242, "system__regexpS");
   u00243 : constant Version_32 := 16#35d6ef80#;
   pragma Export (C, u00243, "system__storage_poolsB");
   u00244 : constant Version_32 := 16#ea1d220f#;
   pragma Export (C, u00244, "system__storage_poolsS");
   u00245 : constant Version_32 := 16#a7e38293#;
   pragma Export (C, u00245, "system__val_fltS");
   u00246 : constant Version_32 := 16#4a936d7e#;
   pragma Export (C, u00246, "smc_ioS");
   u00247 : constant Version_32 := 16#257ed9b7#;
   pragma Export (C, u00247, "smc_mathB");
   u00248 : constant Version_32 := 16#f27b58a9#;
   pragma Export (C, u00248, "smc_mathS");
   u00249 : constant Version_32 := 16#e259c480#;
   pragma Export (C, u00249, "system__assertionsB");
   u00250 : constant Version_32 := 16#567524cf#;
   pragma Export (C, u00250, "system__assertionsS");
   u00251 : constant Version_32 := 16#8b2c6428#;
   pragma Export (C, u00251, "ada__assertionsB");
   u00252 : constant Version_32 := 16#cc3ec2fd#;
   pragma Export (C, u00252, "ada__assertionsS");
   u00253 : constant Version_32 := 16#ebb39bbb#;
   pragma Export (C, u00253, "system__concat_5B");
   u00254 : constant Version_32 := 16#30ef8a8f#;
   pragma Export (C, u00254, "system__concat_5S");
   u00255 : constant Version_32 := 16#0ddbd91f#;
   pragma Export (C, u00255, "system__memoryB");
   u00256 : constant Version_32 := 16#68e2c74e#;
   pragma Export (C, u00256, "system__memoryS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.latin_1%s
   --  ada.task_initialization%s
   --  ada.task_initialization%b
   --  interfaces%s
   --  system%s
   --  system.atomic_operations%s
   --  system.float_control%s
   --  system.float_control%b
   --  system.io%s
   --  system.io%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.os_primitives%s
   --  system.os_primitives%b
   --  system.powten_flt%s
   --  system.restrictions%s
   --  system.restrictions%b
   --  system.spark%s
   --  system.spark.cut_operations%s
   --  system.spark.cut_operations%b
   --  system.storage_elements%s
   --  system.img_address_32%s
   --  system.img_address_64%s
   --  system.return_stack%s
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%s
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.task_info%s
   --  system.task_info%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  system.unsigned_types%s
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%s
   --  system.wch_cnv%b
   --  system.concat_2%s
   --  system.concat_2%b
   --  system.concat_3%s
   --  system.concat_3%b
   --  system.concat_4%s
   --  system.concat_4%b
   --  system.concat_5%s
   --  system.concat_5%b
   --  system.exn_flt%s
   --  system.traceback%s
   --  system.traceback%b
   --  system.secondary_stack%s
   --  system.standard_library%s
   --  ada.exceptions%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.soft_links%s
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  ada.exceptions.traceback%s
   --  ada.exceptions.traceback%b
   --  system.address_image%s
   --  system.address_image%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.numerics%s
   --  ada.numerics.big_numbers%s
   --  system.exceptions%s
   --  system.exceptions.machine%s
   --  system.exceptions.machine%b
   --  system.img_int%s
   --  system.memory%s
   --  system.memory%b
   --  system.secondary_stack%b
   --  system.soft_links.initialize%s
   --  system.soft_links.initialize%b
   --  system.soft_links%b
   --  system.standard_library%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  ada.exceptions%b
   --  ada.assertions%s
   --  ada.assertions%b
   --  ada.containers%s
   --  ada.exceptions.is_null_occurrence%s
   --  ada.exceptions.is_null_occurrence%b
   --  ada.io_exceptions%s
   --  ada.numerics.aux_linker_options%s
   --  ada.numerics.aux_float%s
   --  ada.numerics.aux_long_float%s
   --  ada.numerics.aux_long_long_float%s
   --  ada.numerics.aux_short_float%s
   --  ada.strings%s
   --  ada.strings.utf_encoding%s
   --  ada.strings.utf_encoding%b
   --  ada.strings.utf_encoding.strings%s
   --  ada.strings.utf_encoding.strings%b
   --  ada.strings.utf_encoding.wide_strings%s
   --  ada.strings.utf_encoding.wide_strings%b
   --  ada.strings.utf_encoding.wide_wide_strings%s
   --  ada.strings.utf_encoding.wide_wide_strings%b
   --  gnat%s
   --  interfaces.c%s
   --  interfaces.c%b
   --  interfaces.c.extensions%s
   --  interfaces.c.strings%s
   --  interfaces.c.strings%b
   --  system.arith_64%s
   --  system.arith_64%b
   --  system.atomic_primitives%s
   --  system.atomic_primitives%b
   --  system.atomic_counters%s
   --  system.atomic_counters%b
   --  system.atomic_operations.test_and_set%s
   --  system.atomic_operations.test_and_set%b
   --  system.case_util%s
   --  system.case_util%b
   --  system.fat_flt%s
   --  ada.numerics.elementary_functions%s
   --  ada.numerics.elementary_functions%b
   --  system.fat_lflt%s
   --  system.fat_llf%s
   --  system.multiprocessors%s
   --  system.multiprocessors%b
   --  system.os_constants%s
   --  system.os_lib%s
   --  system.os_lib%b
   --  gnat.os_lib%s
   --  system.os_locks%s
   --  system.finalization_primitives%s
   --  system.finalization_primitives%b
   --  system.os_interface%s
   --  system.os_interface%b
   --  system.interrupt_management%s
   --  system.interrupt_management%b
   --  system.stack_usage%s
   --  system.stack_usage%b
   --  system.task_primitives%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_fixed_64%s
   --  system.val_flt%s
   --  system.val_llu%s
   --  ada.tags%s
   --  ada.tags%b
   --  ada.strings.text_buffers%s
   --  ada.strings.text_buffers%b
   --  ada.strings.text_buffers.utils%s
   --  ada.strings.text_buffers.utils%b
   --  system.put_images%s
   --  system.put_images%b
   --  ada.streams%s
   --  ada.streams%b
   --  system.file_control_block%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  ada.containers.helpers%s
   --  ada.containers.helpers%b
   --  system.file_io%s
   --  system.file_io%b
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.stream_attributes%s
   --  system.stream_attributes.xdr%s
   --  system.stream_attributes.xdr%b
   --  system.stream_attributes%b
   --  system.val_uns%s
   --  system.val_int%s
   --  ada.calendar%s
   --  ada.calendar%b
   --  ada.calendar.delays%s
   --  ada.calendar.delays%b
   --  ada.calendar.time_zones%s
   --  ada.calendar.time_zones%b
   --  ada.calendar.formatting%s
   --  ada.calendar.formatting%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  system.assertions%s
   --  system.assertions%b
   --  system.bit_ops%s
   --  system.bit_ops%b
   --  ada.strings.maps%s
   --  ada.strings.maps%b
   --  ada.strings.maps.constants%s
   --  ada.characters.handling%s
   --  ada.characters.handling%b
   --  ada.strings.search%s
   --  ada.strings.search%b
   --  ada.strings.fixed%s
   --  ada.strings.fixed%b
   --  ada.strings.unbounded%s
   --  ada.strings.unbounded%b
   --  system.file_attributes%s
   --  system.img_lli%s
   --  system.tasking%s
   --  system.task_primitives.operations%s
   --  system.tasking.debug%s
   --  system.tasking.debug%b
   --  system.task_primitives.operations%b
   --  system.tasking%b
   --  ada.real_time%s
   --  ada.real_time%b
   --  system.img_uns%s
   --  system.img_util%s
   --  system.img_util%b
   --  system.img_flt%s
   --  system.regexp%s
   --  system.regexp%b
   --  ada.directories%s
   --  ada.directories.hierarchical_file_names%s
   --  ada.directories.validity%s
   --  ada.directories.validity%b
   --  ada.directories%b
   --  ada.directories.hierarchical_file_names%b
   --  system.soft_links.tasking%s
   --  system.soft_links.tasking%b
   --  system.tasking.initialization%s
   --  system.tasking.task_attributes%s
   --  system.tasking.task_attributes%b
   --  system.tasking.initialization%b
   --  system.tasking.protected_objects%s
   --  system.tasking.protected_objects%b
   --  system.tasking.protected_objects.entries%s
   --  system.tasking.protected_objects.entries%b
   --  system.tasking.queuing%s
   --  system.tasking.queuing%b
   --  system.tasking.utilities%s
   --  system.tasking.utilities%b
   --  system.tasking.entry_calls%s
   --  system.tasking.rendezvous%s
   --  system.tasking.protected_objects.operations%s
   --  system.tasking.protected_objects.operations%b
   --  system.tasking.entry_calls%b
   --  system.tasking.rendezvous%b
   --  system.tasking.stages%s
   --  system.tasking.stages%b
   --  smc_daemon_state%s
   --  smc_daemon_state%b
   --  smc_files%s
   --  smc_files%b
   --  smc_io%s
   --  smc_math%s
   --  smc_math%b
   --  smc_daemon%b
   --  END ELABORATION ORDER

end ada_main;
