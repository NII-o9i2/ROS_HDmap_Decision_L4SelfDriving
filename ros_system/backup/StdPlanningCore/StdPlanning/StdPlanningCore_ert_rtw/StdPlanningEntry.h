//
// File: StdPlanningEntry.h
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
#ifndef RTW_HEADER_StdPlanningEntry_h_
#define RTW_HEADER_StdPlanningEntry_h_
#include <cmath>
#include <string.h>
#ifndef StdPlanningCore_COMMON_INCLUDES_
# define StdPlanningCore_COMMON_INCLUDES_
#include <stdlib.h>
#include "rtwtypes.h"
#endif                                 // StdPlanningCore_COMMON_INCLUDES_

#include "StdPlanningCore_types.h"
#include "rtGetNaN.h"
#include "rt_nonfinite.h"
#include "rt_defines.h"

// Block signals for system '<Root>/StdPlanningEntry'
typedef struct {
  ReferenceLineInfos ReferenceLineInfo_g;// '<S60>/MATLAB Function'
  CreateReferenceLineInfo ReferenceLineInfos_k_ReferenceL[2];
  CreateReferenceLineInfo ReferenceLineInfo__ReferenceLin[2];
  sIrjJyAYxwJPwTJgHTE1w1E_St_type obstaclemat[5120];
  CreateReferenceLineInfo reference_line_info;
  Obstacle_Pred Obstacle_graph_Obstacle[32];
  sFd0BgoFeaQNbs22E4k80dD_St_type obstacleBox[5120];
  path_obstacles_Mt path_obstacles;
  PathDecision_StdPlanningCo_type Path_Decision;
  PathDecision_StdPlanning_j_type path_decision;
  PathDecision_StdPlanning_j_type path_decision_k;
  PathDecision_StdPlanning_j_type path_decision_c;
  s4wYhnUSlelbpD7isquwqiC_St_type b_obstacles[50];
  sKQJemYlICwuSL36qw8pviF_St_type obstaclemat_b[5120];
  ReferenceLine_Mt ReferenceLines_m_ReferenceLine[3];
  real32_T cost_components_shown_p[14400];// '<S69>/trajectory_evaluation'
  Trajectory_Mt r0;
  Trajectory_Mt r1;
  saVrHLLel0leFVt4C7H3bmF_St_type arrests[81];
  Trajectory_Point discretized_path_Trajectory_Poi[900];
  ReferenceLineInfo_StdPlann_type init_ref_line_info;
  ReferenceLinePoint_Mt reference_line_ReferenceLinePoi[900];
  FrenetFramePoint frenet_path[900];
  curve total_curve_data[255];
  DPRoadGraphNode in_lane_path_waypoints_d_g[133];// '<S15>/GenerateMinCostPath' 
  real32_T x_g[2400];
  real32_T cost_queue_m[2400];         // '<S69>/trajectory_evaluation'
  real32_T xwork[2400];
  int32_T iidx[2400];
  int32_T iwork[2400];
  lon_traj_reference lon_trajectories_d_lon_traj[200];
  DPRoadGraphNode side_pass_path_waypoints_n[57];
  DPRoadGraphNode side_pass_path_waypoints_p[57];// '<S15>/SamplePathWaypoints'
  Obstacle_Pred Obstacle_Predictor;
  HistoryObstacles HistoryObstacles_e; // '<S27>/kalman_Trajectory'
  Obstacles_ENU Obstalce_ENU;          // '<S27>/kalman_Trajectory'
  params_buf params_buf_i;             // '<S60>/MATLAB Function'
  lat_traj_reference backup_lat_trajectory;// '<S72>/MATLAB Function'
  real_T bestpath_id_first;            // '<S72>/MATLAB Function'
  real_T bestpath_id_second;           // '<S72>/MATLAB Function'
  real32_T dds;                        // '<S72>/MATLAB Function'
  real32_T s_condition[3];             // '<S62>/MATLAB Function'
  uint8_T id_shown;                    // '<S70>/Trajectories Generation'
  uint8_T Flag_PathTimeObstacleSample_sho;// '<S70>/Trajectories Generation'
} B_StdPlanningEntry_StdPlan_type;

