//
// File: StdPlanningCore.h
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
#ifndef RTW_HEADER_StdPlanningCore_h_
#define RTW_HEADER_StdPlanningCore_h_
#include <string.h>
#include <stddef.h>
#ifndef StdPlanningCore_COMMON_INCLUDES_
# define StdPlanningCore_COMMON_INCLUDES_
#include <stdlib.h>
#include "rtwtypes.h"
#endif                                 // StdPlanningCore_COMMON_INCLUDES_

#include "StdPlanningCore_types.h"

// Child system includes
#include "StdPlanningEntry.h"
#include "rtGetInf.h"
#include "rt_nonfinite.h"

// Macros for accessing real-time model data structure
#ifndef rtmGetBlockIO
# define rtmGetBlockIO(rtm)            ((rtm)->blockIO)
#endif

#ifndef rtmSetBlockIO
# define rtmSetBlockIO(rtm, val)       ((rtm)->blockIO = (val))
#endif

#ifndef rtmGetRootDWork
# define rtmGetRootDWork(rtm)          ((rtm)->dwork)
#endif

#ifndef rtmSetRootDWork
# define rtmSetRootDWork(rtm, val)     ((rtm)->dwork = (val))
#endif

#ifndef rtmGetU
# define rtmGetU(rtm)                  ((rtm)->inputs)
#endif

#ifndef rtmSetU
# define rtmSetU(rtm, val)             ((rtm)->inputs = (val))
#endif

#ifndef rtmGetY
# define rtmGetY(rtm)                  ((rtm)->outputs)
#endif

#ifndef rtmSetY
# define rtmSetY(rtm, val)             ((rtm)->outputs = (val))
#endif

#ifndef rtmGetErrorStatus
# define rtmGetErrorStatus(rtm)        ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
# define rtmSetErrorStatus(rtm, val)   ((rtm)->errorStatus = (val))
#endif

#define StdPlanningCore_M_TYPE         RT_MODEL_StdPlanningCore_type

// Block signals (auto storage)
typedef struct {
  B_StdPlanningEntry_StdPlan_type StdPlanningEntry;// '<Root>/StdPlanningEntry'
} B_StdPlanningCore_type;

// Block states (auto storage) for system '<Root>'
typedef struct {
  DW_StdPlanningEntry_StdPla_type StdPlanningEntry;// '<Root>/StdPlanningEntry'
} DW_StdPlanningCore_type;

// Invariant block signals (auto storage)
typedef const struct tag_ConstB_StdPlanningCore_type {
  ConstB_StdPlanningEntry_St_type StdPlanningEntry;// '<Root>/StdPlanningEntry'
} ConstB_StdPlanningCore_type;

// External inputs (root inport signals with auto storage)
typedef struct {
  HD_MAP HD_MAP_n;                     // '<Root>/HD_MAP'
  Localization_YTT_Mt localization_YTT;// '<Root>/localization_YTT '
} ExtU_StdPlanningCore_type;

// External outputs (root outports fed by signals with auto storage)
typedef struct {
  Trajectory_Mt trajectory_output;     // '<Root>/trajectory_output'
  Trajectory_display trajectory_debug; // '<Root>/trajectory_debug'
  DecisionBus decbus;                  // '<Root>/decbus'
} ExtY_StdPlanningCore_type;

// Real-time Model Data Structure
struct tag_RTM_StdPlanningCore_type {
  const char_T *errorStatus;
  B_StdPlanningCore_type *blockIO;
  ExtU_StdPlanningCore_type *inputs;
  ExtY_StdPlanningCore_type *outputs;
  DW_StdPlanningCore_type *dwork;
};

#ifdef __cplusplus

extern "C" {

#endif

#ifdef __cplusplus

}
#endif

// External data declarations for dependent source files
#ifdef __cplusplus

extern "C" {

#endif

  extern const char *RT_MEMORY_ALLOCATION_ERROR;

#ifdef __cplusplus

}
#endif

extern const ConstB_StdPlanningCore_type gStdPlanningCore_ConstB;// constant block i/o 

#ifdef __cplusplus

extern "C" {

#endif

  // Model entry point functions
  extern RT_MODEL_StdPlanningCore_type *StdPlanningCore(void);
  extern void StdPlanningCore_initialize(RT_MODEL_StdPlanningCore_type *const
    gStdPlanningCore_M);
  extern void StdPlanningCore_step(RT_MODEL_StdPlanningCore_type *const
    gStdPlanningCore_M);
  extern void StdPlanningCore_terminate(RT_MODEL_StdPlanningCore_type *
    gStdPlanningCore_M);

#ifdef __cplusplus

}
#endif

