//
// File: StdPlanningCore.cpp
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
#include "StdPlanningCore.h"
#include "StdPlanningCore_private.h"

int32_T StdPlanningCore_div_s32_floor(int32_T numerator, int32_T denominator)
{
  int32_T quotient;
  uint32_T absNumerator;
  uint32_T absDenominator;
  uint32_T tempAbsQuotient;
  boolean_T quotientNeedsNegation;
  if (denominator == 0) {
    quotient = numerator >= 0 ? MAX_int32_T : MIN_int32_T;

    // Divide by zero handler
  } else {
    absNumerator = numerator < 0 ? ~(uint32_T)numerator + 1U : (uint32_T)
      numerator;
    absDenominator = denominator < 0 ? ~(uint32_T)denominator + 1U : (uint32_T)
      denominator;
    quotientNeedsNegation = ((numerator < 0) != (denominator < 0));
    tempAbsQuotient = absNumerator / absDenominator;
    if (quotientNeedsNegation) {
      absNumerator %= absDenominator;
      if (absNumerator > 0U) {
        tempAbsQuotient++;
      }
    }

    quotient = quotientNeedsNegation ? -(int32_T)tempAbsQuotient : (int32_T)
      tempAbsQuotient;
  }

  return quotient;
}

// Model step function
void StdPlanningCore_step(RT_MODEL_StdPlanningCore_type *const
  gStdPlanningCore_M)
{
  B_StdPlanningCore_type *gStdPlanningCore_B = ((B_StdPlanningCore_type *)
    gStdPlanningCore_M->blockIO);
  DW_StdPlanningCore_type *gStdPlanningCore_DW = ((DW_StdPlanningCore_type *)
    gStdPlanningCore_M->dwork);
  ExtU_StdPlanningCore_type *gStdPlanningCore_U = (ExtU_StdPlanningCore_type *)
    gStdPlanningCore_M->inputs;
  ExtY_StdPlanningCore_type *gStdPlanningCore_Y = (ExtY_StdPlanningCore_type *)
    gStdPlanningCore_M->outputs;

  // Outputs for Atomic SubSystem: '<Root>/StdPlanningEntry'

  // Inport: '<Root>/HD_MAP' incorporates:
  //   Inport: '<Root>/localization_YTT '
  //   Outport: '<Root>/decbus'
  //   Outport: '<Root>/trajectory_debug'
  //   Outport: '<Root>/trajectory_output'

  StdPlanningCor_StdPlanningEntry(&gStdPlanningCore_U->HD_MAP_n,
    &gStdPlanningCore_U->localization_YTT,
    &gStdPlanningCore_Y->trajectory_output,
    &gStdPlanningCore_Y->trajectory_debug, &gStdPlanningCore_Y->decbus,
    &gStdPlanningCore_B->StdPlanningEntry,
    &gStdPlanningCore_ConstB.StdPlanningEntry,
    &gStdPlanningCore_DW->StdPlanningEntry);

  // End of Outputs for SubSystem: '<Root>/StdPlanningEntry'
}

// Model initialize function
void StdPlanningCore_initialize(RT_MODEL_StdPlanningCore_type *const
  gStdPlanningCore_M)
{
  DW_StdPlanningCore_type *gStdPlanningCore_DW = ((DW_StdPlanningCore_type *)
    gStdPlanningCore_M->dwork);

  // SystemInitialize for Atomic SubSystem: '<Root>/StdPlanningEntry'
  StdPlanni_StdPlanningEntry_Init(&gStdPlanningCore_DW->StdPlanningEntry);

  // End of SystemInitialize for SubSystem: '<Root>/StdPlanningEntry'
}

// Model terminate function
void StdPlanningCore_terminate(RT_MODEL_StdPlanningCore_type *
  gStdPlanningCore_M)
{
  // model code
  rt_FREE(gStdPlanningCore_M->blockIO);
  rt_FREE(gStdPlanningCore_M->inputs);
  rt_FREE(gStdPlanningCore_M->outputs);
  rt_FREE(gStdPlanningCore_M->dwork);
  rt_FREE(gStdPlanningCore_M);
}

// Model data allocation function
RT_MODEL_StdPlanningCore_type *StdPlanningCore(void)
{
  RT_MODEL_StdPlanningCore_type *gStdPlanningCore_M;
  gStdPlanningCore_M = (RT_MODEL_StdPlanningCore_type *) malloc(sizeof
    (RT_MODEL_StdPlanningCore_type));
  if (gStdPlanningCore_M == NULL) {
    return NULL;
  }

  (void) memset((char *)gStdPlanningCore_M, 0,
                sizeof(RT_MODEL_StdPlanningCore_type));

  // block I/O
  {
    B_StdPlanningCore_type *b = (B_StdPlanningCore_type *) malloc(sizeof
      (B_StdPlanningCore_type));
    rt_VALIDATE_MEMORY(gStdPlanningCore_M,b);
    gStdPlanningCore_M->blockIO = (b);
  }

  // states (dwork)
  {
    DW_StdPlanningCore_type *dwork = (DW_StdPlanningCore_type *) malloc(sizeof
      (DW_StdPlanningCore_type));
    rt_VALIDATE_MEMORY(gStdPlanningCore_M,dwork);
    gStdPlanningCore_M->dwork = (dwork);
  }

  // external inputs
  {
    ExtU_StdPlanningCore_type *gStdPlanningCore_U = (ExtU_StdPlanningCore_type *)
      malloc(sizeof(ExtU_StdPlanningCore_type));
    rt_VALIDATE_MEMORY(gStdPlanningCore_M,gStdPlanningCore_U);
    gStdPlanningCore_M->inputs = (((ExtU_StdPlanningCore_type *)
      gStdPlanningCore_U));
  }

  // external outputs
  {
    ExtY_StdPlanningCore_type *gStdPlanningCore_Y = (ExtY_StdPlanningCore_type *)
      malloc(sizeof(ExtY_StdPlanningCore_type));
    rt_VALIDATE_MEMORY(gStdPlanningCore_M,gStdPlanningCore_Y);
    gStdPlanningCore_M->outputs = (gStdPlanningCore_Y);
  }

  {
    B_StdPlanningCore_type *gStdPlanningCore_B = ((B_StdPlanningCore_type *)
      gStdPlanningCore_M->blockIO);
    DW_StdPlanningCore_type *gStdPlanningCore_DW = ((DW_StdPlanningCore_type *)
      gStdPlanningCore_M->dwork);
    ExtU_StdPlanningCore_type *gStdPlanningCore_U = (ExtU_StdPlanningCore_type *)
      gStdPlanningCore_M->inputs;
    ExtY_StdPlanningCore_type *gStdPlanningCore_Y = (ExtY_StdPlanningCore_type *)
      gStdPlanningCore_M->outputs;

    // initialize non-finites
    rt_InitInfAndNaN(sizeof(real_T));

    // block I/O
    (void) memset(((void *) gStdPlanningCore_B), 0,
                  sizeof(B_StdPlanningCore_type));

    // states (dwork)
    (void) memset((void *)gStdPlanningCore_DW, 0,
                  sizeof(DW_StdPlanningCore_type));

    // external inputs
    (void)memset((void *)gStdPlanningCore_U, 0, sizeof(ExtU_StdPlanningCore_type));

    // external outputs
    (void) memset((void *)gStdPlanningCore_Y, 0,
                  sizeof(ExtY_StdPlanningCore_type));
  }

  return gStdPlanningCore_M;
}

//
// File trailer for generated code.
//
// [EOF]
//
