//
// File: StdPlanningCore_private.h
//
// Code generated for Simulink model 'StdPlanningCore'.
//
// Model version                  : 1.2962
// Simulink Coder version         : 8.12 (R2017a) 16-Feb-2017
// C/C++ source code generated on : Tue Sep 08 14:43:28 2020
//
// Target selection: ert.tlc
// Embedded hardware selection: Intel->x86-64 (Linux 64)
// Code generation objectives: Unspecified
// Validation result: Not run
//
#ifndef RTW_HEADER_StdPlanningCore_private_h_
#define RTW_HEADER_StdPlanningCore_private_h_
#include "rtwtypes.h"
#if !defined(rt_VALIDATE_MEMORY)
#define rt_VALIDATE_MEMORY(S, ptr)     if(!(ptr)) {\
 rtmSetErrorStatus(gStdPlanningCore_M, RT_MEMORY_ALLOCATION_ERROR);\
 }
#endif

#if !defined(rt_FREE)
#if !defined(_WIN32)
#define rt_FREE(ptr)                   if((ptr) != (NULL)) {\
 free((ptr));\
 (ptr) = (NULL);\
 }
#else

// Visual and other windows compilers declare free without const
#define rt_FREE(ptr)                   if((ptr) != (NULL)) {\
 free((void *)(ptr));\
 (ptr) = (NULL);\
 }
#endif
#endif

extern real_T StdPlanningCore_rt_roundd_snf(real_T u);
extern real32_T StdPlanningCore_rt_powf_snf(real32_T u0, real32_T u1);
extern real32_T StdPlanningCore_rt_atan2f_snf(real32_T u0, real32_T u1);
extern real32_T StdPlanningCore_rt_hypotf_snf(real32_T u0, real32_T u1);
extern int32_T StdPlanningCore_div_s32_floor(int32_T numerator, int32_T
  denominator);

#endif                                 // RTW_HEADER_StdPlanningCore_private_h_

//
// File trailer for generated code.
//
// [EOF]
//