//-
//  The generated code includes comments that allow you to trace directly
//  back to the appropriate location in the model.  The basic format
//  is <system>/block_name, where system is the system number (uniquely
//  assigned by Simulink) and block_name is the name of the block.
//
//  Use the MATLAB hilite_system command to trace the generated code back
//  to the model.  For example,
//
//  hilite_system('<S3>')    - opens system 3
//  hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
//
//  Here is the system hierarchy for this model
//
//  '<Root>' : 'StdPlanningCore'
//  '<S1>'   : 'StdPlanningCore/StdPlanningEntry'
//  '<S2>'   : 'StdPlanningCore/StdPlanningEntry/Planning'
//  '<S3>'   : 'StdPlanningCore/StdPlanningEntry/Subsystem'
//  '<S4>'   : 'StdPlanningCore/StdPlanningEntry/Subsystem1'
//  '<S5>'   : 'StdPlanningCore/StdPlanningEntry/Subsystem2'
//  '<S6>'   : 'StdPlanningCore/StdPlanningEntry/Subsystem3'
//  '<S7>'   : 'StdPlanningCore/StdPlanningEntry/Subsystem4'
//  '<S8>'   : 'StdPlanningCore/StdPlanningEntry/Subsystem5'
//  '<S9>'   : 'StdPlanningCore/StdPlanningEntry/Planning/Compare To Constant'
//  '<S10>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Compare To Constant1'
//  '<S11>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Compare To Constant2'
//  '<S12>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Compare To Constant3'
//  '<S13>'  : 'StdPlanningCore/StdPlanningEntry/Planning/ComputeInitFrenetState'
//  '<S14>'  : 'StdPlanningCore/StdPlanningEntry/Planning/ComputeStitchingTrajectory'
//  '<S15>'  : 'StdPlanningCore/StdPlanningEntry/Planning/DP_Poly_path_optimizer'
//  '<S16>'  : 'StdPlanningCore/StdPlanningEntry/Planning/DP_Switch_For_Output'
//  '<S17>'  : 'StdPlanningCore/StdPlanningEntry/Planning/DP_Trajectory_For_Stitching'
//  '<S18>'  : 'StdPlanningCore/StdPlanningEntry/Planning/GetVehicleState'
//  '<S19>'  : 'StdPlanningCore/StdPlanningEntry/Planning/InitFrame'
//  '<S20>'  : 'StdPlanningCore/StdPlanningEntry/Planning/MATLAB Function'
//  '<S21>'  : 'StdPlanningCore/StdPlanningEntry/Planning/MATLAB Function1'
//  '<S22>'  : 'StdPlanningCore/StdPlanningEntry/Planning/MATLAB Function2'
//  '<S23>'  : 'StdPlanningCore/StdPlanningEntry/Planning/MATLAB Function3'
//  '<S24>'  : 'StdPlanningCore/StdPlanningEntry/Planning/MATLAB Function4'
//  '<S25>'  : 'StdPlanningCore/StdPlanningEntry/Planning/MATLAB Function5'
//  '<S26>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Plan'
//  '<S27>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Prediction_Core2'
//  '<S28>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Prediction_Core_new'
//  '<S29>'  : 'StdPlanningCore/StdPlanningEntry/Planning/ReferenceLineInfo'
//  '<S30>'  : 'StdPlanningCore/StdPlanningEntry/Planning/ReferenceLineProvider'
//  '<S31>'  : 'StdPlanningCore/StdPlanningEntry/Planning/ReferenceLine_sensorFusion'
//  '<S32>'  : 'StdPlanningCore/StdPlanningEntry/Planning/StatusSensorFusion'
//  '<S33>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Traffic_decision'
//  '<S34>'  : 'StdPlanningCore/StdPlanningEntry/Planning/VehicleStateProvider'
//  '<S35>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Vehicle_Param'
//  '<S36>'  : 'StdPlanningCore/StdPlanningEntry/Planning/XY Graph'
//  '<S37>'  : 'StdPlanningCore/StdPlanningEntry/Planning/calcStopPoint'
//  '<S38>'  : 'StdPlanningCore/StdPlanningEntry/Planning/decision'
//  '<S39>'  : 'StdPlanningCore/StdPlanningEntry/Planning/gnss_lock'
//  '<S40>'  : 'StdPlanningCore/StdPlanningEntry/Planning/juguang_underground'
//  '<S41>'  : 'StdPlanningCore/StdPlanningEntry/Planning/vehicle_param'
//  '<S42>'  : 'StdPlanningCore/StdPlanningEntry/Planning/ComputeInitFrenetState/MATLAB Function'
//  '<S43>'  : 'StdPlanningCore/StdPlanningEntry/Planning/ComputeStitchingTrajectory/Location Version 1'
//  '<S44>'  : 'StdPlanningCore/StdPlanningEntry/Planning/ComputeStitchingTrajectory/Location Version 2'
//  '<S45>'  : 'StdPlanningCore/StdPlanningEntry/Planning/ComputeStitchingTrajectory/MATLAB Function2'
//  '<S46>'  : 'StdPlanningCore/StdPlanningEntry/Planning/ComputeStitchingTrajectory/Trajectory_Stitcher'
//  '<S47>'  : 'StdPlanningCore/StdPlanningEntry/Planning/DP_Poly_path_optimizer/CalculateAdcBoundary'
//  '<S48>'  : 'StdPlanningCore/StdPlanningEntry/Planning/DP_Poly_path_optimizer/GenerateMinCostPath'
//  '<S49>'  : 'StdPlanningCore/StdPlanningEntry/Planning/DP_Poly_path_optimizer/MATLAB Function'
//  '<S50>'  : 'StdPlanningCore/StdPlanningEntry/Planning/DP_Poly_path_optimizer/MATLAB Function4'
//  '<S51>'  : 'StdPlanningCore/StdPlanningEntry/Planning/DP_Poly_path_optimizer/SamplePathWaypoints'
//  '<S52>'  : 'StdPlanningCore/StdPlanningEntry/Planning/DP_Poly_path_optimizer/init_dp_planner'
//  '<S53>'  : 'StdPlanningCore/StdPlanningEntry/Planning/InitFrame/Frame'
//  '<S54>'  : 'StdPlanningCore/StdPlanningEntry/Planning/InitFrame/MATLAB Function'
//  '<S55>'  : 'StdPlanningCore/StdPlanningEntry/Planning/InitFrame/Frame/Init'
//  '<S56>'  : 'StdPlanningCore/StdPlanningEntry/Planning/InitFrame/Frame/Init/CreateReference_line_info'
//  '<S57>'  : 'StdPlanningCore/StdPlanningEntry/Planning/InitFrame/Frame/Init/InitFrameData'
//  '<S58>'  : 'StdPlanningCore/StdPlanningEntry/Planning/InitFrame/Frame/Init/InitFrameData/Reference_line_info'
//  '<S59>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Plan/MATLAB Function1'
//  '<S60>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Plan/PlanOnReferenceLine'
//  '<S61>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Plan/planning_choice_result'
//  '<S62>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Plan/PlanOnReferenceLine/ComputeInitFrenetState'
//  '<S63>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Plan/PlanOnReferenceLine/If Action Subsystem1'
//  '<S64>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Plan/PlanOnReferenceLine/IsEgoVehicleInLane'
//  '<S65>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Plan/PlanOnReferenceLine/IsObjectConsidered'
//  '<S66>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Plan/PlanOnReferenceLine/Lattice_Planner'
//  '<S67>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Plan/PlanOnReferenceLine/MATLAB Function'
//  '<S68>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Plan/PlanOnReferenceLine/ModifyVehObj'
//  '<S69>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Plan/PlanOnReferenceLine/trajectory_evaluation'
//  '<S70>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Plan/PlanOnReferenceLine/trajectory_generator'
//  '<S71>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Plan/PlanOnReferenceLine/ComputeInitFrenetState/MATLAB Function'
//  '<S72>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Plan/PlanOnReferenceLine/Lattice_Planner/Lattice_Planner'
//  '<S73>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Plan/PlanOnReferenceLine/Lattice_Planner/Lattice_Planner/MATLAB Function'
//  '<S74>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Plan/PlanOnReferenceLine/trajectory_evaluation/trajectory_evaluation'
//  '<S75>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Plan/PlanOnReferenceLine/trajectory_generator/Trajectories Generation'
//  '<S76>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Prediction_Core2/ENU_Debug'
//  '<S77>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Prediction_Core2/Objects_Gnss_Pose'
//  '<S78>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Prediction_Core2/ObstacleType'
//  '<S79>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Prediction_Core2/PreProgramSignal'
//  '<S80>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Prediction_Core2/Prediction_Debug'
//  '<S81>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Prediction_Core2/Predictor'
//  '<S82>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Prediction_Core2/PredictorManage'
//  '<S83>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Prediction_Core2/kalman_Trajectory'
//  '<S84>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Prediction_Core2/refrence_line_debug'
//  '<S85>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Prediction_Core2/Prediction_Debug/MATLAB Function1'
//  '<S86>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Prediction_Core2/Prediction_Debug/Prediction_GraphSelector'
//  '<S87>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Prediction_Core2/Prediction_Debug/Prediction_GraphSelector1'
//  '<S88>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Prediction_Core_new/ENU_Debug'
//  '<S89>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Prediction_Core_new/Objects_Gnss_Pose'
//  '<S90>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Prediction_Core_new/ObstacleType'
//  '<S91>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Prediction_Core_new/PreProgramSignal'
//  '<S92>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Prediction_Core_new/Prediction_Debug'
//  '<S93>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Prediction_Core_new/Predictor'
//  '<S94>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Prediction_Core_new/PredictorManage'
//  '<S95>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Prediction_Core_new/func1'
//  '<S96>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Prediction_Core_new/kalman_Trajectory'
//  '<S97>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Prediction_Core_new/refrence_line_debug'
//  '<S98>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Prediction_Core_new/Prediction_Debug/MATLAB Function1'
//  '<S99>'  : 'StdPlanningCore/StdPlanningEntry/Planning/Prediction_Core_new/Prediction_Debug/Prediction_GraphSelector'
//  '<S100>' : 'StdPlanningCore/StdPlanningEntry/Planning/Prediction_Core_new/Prediction_Debug/Prediction_GraphSelector1'
//  '<S101>' : 'StdPlanningCore/StdPlanningEntry/Planning/ReferenceLineProvider/ReferenceLineProvider'
//  '<S102>' : 'StdPlanningCore/StdPlanningEntry/Planning/StatusSensorFusion/ChoiceData'
//  '<S103>' : 'StdPlanningCore/StdPlanningEntry/Planning/StatusSensorFusion/If Action Subsystem2'
//  '<S104>' : 'StdPlanningCore/StdPlanningEntry/Planning/StatusSensorFusion/If Action Subsystem3'
//  '<S105>' : 'StdPlanningCore/StdPlanningEntry/Planning/StatusSensorFusion/If Action Subsystem2/EstimateFuturePosition'
//  '<S106>' : 'StdPlanningCore/StdPlanningEntry/Planning/Traffic_decision/MATLAB Function'
//  '<S107>' : 'StdPlanningCore/StdPlanningEntry/Planning/VehicleStateProvider/MATLAB Function'
//  '<S108>' : 'StdPlanningCore/StdPlanningEntry/Planning/calcStopPoint/calcDistanceForStop1'
//  '<S109>' : 'StdPlanningCore/StdPlanningEntry/Planning/decision/ScenarioChoice'
//  '<S110>' : 'StdPlanningCore/StdPlanningEntry/Planning/decision/decision_bus'
//  '<S111>' : 'StdPlanningCore/StdPlanningEntry/Planning/decision/obstacle_choice'
//  '<S112>' : 'StdPlanningCore/StdPlanningEntry/Planning/decision/obstacle_choice1'
//  '<S113>' : 'StdPlanningCore/StdPlanningEntry/Planning/decision/obstacle_process'
//  '<S114>' : 'StdPlanningCore/StdPlanningEntry/Subsystem3/Coor.Trans.'
//  '<S115>' : 'StdPlanningCore/StdPlanningEntry/Subsystem3/Subsystem'
//  '<S116>' : 'StdPlanningCore/StdPlanningEntry/Subsystem3/Subsystem1'
//  '<S117>' : 'StdPlanningCore/StdPlanningEntry/Subsystem3/Subsystem2'
//  '<S118>' : 'StdPlanningCore/StdPlanningEntry/Subsystem3/Coor.Trans./Objects Coord. Transform'
//  '<S119>' : 'StdPlanningCore/StdPlanningEntry/Subsystem3/Subsystem2/MATLAB Function'
//  '<S120>' : 'StdPlanningCore/StdPlanningEntry/Subsystem3/Subsystem2/Subsystem'
//  '<S121>' : 'StdPlanningCore/StdPlanningEntry/Subsystem3/Subsystem2/Subsystem1'
//  '<S122>' : 'StdPlanningCore/StdPlanningEntry/Subsystem3/Subsystem2/Subsystem2'
//  '<S123>' : 'StdPlanningCore/StdPlanningEntry/Subsystem3/Subsystem2/Subsystem3'
//  '<S124>' : 'StdPlanningCore/StdPlanningEntry/Subsystem3/Subsystem2/Subsystem4'
//  '<S125>' : 'StdPlanningCore/StdPlanningEntry/Subsystem3/Subsystem2/Subsystem5'
//  '<S126>' : 'StdPlanningCore/StdPlanningEntry/Subsystem3/Subsystem2/Subsystem6'
//  '<S127>' : 'StdPlanningCore/StdPlanningEntry/Subsystem3/Subsystem2/Subsystem7'
//  '<S128>' : 'StdPlanningCore/StdPlanningEntry/Subsystem5/MATLAB Function'

#endif                                 // RTW_HEADER_StdPlanningCore_h_

//
// File trailer for generated code.
//
// [EOF]
//