// Block states (auto storage) for system '<Root>/StdPlanningEntry'
typedef struct {
  Trajectory_ref UnitDelay_DSTATE;     // '<S2>/Unit Delay'
  DecisionScenarion DecisionScenario_; // '<S38>/ScenarioChoice'
  real_T UnitDelay1_DSTATE[512];       // '<S27>/Unit Delay1'
  real_T UnitDelay2_DSTATE[160];       // '<S27>/Unit Delay2'
  real_T UnitDelay1_DSTATE_j;          // '<S2>/Unit Delay1'
  real_T ScenarioRequest;              // '<S38>/ScenarioChoice'
  real_T StageRequest;                 // '<S38>/ScenarioChoice'
  real_T t;                            // '<S27>/kalman_Trajectory'
  real_T polyT;                        // '<S27>/kalman_Trajectory'
  real_T t_f;                          // '<S27>/PredictorManage'
  real_T t_k;                          // '<S27>/Predictor'
  real32_T vehicle_speed_;             // '<S34>/MATLAB Function'
  real32_T time_count;                 // '<S72>/MATLAB Function'
  uint32_T state[625];                 // '<S27>/kalman_Trajectory'
  int8_T UnitDelay4_DSTATE;            // '<S2>/Unit Delay4'
  uint8_T UnitDelay3_DSTATE_l;         // '<S2>/Unit Delay3'
  int8_T SaveObj;                      // '<S38>/ScenarioChoice'
  int8_T Lstate[3];                    // '<S38>/ScenarioChoice'
  int8_T CurrentLstate;                // '<S38>/ScenarioChoice'
  int8_T LastLstate;                   // '<S38>/ScenarioChoice'
  int8_T AccuLaneNO;                   // '<S38>/ScenarioChoice'
  boolean_T DecisionScenario__not_empty;// '<S38>/ScenarioChoice'
  boolean_T enable_back;               // '<S33>/MATLAB Function'
  boolean_T polyT_not_empty;           // '<S27>/kalman_Trajectory'
} DW_StdPlanningEntry_StdPla_type;

// Invariant block signals for system '<Root>/StdPlanningEntry'
typedef const struct tag_ConstB_StdPlanningEntr_type {
  real_T Gain14;                       // '<S4>/Gain14'
  real32_T gnss_determiner;            // '<S5>/Data Type Conversion3'
  real32_T steer_angle;                // '<S4>/Data Type Conversion10'
  real32_T steer_torque;               // '<S4>/Data Type Conversion11'
  real32_T steer_angle_rate;           // '<S4>/Data Type Conversion15'
  real32_T fleft_wheel_spd;            // '<S4>/Data Type Conversion19'
  real32_T fright_wheel_spd;           // '<S4>/Data Type Conversion20'
  real32_T rleft_wheel_spd;            // '<S4>/Data Type Conversion21'
  real32_T rright_wheel_spd;           // '<S4>/Data Type Conversion22'
  real32_T drive_motor_torque;         // '<S4>/Data Type Conversion24'
  real32_T fleft_brake_motor_current;  // '<S4>/Data Type Conversion25'
  real32_T fright_brake_motor_current; // '<S4>/Data Type Conversion26'
  real32_T rleft_brake_motor_current;  // '<S4>/Data Type Conversion27'
  real32_T rright_brake_motor_current; // '<S4>/Data Type Conversion28'
  real32_T fleft_brake_opening;        // '<S4>/Data Type Conversion29'
  real32_T fright_brake_opening;       // '<S4>/Data Type Conversion30'
  real32_T rleft_brake_opening;        // '<S4>/Data Type Conversion31'
  real32_T rright_brake_opening;       // '<S4>/Data Type Conversion32'
  real32_T Gain_l;                     // '<S2>/Gain'
  real32_T DataTypeConversion16;       // '<S2>/Data Type Conversion16'
  real32_T Gain_b;                     // '<S60>/Gain'
  real32_T UnaryMinus;                 // '<S64>/Unary Minus'
  int8_T steer_error_info;             // '<S4>/Data Type Conversion16'
  int8_T steer_torque_dir;             // '<S4>/Data Type Conversion17'
  int8_T DataTypeConversion_e;         // '<S38>/Data Type Conversion'
  uint8_T gnss_state;                  // '<S5>/Data Type Conversion'
  uint8_T gear_position;               // '<S4>/Data Type Conversion23'
  uint8_T epb_state;                   // '<S4>/Data Type Conversion33'
  uint8_T door_state;                  // '<S4>/Data Type Conversion34'
  uint8_T DataTypeConversion15;        // '<S2>/Data Type Conversion15'
  boolean_T Compare_c;                 // '<S11>/Compare'
} ConstB_StdPlanningEntry_St_type;

void StdPlanni_StdPlanningEntry_Init(DW_StdPlanningEntry_StdPla_type *localDW);
void StdPlanningCor_StdPlanningEntry(const HD_MAP *StdPlanningCore_u_HD_MAP,
  const Localization_YTT_Mt *StdPlanningC_u_Localization_YTT, Trajectory_Mt
  *StdPlanningCore_y_Trajectory, Trajectory_display
  *StdPlanningC_y_trajectory_debug, DecisionBus *StdPlanningCore_y_decbus,
  B_StdPlanningEntry_StdPlan_type *localB, const ConstB_StdPlanningEntry_St_type
  *localC, DW_StdPlanningEntry_StdPla_type *localDW);

#endif                                 // RTW_HEADER_StdPlanningEntry_h_

//
// File trailer for generated code.
//
// [EOF]
//
