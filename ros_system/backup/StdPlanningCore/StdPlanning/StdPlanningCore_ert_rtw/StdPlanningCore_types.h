//
// File: StdPlanningCore_types.h
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
#ifndef RTW_HEADER_StdPlanningCore_types_h_
#define RTW_HEADER_StdPlanningCore_types_h_
#include "rtwtypes.h"
#ifndef DEFINED_TYPEDEF_FOR_S_POINT_
#define DEFINED_TYPEDEF_FOR_S_POINT_

typedef struct {
  real32_T x;
  real32_T y;
  real32_T z;
} S_POINT;

#endif

#ifndef DEFINED_TYPEDEF_FOR_S_LINE_
#define DEFINED_TYPEDEF_FOR_S_LINE_

typedef struct {
  int16_T type;
  int16_T linetype[100];
  S_POINT point[100];
  int16_T pointnum;
} S_LINE;

#endif

#ifndef DEFINED_TYPEDEF_FOR_S_LANEINFO_
#define DEFINED_TYPEDEF_FOR_S_LANEINFO_

typedef struct {
  S_LINE centerline;
  S_LINE leftboundry;
  S_LINE rightboundry;
  real32_T width;
  boolean_T IsPartofRouting;
  int16_T type;
  int16_T direction;
  int16_T id;
  real32_T length;
} S_LANEINFO;

#endif

#ifndef DEFINED_TYPEDEF_FOR_S_STOPLINE_
#define DEFINED_TYPEDEF_FOR_S_STOPLINE_

typedef struct {
  int16_T offset;
  int16_T latOffset;
  int16_T type;
  int16_T validnum;
  S_POINT point[100];
} S_STOPLINE;

#endif

#ifndef DEFINED_TYPEDEF_FOR_HD_MAP_
#define DEFINED_TYPEDEF_FOR_HD_MAP_

typedef struct {
  int16_T time;
  int16_T isvalidlane;
  int16_T positionstate;
  int16_T curlane;
  S_LANEINFO laneInfo[5];
  real32_T speedlim;
  S_STOPLINE stopline;
  boolean_T istunnel;
  int16_T nextlaneCH;
} HD_MAP;

#endif

#ifndef DEFINED_TYPEDEF_FOR_Localization_YTT_Mt_
#define DEFINED_TYPEDEF_FOR_Localization_YTT_Mt_

typedef struct {
  real32_T position_x;
  real32_T position_y;
  real32_T position_yaw;
  real32_T velocity;
} Localization_YTT_Mt;

#endif

#ifndef DEFINED_TYPEDEF_FOR_Point3D_location_
#define DEFINED_TYPEDEF_FOR_Point3D_location_

typedef struct {
  real32_T x;
  real32_T y;
  real32_T z;
  boolean_T isValid;
} Point3D_location;

#endif

#ifndef DEFINED_TYPEDEF_FOR_Localization_Mt_
#define DEFINED_TYPEDEF_FOR_Localization_Mt_

typedef struct {
  real_T timestamp;
  Point3D_location position;
  Point3D_location linear_velocity;
  Point3D_location linear_acceleration;
  Point3D_location angular_velocity;
  Point3D_location euler_angles;
  uint8_T gnss_state;
  real32_T gnss_determiner;
} Localization_Mt;

#endif

#ifndef DEFINED_TYPEDEF_FOR_Chassis_Mt_
#define DEFINED_TYPEDEF_FOR_Chassis_Mt_

typedef struct {
  real_T timestamp;
  real32_T steer_angle;
  real32_T steer_torque;
  real32_T steer_angle_rate;
  int8_T steer_error_info;
  int8_T steer_torque_dir;
  real32_T vehicle_speed;
  real32_T fleft_wheel_spd;
  real32_T fright_wheel_spd;
  real32_T rleft_wheel_spd;
  real32_T rright_wheel_spd;
  uint8_T gear_position;
  real32_T drive_motor_torque;
  real32_T fleft_brake_motor_current;
  real32_T fright_brake_motor_current;
  real32_T rleft_brake_motor_current;
  real32_T rright_brake_motor_current;
  real32_T fleft_brake_opening;
  real32_T fright_brake_opening;
  real32_T rleft_brake_opening;
  real32_T rright_brake_opening;
  uint8_T epb_state;
  uint8_T door_state;
} Chassis_Mt;

#endif

#ifndef DEFINED_TYPEDEF_FOR_Evaluate_Bus_
#define DEFINED_TYPEDEF_FOR_Evaluate_Bus_

typedef struct {
  real32_T trajectory_time_resolution;
  real32_T speed_lower_bound;
  real32_T speed_upper_bound;
  real32_T longitudinal_jerk_upper_bound;
  real32_T longitudinal_jerk_lower_bound;
  real32_T longitudinal_acceleration_upper_bound;
  real32_T longitudinal_acceleration_lower_bound;
  real32_T trajectory_space_resolution;
  real32_T decision_horizon;
  real32_T weight_lon_objective;
  real32_T weight_lon_jerk;
  real32_T weight_lon_collision;
  real32_T weight_centripetal_acceleration;
  real32_T weight_lat_offset;
  real32_T weight_lat_comfort;
  real32_T weight_target_speed;
  real32_T weight_dist_travelled;
  real32_T lon_collision_cost_std;
  real32_T lon_collision_yield_buffer;
  real32_T lon_collision_overtake_buffer;
  real32_T lat_offset_bound;
  real32_T weight_opposite_side_offset;
  real32_T weight_same_side_offset;
  real32_T trajectory_time_length;
  real32_T cruise_speed;
  real32_T lon_collision_yield_dist_upper;
  real32_T lon_collision_yield_dist_middle;
  real32_T lon_collision_yield_dist_lower;
} Evaluate_Bus;

#endif

#ifndef DEFINED_TYPEDEF_FOR_Global_obstalces_Add_
#define DEFINED_TYPEDEF_FOR_Global_obstalces_Add_

typedef struct {
  real32_T ENU_x;
  real32_T ENU_y;
  real32_T ENU_theta;
  real32_T ENU_vx;
  real32_T ENU_vy;
  real32_T ENU_ax;
  real32_T ENU_ay;
  real32_T confidence;
  int8_T type;
  real32_T velocity;
  real32_T length;
  real32_T width;
} Global_obstalces_Add;

#endif

#ifndef DEFINED_TYPEDEF_FOR_Obstacles_ENU_Add_
#define DEFINED_TYPEDEF_FOR_Obstacles_ENU_Add_

typedef struct {
  Global_obstalces_Add Global_Obstacles[32];
} Obstacles_ENU_Add;

#endif

#ifndef DEFINED_TYPEDEF_FOR_Prediction_Debug_
#define DEFINED_TYPEDEF_FOR_Prediction_Debug_

typedef struct {
  real32_T Frenet_l[32];
  real32_T Frenet_s[32];
  real32_T Angle_diff[32];
  uint8_T Prediction_Method[64];
  Obstacles_ENU_Add ObstacleENU_Debug;
  real32_T prediction_x[640];
  real32_T prediction_y[640];
  boolean_T istrajectoryok[64];
} Prediction_Debug;

#endif

#ifndef DEFINED_TYPEDEF_FOR_sticher_Debug_Mt_
#define DEFINED_TYPEDEF_FOR_sticher_Debug_Mt_

typedef struct {
  boolean_T prev_traj_is_NOT_ok;
  boolean_T driver_mode_is_NOT_auto;
  boolean_T prev_traj_size_is_zero;
  boolean_T curr_time_smaller_than_prev_traj_time;
  boolean_T curr_time_beyond_prev_traj_time;
  boolean_T dist_too_large;
  real32_T lon_diff;
  real32_T lat_diff;
} sticher_Debug_Mt;

#endif

#ifndef DEFINED_TYPEDEF_FOR_Trajectory_display_
#define DEFINED_TYPEDEF_FOR_Trajectory_display_

typedef struct {
  real32_T lon_objective_cost;
  real32_T lon_jerk_cost;
  real32_T lon_collision_cost;
  real32_T lat_offset_cost;
  real32_T centripental_acc_cost;
  real32_T lat_comfort_cost;
  real32_T constraint_check_failure_count;
  real32_T collision_failure_count;
  real32_T distance_planning;
  uint8_T id_shown;
  uint8_T Flag_PathTimeObstacleSample_shown;
  real32_T max_t;
  real32_T max_d;
  real32_T stitch_trajectory_x;
  real32_T stitch_trajectory_y;
  real32_T stitch_trajectory_z;
  real32_T stitch_trajectory_theta;
  real32_T stitch_trajectory_kappa;
  real32_T stitch_trajectory_v;
  real32_T stitch_trajectory_a;
  real32_T stitch_trajectory_relative_time;
  Prediction_Debug Prediction_SubDebug;
  sticher_Debug_Mt stitch_Debug;
} Trajectory_display;

#endif

#ifndef DEFINED_TYPEDEF_FOR_ReferenceLinePoint_Mt_
#define DEFINED_TYPEDEF_FOR_ReferenceLinePoint_Mt_

typedef struct {
  real32_T x;
  real32_T y;
  real32_T s;
  real32_T theta;
  real32_T kappa;
  real32_T dkappa;
} ReferenceLinePoint_Mt;

#endif

#ifndef DEFINED_TYPEDEF_FOR_StationLocation_Mt_
#define DEFINED_TYPEDEF_FOR_StationLocation_Mt_

typedef struct {
  real32_T x;
  real32_T y;
  real32_T s;
  boolean_T isValid;
} StationLocation_Mt;

#endif

#ifndef DEFINED_TYPEDEF_FOR_ReferenceLine_Mt_
#define DEFINED_TYPEDEF_FOR_ReferenceLine_Mt_

typedef struct {
  ReferenceLinePoint_Mt ReferenceLinePoint[900];
  uint16_T PointNum;
  uint16_T SpeedLimited;
  StationLocation_Mt StationLocation;
  real32_T LaneWidth;
  uint8_T LaneDirection;
} ReferenceLine_Mt;

#endif

#ifndef DEFINED_TYPEDEF_FOR_StitchingTrajectory_
#define DEFINED_TYPEDEF_FOR_StitchingTrajectory_

typedef struct {
  real32_T s;
  real32_T x;
  real32_T y;
  real32_T z;
  real32_T theta;
  real32_T kappa;
  real32_T v;
  real32_T a;
  real32_T relative_time;
} StitchingTrajectory;

#endif

#ifndef DEFINED_TYPEDEF_FOR_vehicle_param_
#define DEFINED_TYPEDEF_FOR_vehicle_param_

typedef struct {
  real32_T length;
  real32_T width;
  real32_T front_edge_to_center;
  real32_T back_edge_to_center;
  real32_T left_edge_to_center;
  real32_T right_edge_to_center;
} vehicle_param;

#endif

#ifndef DEFINED_TYPEDEF_FOR_planning_target_
#define DEFINED_TYPEDEF_FOR_planning_target_

typedef struct {
  boolean_T has_stop_point;
  real32_T stop_point_s;
  real32_T cruise_speed;
} planning_target;

#endif

#ifndef DEFINED_TYPEDEF_FOR_sl_boundary_
#define DEFINED_TYPEDEF_FOR_sl_boundary_

typedef struct {
  real32_T start_s;
  real32_T end_s;
  real32_T start_l;
  real32_T end_l;
} sl_boundary;

#endif

#ifndef DEFINED_TYPEDEF_FOR_path_point_1_
#define DEFINED_TYPEDEF_FOR_path_point_1_

typedef struct {
  real32_T x;
  real32_T y;
  real32_T z;
  real32_T velocity;
  real32_T accel;
  real32_T time;
  real32_T curvature;
  real32_T curv_rate;
  real32_T theta;
  real32_T s;
  real32_T s_dot;
} path_point_1;

#endif

#ifndef DEFINED_TYPEDEF_FOR_Trajectory_ref_
#define DEFINED_TYPEDEF_FOR_Trajectory_ref_

typedef struct {
  boolean_T isOk;
  path_point_1 path_point[81];
} Trajectory_ref;

#endif

#ifndef DEFINED_TYPEDEF_FOR_point_
#define DEFINED_TYPEDEF_FOR_point_

typedef struct {
  real32_T x;
  real32_T y;
} point;

#endif

#ifndef DEFINED_TYPEDEF_FOR_PredictionPoint_
#define DEFINED_TYPEDEF_FOR_PredictionPoint_

typedef struct {
  real32_T theta;
  real_T relativetime;
  real32_T x;
  real32_T y;
  real32_T v;
} PredictionPoint;

#endif

#ifndef DEFINED_TYPEDEF_FOR_Prediction_Trajectory_
#define DEFINED_TYPEDEF_FOR_Prediction_Trajectory_

typedef struct {
  boolean_T Trajectory_Ok;
  PredictionPoint Position[81];
} Prediction_Trajectory;

#endif

#ifndef DEFINED_TYPEDEF_FOR_longitudinal_decision_
#define DEFINED_TYPEDEF_FOR_longitudinal_decision_

typedef struct {
  uint8_T tag;
  uint8_T decision;
} longitudinal_decision;

#endif

#ifndef DEFINED_TYPEDEF_FOR_lateral_decision_
#define DEFINED_TYPEDEF_FOR_lateral_decision_

typedef struct {
  uint8_T tag;
  uint8_T decision;
} lateral_decision;

#endif

#ifndef DEFINED_TYPEDEF_FOR_path_obstacle_
#define DEFINED_TYPEDEF_FOR_path_obstacle_

typedef struct {
  uint8_T Id;
  boolean_T IsVirtual;
  int8_T Type;
  point Position;
  real32_T Heading;
  real32_T Speed;
  real32_T Width;
  real32_T Length;
  boolean_T IsStill;
  Prediction_Trajectory Trajectory;
  sl_boundary perception_sl;
  boolean_T HasLongitudinalDecision;
  longitudinal_decision LongitudinalDecision;
  boolean_T HasLateralDecision;
  lateral_decision LateralDecision;
} path_obstacle;

#endif

#ifndef DEFINED_TYPEDEF_FOR_path_obstacles_Mt_
#define DEFINED_TYPEDEF_FOR_path_obstacles_Mt_

typedef struct {
  uint8_T valid_num;
  path_obstacle obstacles[50];
} path_obstacles_Mt;

#endif

#ifndef DEFINED_TYPEDEF_FOR_CreateReferenceLineInfo_
#define DEFINED_TYPEDEF_FOR_CreateReferenceLineInfo_

typedef struct {
  boolean_T isChangeLine;
  boolean_T is_on_reference_line;
  planning_target Planning_Target;
  sl_boundary AdcSlBoundary;
  ReferenceLine_Mt reference_line;
  Trajectory_ref Trajectory;
  path_obstacles_Mt path_obstacles;
  real32_T trajectoryLength;
  real32_T cost;
  boolean_T Driveable;
  real32_T Prioritycost;
  boolean_T is_init;
} CreateReferenceLineInfo;

#endif

#ifndef DEFINED_TYPEDEF_FOR_ReferenceLineInfos_
#define DEFINED_TYPEDEF_FOR_ReferenceLineInfos_

typedef struct {
  uint8_T valid_num;
  CreateReferenceLineInfo ReferenceLineInfo_out[2];
} ReferenceLineInfos;

#endif

#ifndef DEFINED_TYPEDEF_FOR_Adc_sl_Boundary_
#define DEFINED_TYPEDEF_FOR_Adc_sl_Boundary_

typedef struct {
  real32_T v;
  real32_T start_s;
  real32_T end_s;
  real32_T start_l;
  real32_T end_l;
} Adc_sl_Boundary;

#endif

#ifndef DEFINED_TYPEDEF_FOR_FrenetFramePoint_
#define DEFINED_TYPEDEF_FOR_FrenetFramePoint_

typedef struct {
  real32_T s;
  real32_T l;
  real32_T dl;
  real32_T ddl;
} FrenetFramePoint;

#endif

#ifndef DEFINED_TYPEDEF_FOR_min_cost_
#define DEFINED_TYPEDEF_FOR_min_cost_

typedef struct {
  real32_T safety_cost;
  real32_T smoothness_cost;
  boolean_T has_collision;
  boolean_T out_of_boundary;
  boolean_T out_of_lane;
} min_cost;

#endif

#ifndef DEFINED_TYPEDEF_FOR_curve_
#define DEFINED_TYPEDEF_FOR_curve_

typedef struct {
  real32_T start_condition[3];
  real32_T end_condition[3];
  real32_T param;
  real32_T coef[6];
} curve;

#endif

#ifndef DEFINED_TYPEDEF_FOR_sl_point_
#define DEFINED_TYPEDEF_FOR_sl_point_

typedef struct {
  real32_T s;
  real32_T l;
  boolean_T isValid;
} sl_point;

#endif

#ifndef DEFINED_TYPEDEF_FOR_DPRoadGraphNode_
#define DEFINED_TYPEDEF_FOR_DPRoadGraphNode_

typedef struct {
  uint8_T prev_node_index;
  uint8_T prev_node_level;
  min_cost min_cost_dp;
  curve min_cost_curve;
  uint8_T index;
  sl_point sl_point_dp;
  boolean_T is_init;
} DPRoadGraphNode;

#endif

#ifndef DEFINED_TYPEDEF_FOR_Dp_Calibration_Mt_
#define DEFINED_TYPEDEF_FOR_Dp_Calibration_Mt_

typedef struct {
  real32_T path_l_cost;
  real32_T path_dl_cost;
  real32_T path_ddl_cost;
  real32_T path_end_l_cost;
  real32_T pathcost_path_resolution;
  real32_T obstaclecost_path_resolution;
  real32_T obstacle_collision_distance;
  real32_T obstacle_latcollision_cost;
  real32_T obstacle_loncollision_cost;
  real32_T lateral_ignore_buffer;
  real32_T static_decision_nudge_l_buffer;
} Dp_Calibration_Mt;

#endif

#ifndef DEFINED_TYPEDEF_FOR_Trajectory_Point_
#define DEFINED_TYPEDEF_FOR_Trajectory_Point_

typedef struct {
  real32_T x;
  real32_T y;
  real32_T theta;
  real32_T kappa;
  real32_T dkappa;
  real32_T s;
  boolean_T isValid;
} Trajectory_Point;

#endif

#ifndef DEFINED_TYPEDEF_FOR_discretized_point_
#define DEFINED_TYPEDEF_FOR_discretized_point_

typedef struct {
  Trajectory_Point Trajectory_Point_dp[900];
  uint16_T pointNum;
} discretized_point;

#endif

#ifndef DEFINED_TYPEDEF_FOR_PathPoint_Mt_
#define DEFINED_TYPEDEF_FOR_PathPoint_Mt_

typedef struct {
  real32_T x;
  real32_T y;
  real32_T z;
  real32_T velocity;
  real32_T accel;
  real32_T time;
  real32_T curvature;
  real32_T curv_rate;
  real32_T theta;
  real32_T s;
  real32_T l;
} PathPoint_Mt;

#endif

#ifndef DEFINED_TYPEDEF_FOR_Trajectory_Mt_
#define DEFINED_TYPEDEF_FOR_Trajectory_Mt_

typedef struct {
  real_T timestamp;
  real32_T distance_to_terminal;
  real32_T distance_to_cip;
  boolean_T is_replan;
  boolean_T estop;
  uint8_T turn_light;
  PathPoint_Mt path_point[800];
} Trajectory_Mt;

#endif

#ifndef DEFINED_TYPEDEF_FOR_vehicle_state_
#define DEFINED_TYPEDEF_FOR_vehicle_state_

typedef struct {
  real32_T x;
  real32_T y;
  real32_T z;
  real32_T timestamp;
  real32_T roll;
  real32_T pitch;
  real32_T yaw;
  real32_T heading;
  real32_T kappa;
  real32_T linear_velocity;
  real32_T angular_velocity;
  real32_T linear_acceleration;
  uint8_T gear;
  real32_T driving_mode;
} vehicle_state;

#endif

#ifndef DEFINED_TYPEDEF_FOR_Obstacle_Pred_
#define DEFINED_TYPEDEF_FOR_Obstacle_Pred_

typedef struct {
  int8_T type;
  real32_T length;
  real32_T width;
  uint8_T Id;
  boolean_T IsStill;
  Prediction_Trajectory Trajectory[2];
} Obstacle_Pred;

#endif

#ifndef DEFINED_TYPEDEF_FOR_Prediction_graph_
#define DEFINED_TYPEDEF_FOR_Prediction_graph_

typedef struct {
  Obstacle_Pred Obstacle[32];
} Prediction_graph;

#endif

#ifndef DEFINED_TYPEDEF_FOR_lat_traj_reference_
#define DEFINED_TYPEDEF_FOR_lat_traj_reference_

typedef struct {
  real32_T coef[6];
  real32_T s;
} lat_traj_reference;

#endif

#ifndef DEFINED_TYPEDEF_FOR_lon_traj_reference_
#define DEFINED_TYPEDEF_FOR_lon_traj_reference_

typedef struct {
  real32_T coef[6];
  real32_T t;
} lon_traj_reference;

#endif

#ifndef DEFINED_TYPEDEF_FOR_params_content_Mat_
#define DEFINED_TYPEDEF_FOR_params_content_Mat_

typedef struct {
  lon_traj_reference lon_traj;
  lat_traj_reference lat_traj;
  real32_T constraint_check_failure_count;
  real32_T collision_failure_count;
  real32_T num_lattice_traj;
} params_content_Mat;

#endif

#ifndef DEFINED_TYPEDEF_FOR_params_buf_
#define DEFINED_TYPEDEF_FOR_params_buf_

typedef struct {
  params_content_Mat params_content[2];
} params_buf;

#endif

#ifndef DEFINED_TYPEDEF_FOR_lon_trajectories_
#define DEFINED_TYPEDEF_FOR_lon_trajectories_

typedef struct {
  lon_traj_reference lon_traj[200];
  uint16_T valid_num;
} lon_trajectories;

#endif

#ifndef DEFINED_TYPEDEF_FOR_lat_trajectories_
#define DEFINED_TYPEDEF_FOR_lat_trajectories_

typedef struct {
  lat_traj_reference lat_traj[12];
} lat_trajectories;

#endif

#ifndef DEFINED_TYPEDEF_FOR_Point3D_
#define DEFINED_TYPEDEF_FOR_Point3D_

typedef struct {
  real32_T x;
  real32_T y;
  real32_T z;
} Point3D;

#endif

#ifndef DEFINED_TYPEDEF_FOR_Obstacle_Mt_
#define DEFINED_TYPEDEF_FOR_Obstacle_Mt_

typedef struct {
  real_T timestamp;
  uint8_T id;
  Point3D position;
  real32_T heading;
  real32_T curvature;
  Point3D velocity_quant;
  real32_T velocity;
  Point3D accel_quant;
  real32_T acceleration;
  real32_T length;
  real32_T width;
  real32_T height;
  int8_T type;
  uint8_T side;
  uint8_T confidence;
  uint8_T confidence_type;
  uint8_T motion_patten;
  uint8_T motion_patten_his;
} Obstacle_Mt;

#endif

#ifndef DEFINED_TYPEDEF_FOR_LaneMarker_Mt_
#define DEFINED_TYPEDEF_FOR_LaneMarker_Mt_

typedef struct {
  real32_T c0;
  real32_T c1;
  real32_T c2;
  real32_T c3;
  real32_T range;
  uint8_T confidence;
} LaneMarker_Mt;

#endif

#ifndef DEFINED_TYPEDEF_FOR_LaneMarkers_Mt_
#define DEFINED_TYPEDEF_FOR_LaneMarkers_Mt_

typedef struct {
  LaneMarker_Mt left_lane_marker;
  LaneMarker_Mt right_lane_marker;
  LaneMarker_Mt next_left_lane_marker;
  LaneMarker_Mt next_right_lane_marker;
} LaneMarkers_Mt;

#endif

#ifndef DEFINED_TYPEDEF_FOR_VehicleSelf_Mt_
#define DEFINED_TYPEDEF_FOR_VehicleSelf_Mt_

typedef struct {
  Point3D pos_delta;
  real32_T heading_delta;
} VehicleSelf_Mt;

#endif

#ifndef DEFINED_TYPEDEF_FOR_VisionSign_Mt_
#define DEFINED_TYPEDEF_FOR_VisionSign_Mt_

typedef struct {
  Point3D position;
  uint8_T type;
  uint8_T value;
} VisionSign_Mt;

#endif

#ifndef DEFINED_TYPEDEF_FOR_PerceptionObstacles_Mt_
#define DEFINED_TYPEDEF_FOR_PerceptionObstacles_Mt_

typedef struct {
  Obstacle_Mt obstacle[32];
  LaneMarkers_Mt lanemarker;
  VehicleSelf_Mt veh_self;
  VisionSign_Mt vision_sign[8];
} PerceptionObstacles_Mt;

#endif

#ifndef DEFINED_TYPEDEF_FOR_Global_obstalces_
#define DEFINED_TYPEDEF_FOR_Global_obstalces_

typedef struct {
  real32_T ENU_x;
  real32_T ENU_y;
  real32_T ENU_theta;
  real32_T ENU_vx;
  real32_T ENU_vy;
  real32_T ENU_ax;
  real32_T ENU_ay;
} Global_obstalces;

#endif

#ifndef DEFINED_TYPEDEF_FOR_Obstacles_ENU_
#define DEFINED_TYPEDEF_FOR_Obstacles_ENU_

typedef struct {
  Global_obstalces Global_Obstacles[32];
} Obstacles_ENU;

#endif

#ifndef DEFINED_TYPEDEF_FOR_ObjPredMethod_
#define DEFINED_TYPEDEF_FOR_ObjPredMethod_

typedef enum {
  ObjPredMethod_EMPTY_PREDICTOR = 0,   // Default value
  ObjPredMethod_FREE_MOVE_PREDICTOR,
  ObjPredMethod_LANE_SEQUENCE_PREDICTOR,
  ObjPredMethod_MOVE_SEQUENCE_PREDICTOR,
  ObjPredMethod_REGIONAL_PREDICTOR
} ObjPredMethod;

#endif

#ifndef DEFINED_TYPEDEF_FOR_Globalobstalces_
#define DEFINED_TYPEDEF_FOR_Globalobstalces_

typedef struct {
  real32_T Obstacle_x[10];
  real32_T Obstacle_y[10];
} Globalobstalces;

#endif

#ifndef DEFINED_TYPEDEF_FOR_HistoryObstacles_
#define DEFINED_TYPEDEF_FOR_HistoryObstacles_

typedef struct {
  Globalobstalces enuObstacles[32];
} HistoryObstacles;

#endif

#ifndef DEFINED_TYPEDEF_FOR_DecisionInfo_
#define DEFINED_TYPEDEF_FOR_DecisionInfo_

typedef struct {
  boolean_T ReferencelinesIsValid[3];
  int8_T LaneNum;
  real32_T station_s;
  boolean_T IsStraight;
  boolean_T RoutingRequest;
  int8_T RoutingObjLane;
  boolean_T CLOTRequest;
  int8_T CLOTObjLane;
  boolean_T IsTurning;
} DecisionInfo;

#endif

#ifndef DEFINED_TYPEDEF_FOR_obstacle_in_
#define DEFINED_TYPEDEF_FOR_obstacle_in_

typedef struct {
  int8_T ID;
  int8_T type;
  boolean_T IsStatic;
  real32_T StaticTimer;
  real32_T s;
  real32_T l;
  real32_T vs;
  real32_T as;
  real32_T vl;
  real32_T al;
  int8_T LaneNo;
  real32_T TimeCost;
  real32_T DesCost;
  real32_T DecisionCost;
  int8_T DecisionTag;
} obstacle_in;

#endif

#ifndef DEFINED_TYPEDEF_FOR_DecisionScenarion_
#define DEFINED_TYPEDEF_FOR_DecisionScenarion_

typedef struct {
  real32_T Timer_;
  int8_T Scenario;
  int8_T StageStatus;
  int8_T Stage;
  int8_T ScenarioRequest_;
  int8_T StageRequest_;
  int8_T ObjLane;
  int8_T CurLane;
  int8_T BackLane;
  int8_T ObjDir;
  int8_T ObjIndex;
} DecisionScenarion;

#endif

#ifndef DEFINED_TYPEDEF_FOR_DecisionBus_
#define DEFINED_TYPEDEF_FOR_DecisionBus_

typedef struct {
  obstacle_in obstacle[50];
  int8_T LaneChangeID;
  int8_T LaneID;
  real32_T EgoCost[3];
  int8_T OnLaneObsNum[3];
  int8_T LaneChangeProcess;
} DecisionBus;

#endif

#ifndef DEFINED_TYPEDEF_FOR_SystemStat_Mt_
#define DEFINED_TYPEDEF_FOR_SystemStat_Mt_

typedef struct {
  real_T current_time;
  uint8_T active_stat;
} SystemStat_Mt;

#endif

#ifndef DEFINED_TYPEDEF_FOR_RoadEdge_
#define DEFINED_TYPEDEF_FOR_RoadEdge_

typedef struct {
  real32_T a;
  real32_T b;
  real32_T c;
  real32_T d;
  real32_T start_x;
  real32_T end_x;
} RoadEdge;

#endif

#ifndef DEFINED_TYPEDEF_FOR_ReferenceLines_
#define DEFINED_TYPEDEF_FOR_ReferenceLines_

typedef struct {
  real_T timestamp;
  ReferenceLine_Mt ReferenceLine[3];
  uint8_T is_refline_changed;
  uint8_T change_lane_signal;
  RoadEdge LeftRoadEdge;
  RoadEdge RightRoadEdge;
} ReferenceLines;

#endif

#ifndef DEFINED_TYPEDEF_FOR_TrafficLight_
#define DEFINED_TYPEDEF_FOR_TrafficLight_

typedef enum {
  TrafficLight_UNKNOWN = 0,            // Default value
  TrafficLight_RED,
  TrafficLight_YELLOW,
  TrafficLight_GREEN
} TrafficLight;

#endif

#ifndef DEFINED_TYPEDEF_FOR_ObjClassn3Vcc_
#define DEFINED_TYPEDEF_FOR_ObjClassn3Vcc_

typedef enum {
  ObjClassn3Vcc_UkwnClass = 0,         // Default value
  ObjClassn3Vcc_Car = 1,
  ObjClassn3Vcc_Motorcycle = 2,
  ObjClassn3Vcc_Truck = 3,
  ObjClassn3Vcc_Ped = 4,
  ObjClassn3Vcc_Anim = 7,
  ObjClassn3Vcc_ObjGen = 8,
  ObjClassn3Vcc_Bicycle = 9,
  ObjClassn3Vcc_VehOfUkwnClass = 10
} ObjClassn3Vcc;

#endif

// Custom Type definition for MATLAB Function: '<S38>/obstacle_choice1'
#ifndef struct_tag_sL6LJlPlxhdTxZzXh5NTaQC
#define struct_tag_sL6LJlPlxhdTxZzXh5NTaQC

struct tag_sL6LJlPlxhdTxZzXh5NTaQC
{
  int32_T intNumBits;
};

#endif                                 //struct_tag_sL6LJlPlxhdTxZzXh5NTaQC

#ifndef typedef_sL6LJlPlxhdTxZzXh5NTaQC_St_type
#define typedef_sL6LJlPlxhdTxZzXh5NTaQC_St_type

typedef struct tag_sL6LJlPlxhdTxZzXh5NTaQC sL6LJlPlxhdTxZzXh5NTaQC_St_type;

#endif                                 //typedef_sL6LJlPlxhdTxZzXh5NTaQC_St_type

#include <stdio.h>

// Custom Type definition for MATLAB Function: '<S15>/SamplePathWaypoints'
#ifndef struct_tag_saW8qY5LTG06Wo400tp6avH
#define struct_tag_saW8qY5LTG06Wo400tp6avH

struct tag_saW8qY5LTG06Wo400tp6avH
{
  real32_T width;
};

#endif                                 //struct_tag_saW8qY5LTG06Wo400tp6avH

#ifndef typedef_saW8qY5LTG06Wo400tp6avH_St_type
#define typedef_saW8qY5LTG06Wo400tp6avH_St_type

typedef struct tag_saW8qY5LTG06Wo400tp6avH saW8qY5LTG06Wo400tp6avH_St_type;

#endif                                 //typedef_saW8qY5LTG06Wo400tp6avH_St_type

// Custom Type definition for MATLAB Function: '<S55>/CreateReference_line_info' 
#ifndef struct_tag_s4wYhnUSlelbpD7isquwqiC
#define struct_tag_s4wYhnUSlelbpD7isquwqiC

struct tag_s4wYhnUSlelbpD7isquwqiC
{
  uint8_T Id;
  boolean_T IsVirtual;
  int8_T Type;
  point Position;
  real32_T Heading;
  real32_T Speed;
  real32_T Width;
  real32_T Length;
  boolean_T IsStill;
  Prediction_Trajectory Trajectory;
  sl_boundary perception_sl;
  boolean_T HasLongitudinalDecision;
  lateral_decision LongitudinalDecision;
  boolean_T HasLateralDecision;
  lateral_decision LateralDecision;
};

#endif                                 //struct_tag_s4wYhnUSlelbpD7isquwqiC

#ifndef typedef_s4wYhnUSlelbpD7isquwqiC_St_type
#define typedef_s4wYhnUSlelbpD7isquwqiC_St_type

typedef struct tag_s4wYhnUSlelbpD7isquwqiC s4wYhnUSlelbpD7isquwqiC_St_type;

#endif                                 //typedef_s4wYhnUSlelbpD7isquwqiC_St_type

#ifndef struct_tag_suOxrnLHOENlu82OHDP6qyF
#define struct_tag_suOxrnLHOENlu82OHDP6qyF

struct tag_suOxrnLHOENlu82OHDP6qyF
{
  uint8_T valid_num;
  s4wYhnUSlelbpD7isquwqiC_St_type obstacles[50];
};

#endif                                 //struct_tag_suOxrnLHOENlu82OHDP6qyF

#ifndef typedef_suOxrnLHOENlu82OHDP6qyF_St_type
#define typedef_suOxrnLHOENlu82OHDP6qyF_St_type

typedef struct tag_suOxrnLHOENlu82OHDP6qyF suOxrnLHOENlu82OHDP6qyF_St_type;

#endif                                 //typedef_suOxrnLHOENlu82OHDP6qyF_St_type

#ifndef struct_tag_siMR73UC0cJeaWpbVNaaRa
#define struct_tag_siMR73UC0cJeaWpbVNaaRa

struct tag_siMR73UC0cJeaWpbVNaaRa
{
  boolean_T isChangeLine;
  boolean_T is_on_reference_line;
  planning_target Planning_Target;
  sl_boundary AdcSlBoundary;
  ReferenceLine_Mt reference_line;
  Trajectory_ref Trajectory;
  suOxrnLHOENlu82OHDP6qyF_St_type path_obstacles;
  real32_T trajectoryLength;
  real32_T cost;
  boolean_T Driveable;
  real32_T Prioritycost;
  boolean_T is_init;
};

#endif                                 //struct_tag_siMR73UC0cJeaWpbVNaaRa

#ifndef typedef_siMR73UC0cJeaWpbVNaaRa_Std_type
#define typedef_siMR73UC0cJeaWpbVNaaRa_Std_type

typedef struct tag_siMR73UC0cJeaWpbVNaaRa siMR73UC0cJeaWpbVNaaRa_Std_type;

#endif                                 //typedef_siMR73UC0cJeaWpbVNaaRa_Std_type

// Custom Type definition for MATLAB Function: '<S33>/MATLAB Function'
#ifndef struct_tag_sLsjm2n2Vhb4tLHZI2hoeyF
#define struct_tag_sLsjm2n2Vhb4tLHZI2hoeyF

struct tag_sLsjm2n2Vhb4tLHZI2hoeyF
{
  uint8_T Id;
  point position;
  real32_T length;
  real32_T width;
  real32_T height;
};

#endif                                 //struct_tag_sLsjm2n2Vhb4tLHZI2hoeyF

#ifndef typedef_sLsjm2n2Vhb4tLHZI2hoeyF_St_type
#define typedef_sLsjm2n2Vhb4tLHZI2hoeyF_St_type

typedef struct tag_sLsjm2n2Vhb4tLHZI2hoeyF sLsjm2n2Vhb4tLHZI2hoeyF_St_type;

#endif                                 //typedef_sLsjm2n2Vhb4tLHZI2hoeyF_St_type

#ifndef struct_tag_sEEU9IkfmxEG7PaSeYZ8BdG
#define struct_tag_sEEU9IkfmxEG7PaSeYZ8BdG

struct tag_sEEU9IkfmxEG7PaSeYZ8BdG
{
  uint8_T valid_num;
  sLsjm2n2Vhb4tLHZI2hoeyF_St_type Obstacles[18];
};

#endif                                 //struct_tag_sEEU9IkfmxEG7PaSeYZ8BdG

#ifndef typedef_sEEU9IkfmxEG7PaSeYZ8BdG_St_type
#define typedef_sEEU9IkfmxEG7PaSeYZ8BdG_St_type

typedef struct tag_sEEU9IkfmxEG7PaSeYZ8BdG sEEU9IkfmxEG7PaSeYZ8BdG_St_type;

#endif                                 //typedef_sEEU9IkfmxEG7PaSeYZ8BdG_St_type

// Custom Type definition for MATLAB Function: '<S55>/CreateReference_line_info' 
#ifndef typedef_PathDecision_StdPlanningCo_type
#define typedef_PathDecision_StdPlanningCo_type

typedef struct {
  suOxrnLHOENlu82OHDP6qyF_St_type path_obstacles;
} PathDecision_StdPlanningCo_type;

#endif                                 //typedef_PathDecision_StdPlanningCo_type

#ifndef typedef_ReferenceLineInfo_StdPlann_type
#define typedef_ReferenceLineInfo_StdPlann_type

typedef struct {
  vehicle_state ptr_vehicle_state;
  vehicle_param ptr_vehicle_param;
  StitchingTrajectory ptr_adc_planning_point;
  ReferenceLine_Mt ptr_reference_line;
  boolean_T ptr_is_on_reference_line;
  sl_boundary ptr_adc_sl_boundary;
  PathDecision_StdPlanningCo_type *ptr_path_decision;
  uint8_T ptr_is_on_segment;
} ReferenceLineInfo_StdPlann_type;

#endif                                 //typedef_ReferenceLineInfo_StdPlann_type

// Custom Type definition for MATLAB Function: '<S72>/MATLAB Function'
#ifndef typedef_c_ConstantDecelerationTraj_type
#define typedef_c_ConstantDecelerationTraj_type

typedef struct {
  real32_T init_s;
  real32_T init_v;
  real32_T deceleration;
  real32_T end_t;
  real32_T end_s;
} c_ConstantDecelerationTraj_type;

#endif                                 //typedef_c_ConstantDecelerationTraj_type

// Custom Type definition for MATLAB Function: '<S60>/IsObjectConsidered'
#ifndef struct_tag_sKQJemYlICwuSL36qw8pviF
#define struct_tag_sKQJemYlICwuSL36qw8pviF

struct tag_sKQJemYlICwuSL36qw8pviF
{
  uint8_T id;
  real_T relativetime;
  real32_T x;
  real32_T y;
};

#endif                                 //struct_tag_sKQJemYlICwuSL36qw8pviF

#ifndef typedef_sKQJemYlICwuSL36qw8pviF_St_type
#define typedef_sKQJemYlICwuSL36qw8pviF_St_type

typedef struct tag_sKQJemYlICwuSL36qw8pviF sKQJemYlICwuSL36qw8pviF_St_type;

#endif                                 //typedef_sKQJemYlICwuSL36qw8pviF_St_type

// Custom Type definition for MATLAB Function: '<S72>/MATLAB Function'
#ifndef struct_tag_sIrjJyAYxwJPwTJgHTE1w1E
#define struct_tag_sIrjJyAYxwJPwTJgHTE1w1E

struct tag_sIrjJyAYxwJPwTJgHTE1w1E
{
  real_T relativetime;
  real32_T theta;
  real32_T x;
  real32_T y;
  real32_T length;
  real32_T width;
};

#endif                                 //struct_tag_sIrjJyAYxwJPwTJgHTE1w1E

#ifndef typedef_sIrjJyAYxwJPwTJgHTE1w1E_St_type
#define typedef_sIrjJyAYxwJPwTJgHTE1w1E_St_type

typedef struct tag_sIrjJyAYxwJPwTJgHTE1w1E sIrjJyAYxwJPwTJgHTE1w1E_St_type;

#endif                                 //typedef_sIrjJyAYxwJPwTJgHTE1w1E_St_type

#ifndef struct_tag_sFd0BgoFeaQNbs22E4k80dD
#define struct_tag_sFd0BgoFeaQNbs22E4k80dD

struct tag_sFd0BgoFeaQNbs22E4k80dD
{
  real32_T center_x;
  real32_T center_y;
  real32_T cos_heading;
  real32_T sin_heading;
  real32_T half_length;
  real32_T half_width;
};

#endif                                 //struct_tag_sFd0BgoFeaQNbs22E4k80dD

#ifndef typedef_sFd0BgoFeaQNbs22E4k80dD_St_type
#define typedef_sFd0BgoFeaQNbs22E4k80dD_St_type

typedef struct tag_sFd0BgoFeaQNbs22E4k80dD sFd0BgoFeaQNbs22E4k80dD_St_type;

#endif                                 //typedef_sFd0BgoFeaQNbs22E4k80dD_St_type

// Custom Type definition for MATLAB Function: '<S69>/trajectory_evaluation'
#ifndef struct_tag_s09q3OYszdlzgdsZ4DCY50B
#define struct_tag_s09q3OYszdlzgdsZ4DCY50B

struct tag_s09q3OYszdlzgdsZ4DCY50B
{
  real32_T lon_objective_cost;
  real32_T lon_jerk_cost;
  real32_T lon_collision_cost;
  real32_T lat_offset_cost;
  real32_T centripetal_acc_cost;
  real32_T lat_comfort_cost;
};

#endif                                 //struct_tag_s09q3OYszdlzgdsZ4DCY50B

#ifndef typedef_s09q3OYszdlzgdsZ4DCY50B_St_type
#define typedef_s09q3OYszdlzgdsZ4DCY50B_St_type

typedef struct tag_s09q3OYszdlzgdsZ4DCY50B s09q3OYszdlzgdsZ4DCY50B_St_type;

#endif                                 //typedef_s09q3OYszdlzgdsZ4DCY50B_St_type

#ifndef typedef_c_PiecewiseAccelerationTra_type
#define typedef_c_PiecewiseAccelerationTra_type

typedef struct {
  real32_T s[10];
  real32_T v[10];
  real32_T a[10];
  real32_T t[10];
  uint8_T b_index;
} c_PiecewiseAccelerationTra_type;

#endif                                 //typedef_c_PiecewiseAccelerationTra_type

#ifndef typedef_d_PiecewiseAccelerationTra_type
#define typedef_d_PiecewiseAccelerationTra_type

typedef struct {
  real32_T s[10];
  real32_T v[10];
  real32_T a[10];
  real32_T t[10];
  uint8_T b_index;
} d_PiecewiseAccelerationTra_type;

#endif                                 //typedef_d_PiecewiseAccelerationTra_type

// Custom Type definition for MATLAB Function: '<S70>/Trajectories Generation'
#ifndef struct_tag_sXSg1jd0H46ufILF8appJeH
#define struct_tag_sXSg1jd0H46ufILF8appJeH

struct tag_sXSg1jd0H46ufILF8appJeH
{
  real32_T lon[3];
  real32_T lat[3];
};

#endif                                 //struct_tag_sXSg1jd0H46ufILF8appJeH

#ifndef typedef_sXSg1jd0H46ufILF8appJeH_St_type
#define typedef_sXSg1jd0H46ufILF8appJeH_St_type

typedef struct tag_sXSg1jd0H46ufILF8appJeH sXSg1jd0H46ufILF8appJeH_St_type;

#endif                                 //typedef_sXSg1jd0H46ufILF8appJeH_St_type

#ifndef struct_tag_s3HBXmWKnyeAxOkgr8VIlRG
#define struct_tag_s3HBXmWKnyeAxOkgr8VIlRG

struct tag_s3HBXmWKnyeAxOkgr8VIlRG
{
  real32_T s;
  real32_T t;
};

#endif                                 //struct_tag_s3HBXmWKnyeAxOkgr8VIlRG

#ifndef typedef_s3HBXmWKnyeAxOkgr8VIlRG_St_type
#define typedef_s3HBXmWKnyeAxOkgr8VIlRG_St_type

typedef struct tag_s3HBXmWKnyeAxOkgr8VIlRG s3HBXmWKnyeAxOkgr8VIlRG_St_type;

#endif                                 //typedef_s3HBXmWKnyeAxOkgr8VIlRG_St_type

#ifndef struct_tag_sq8J6W32wNqkNlD0jmNtVoF
#define struct_tag_sq8J6W32wNqkNlD0jmNtVoF

struct tag_sq8J6W32wNqkNlD0jmNtVoF
{
  uint8_T obstacle_id;
  s3HBXmWKnyeAxOkgr8VIlRG_St_type mutable_bottom_left;
  s3HBXmWKnyeAxOkgr8VIlRG_St_type mutable_bottom_right;
  s3HBXmWKnyeAxOkgr8VIlRG_St_type mutable_upper_left;
  s3HBXmWKnyeAxOkgr8VIlRG_St_type mutable_upper_right;
};

#endif                                 //struct_tag_sq8J6W32wNqkNlD0jmNtVoF

#ifndef typedef_sq8J6W32wNqkNlD0jmNtVoF_St_type
#define typedef_sq8J6W32wNqkNlD0jmNtVoF_St_type

typedef struct tag_sq8J6W32wNqkNlD0jmNtVoF sq8J6W32wNqkNlD0jmNtVoF_St_type;

#endif                                 //typedef_sq8J6W32wNqkNlD0jmNtVoF_St_type

#ifndef struct_tag_sMSC63LSJPkSPf46ec38qnB
#define struct_tag_sMSC63LSJPkSPf46ec38qnB

struct tag_sMSC63LSJPkSPf46ec38qnB
{
  uint8_T obstacle_id;
  real32_T path_lower;
  real32_T path_upper;
  real32_T time_lower;
  real32_T time_upper;
  s3HBXmWKnyeAxOkgr8VIlRG_St_type bottom_left;
  s3HBXmWKnyeAxOkgr8VIlRG_St_type bottom_right;
  s3HBXmWKnyeAxOkgr8VIlRG_St_type upper_left;
  s3HBXmWKnyeAxOkgr8VIlRG_St_type upper_right;
};

#endif                                 //struct_tag_sMSC63LSJPkSPf46ec38qnB

#ifndef typedef_sMSC63LSJPkSPf46ec38qnB_St_type
#define typedef_sMSC63LSJPkSPf46ec38qnB_St_type

typedef struct tag_sMSC63LSJPkSPf46ec38qnB sMSC63LSJPkSPf46ec38qnB_St_type;

#endif                                 //typedef_sMSC63LSJPkSPf46ec38qnB_St_type

#ifndef struct_tag_shHFqUxu9qkVemK9Z4i2LPF
#define struct_tag_shHFqUxu9qkVemK9Z4i2LPF

struct tag_shHFqUxu9qkVemK9Z4i2LPF
{
  uint8_T obstacle_id;
  real32_T t;
  real32_T s;
};

#endif                                 //struct_tag_shHFqUxu9qkVemK9Z4i2LPF

#ifndef typedef_shHFqUxu9qkVemK9Z4i2LPF_St_type
#define typedef_shHFqUxu9qkVemK9Z4i2LPF_St_type

typedef struct tag_shHFqUxu9qkVemK9Z4i2LPF shHFqUxu9qkVemK9Z4i2LPF_St_type;

#endif                                 //typedef_shHFqUxu9qkVemK9Z4i2LPF_St_type

#ifndef typedef_PathTimeGraph_StdPlanningC_type
#define typedef_PathTimeGraph_StdPlanningC_type

typedef struct {
  sq8J6W32wNqkNlD0jmNtVoF_St_type path_time_obstacle_map[32];
  sMSC63LSJPkSPf46ec38qnB_St_type path_time_obstacles;
} PathTimeGraph_StdPlanningC_type;

#endif                                 //typedef_PathTimeGraph_StdPlanningC_type

// Custom Type definition for MATLAB Function: '<S27>/Predictor'
#ifndef struct_tag_s6MSuTrkULAtLxgjqpKevbG
#define struct_tag_s6MSuTrkULAtLxgjqpKevbG

struct tag_s6MSuTrkULAtLxgjqpKevbG
{
  real32_T x;
  real32_T y;
  real32_T z;
  real32_T theta;
  real32_T speed;
  real32_T acc;
  real32_T relative_time;
};

#endif                                 //struct_tag_s6MSuTrkULAtLxgjqpKevbG

#ifndef typedef_s6MSuTrkULAtLxgjqpKevbG_St_type
#define typedef_s6MSuTrkULAtLxgjqpKevbG_St_type

typedef struct tag_s6MSuTrkULAtLxgjqpKevbG s6MSuTrkULAtLxgjqpKevbG_St_type;

#endif                                 //typedef_s6MSuTrkULAtLxgjqpKevbG_St_type

// Custom Type definition for MATLAB Function: '<S33>/MATLAB Function'
#ifndef struct_tag_sBVzk2LKtCQPBcwZyr4xe6C
#define struct_tag_sBVzk2LKtCQPBcwZyr4xe6C

struct tag_sBVzk2LKtCQPBcwZyr4xe6C
{
  boolean_T enable_pull_over;
  real32_T stop_distance;
  real32_T pull_over_plan_distance;
};

#endif                                 //struct_tag_sBVzk2LKtCQPBcwZyr4xe6C

#ifndef typedef_sBVzk2LKtCQPBcwZyr4xe6C_St_type
#define typedef_sBVzk2LKtCQPBcwZyr4xe6C_St_type

typedef struct tag_sBVzk2LKtCQPBcwZyr4xe6C sBVzk2LKtCQPBcwZyr4xe6C_St_type;

#endif                                 //typedef_sBVzk2LKtCQPBcwZyr4xe6C_St_type

#ifndef struct_tag_sHMN3VhZNRfeeF1tfUTtYR
#define struct_tag_sHMN3VhZNRfeeF1tfUTtYR

struct tag_sHMN3VhZNRfeeF1tfUTtYR
{
  uint8_T rule_id;
  boolean_T enabled;
  sBVzk2LKtCQPBcwZyr4xe6C_St_type destination;
};

#endif                                 //struct_tag_sHMN3VhZNRfeeF1tfUTtYR

#ifndef typedef_sHMN3VhZNRfeeF1tfUTtYR_Std_type
#define typedef_sHMN3VhZNRfeeF1tfUTtYR_Std_type

typedef struct tag_sHMN3VhZNRfeeF1tfUTtYR sHMN3VhZNRfeeF1tfUTtYR_Std_type;

#endif                                 //typedef_sHMN3VhZNRfeeF1tfUTtYR_Std_type

#ifndef struct_tag_sOtOqH2ZAFa1x1nQc5DyIKD
#define struct_tag_sOtOqH2ZAFa1x1nQc5DyIKD

struct tag_sOtOqH2ZAFa1x1nQc5DyIKD
{
  real32_T x;
  real32_T y;
  real32_T z;
};

#endif                                 //struct_tag_sOtOqH2ZAFa1x1nQc5DyIKD

#ifndef typedef_sOtOqH2ZAFa1x1nQc5DyIKD_St_type
#define typedef_sOtOqH2ZAFa1x1nQc5DyIKD_St_type

typedef struct tag_sOtOqH2ZAFa1x1nQc5DyIKD sOtOqH2ZAFa1x1nQc5DyIKD_St_type;

#endif                                 //typedef_sOtOqH2ZAFa1x1nQc5DyIKD_St_type

#ifndef struct_tag_ssfG6RtM3LisQKauSo07xzE
#define struct_tag_ssfG6RtM3LisQKauSo07xzE

struct tag_ssfG6RtM3LisQKauSo07xzE
{
  char_T type;
  sOtOqH2ZAFa1x1nQc5DyIKD_St_type stop_point;
  real32_T stop_heading;
  real32_T distance_s;
  uint8_T reason_code;
};

#endif                                 //struct_tag_ssfG6RtM3LisQKauSo07xzE

#ifndef typedef_ssfG6RtM3LisQKauSo07xzE_St_type
#define typedef_ssfG6RtM3LisQKauSo07xzE_St_type

typedef struct tag_ssfG6RtM3LisQKauSo07xzE ssfG6RtM3LisQKauSo07xzE_St_type;

#endif                                 //typedef_ssfG6RtM3LisQKauSo07xzE_St_type

#ifndef struct_tag_sLSBmkg6IbvChMkfJ0iJlpB
#define struct_tag_sLSBmkg6IbvChMkfJ0iJlpB

struct tag_sLSBmkg6IbvChMkfJ0iJlpB
{
  boolean_T enabled;
  real32_T min_boundary_s;
  real32_T stop_distance;
  real32_T speed_limit;
};

#endif                                 //struct_tag_sLSBmkg6IbvChMkfJ0iJlpB

#ifndef typedef_sLSBmkg6IbvChMkfJ0iJlpB_St_type
#define typedef_sLSBmkg6IbvChMkfJ0iJlpB_St_type

typedef struct tag_sLSBmkg6IbvChMkfJ0iJlpB sLSBmkg6IbvChMkfJ0iJlpB_St_type;

#endif                                 //typedef_sLSBmkg6IbvChMkfJ0iJlpB_St_type

#ifndef struct_tag_sSaLg4kCAOyyBKqqC6IxCuC
#define struct_tag_sSaLg4kCAOyyBKqqC6IxCuC

struct tag_sSaLg4kCAOyyBKqqC6IxCuC
{
  uint8_T id;
  uint8_T color;
  uint8_T confidence;
  real32_T tracking_time;
};

#endif                                 //struct_tag_sSaLg4kCAOyyBKqqC6IxCuC

#ifndef typedef_sSaLg4kCAOyyBKqqC6IxCuC_St_type
#define typedef_sSaLg4kCAOyyBKqqC6IxCuC_St_type

typedef struct tag_sSaLg4kCAOyyBKqqC6IxCuC sSaLg4kCAOyyBKqqC6IxCuC_St_type;

#endif                                 //typedef_sSaLg4kCAOyyBKqqC6IxCuC_St_type

#ifndef struct_tag_sO4N9lwUrmGz3ysNzhAmwTF
#define struct_tag_sO4N9lwUrmGz3ysNzhAmwTF

struct tag_sO4N9lwUrmGz3ysNzhAmwTF
{
  uint8_T object_id;
  real32_T start_s;
  real32_T end_s;
};

#endif                                 //struct_tag_sO4N9lwUrmGz3ysNzhAmwTF

#ifndef typedef_sO4N9lwUrmGz3ysNzhAmwTF_St_type
#define typedef_sO4N9lwUrmGz3ysNzhAmwTF_St_type

typedef struct tag_sO4N9lwUrmGz3ysNzhAmwTF sO4N9lwUrmGz3ysNzhAmwTF_St_type;

#endif                                 //typedef_sO4N9lwUrmGz3ysNzhAmwTF_St_type

#ifndef struct_tag_sOFeU4W5dTQmaMVjzgvhbPH
#define struct_tag_sOFeU4W5dTQmaMVjzgvhbPH

struct tag_sOFeU4W5dTQmaMVjzgvhbPH
{
  sSaLg4kCAOyyBKqqC6IxCuC_St_type traffic_light[2];
};

#endif                                 //struct_tag_sOFeU4W5dTQmaMVjzgvhbPH

#ifndef typedef_sOFeU4W5dTQmaMVjzgvhbPH_St_type
#define typedef_sOFeU4W5dTQmaMVjzgvhbPH_St_type

typedef struct tag_sOFeU4W5dTQmaMVjzgvhbPH sOFeU4W5dTQmaMVjzgvhbPH_St_type;

#endif                                 //typedef_sOFeU4W5dTQmaMVjzgvhbPH_St_type

#ifndef struct_tag_sNugPOLeMytjl0A3PJicAWH
#define struct_tag_sNugPOLeMytjl0A3PJicAWH

struct tag_sNugPOLeMytjl0A3PJicAWH
{
  real_T GetDelaySec;
  sOFeU4W5dTQmaMVjzgvhbPH_St_type GetLatestObserved;
};

#endif                                 //struct_tag_sNugPOLeMytjl0A3PJicAWH

#ifndef typedef_sNugPOLeMytjl0A3PJicAWH_St_type
#define typedef_sNugPOLeMytjl0A3PJicAWH_St_type

typedef struct tag_sNugPOLeMytjl0A3PJicAWH sNugPOLeMytjl0A3PJicAWH_St_type;

#endif                                 //typedef_sNugPOLeMytjl0A3PJicAWH_St_type

#ifndef typedef_Destination_StdPlanningCor_type
#define typedef_Destination_StdPlanningCor_type

typedef struct {
  sHMN3VhZNRfeeF1tfUTtYR_Std_type config;
  ssfG6RtM3LisQKauSo07xzE_St_type decision;
  StationLocation_Mt routing_end;
} Destination_StdPlanningCor_type;

#endif                                 //typedef_Destination_StdPlanningCor_type

#ifndef typedef_PathDecision_StdPlanning_j_type
#define typedef_PathDecision_StdPlanning_j_type

typedef struct {
  path_obstacles_Mt path_obstacles;
} PathDecision_StdPlanning_j_type;

#endif                                 //typedef_PathDecision_StdPlanning_j_type

#ifndef struct_tag_szVQE3vHRf6qUMYXAXYyL7E
#define struct_tag_szVQE3vHRf6qUMYXAXYyL7E

struct tag_szVQE3vHRf6qUMYXAXYyL7E
{
  real32_T stop_distance;
  real32_T c_min_reference_line_remain_len;
};

#endif                                 //struct_tag_szVQE3vHRf6qUMYXAXYyL7E

#ifndef typedef_szVQE3vHRf6qUMYXAXYyL7E_St_type
#define typedef_szVQE3vHRf6qUMYXAXYyL7E_St_type

typedef struct tag_szVQE3vHRf6qUMYXAXYyL7E szVQE3vHRf6qUMYXAXYyL7E_St_type;

#endif                                 //typedef_szVQE3vHRf6qUMYXAXYyL7E_St_type

#ifndef struct_tag_szKiOEBF1RVIuAVKais0FEC
#define struct_tag_szKiOEBF1RVIuAVKais0FEC

struct tag_szKiOEBF1RVIuAVKais0FEC
{
  uint8_T rule_id;
  boolean_T enabled;
  szVQE3vHRf6qUMYXAXYyL7E_St_type reference_line_end;
};

#endif                                 //struct_tag_szKiOEBF1RVIuAVKais0FEC

#ifndef typedef_szKiOEBF1RVIuAVKais0FEC_St_type
#define typedef_szKiOEBF1RVIuAVKais0FEC_St_type

typedef struct tag_szKiOEBF1RVIuAVKais0FEC szKiOEBF1RVIuAVKais0FEC_St_type;

#endif                                 //typedef_szKiOEBF1RVIuAVKais0FEC_St_type

#ifndef typedef_ReferenceLineEnd_StdPlanni_type
#define typedef_ReferenceLineEnd_StdPlanni_type

typedef struct {
  szKiOEBF1RVIuAVKais0FEC_St_type config;
} ReferenceLineEnd_StdPlanni_type;

#endif                                 //typedef_ReferenceLineEnd_StdPlanni_type

#ifndef struct_tag_sxxJmpA32FpahRzmESl2RjG
#define struct_tag_sxxJmpA32FpahRzmESl2RjG

struct tag_sxxJmpA32FpahRzmESl2RjG
{
  uint8_T valid_num;
  sSaLg4kCAOyyBKqqC6IxCuC_St_type b_signal[4];
};

#endif                                 //struct_tag_sxxJmpA32FpahRzmESl2RjG

#ifndef typedef_sxxJmpA32FpahRzmESl2RjG_St_type
#define typedef_sxxJmpA32FpahRzmESl2RjG_St_type

typedef struct tag_sxxJmpA32FpahRzmESl2RjG sxxJmpA32FpahRzmESl2RjG_St_type;

#endif                                 //typedef_sxxJmpA32FpahRzmESl2RjG_St_type

#ifndef struct_tag_shrNRnTxFOwq1yinsvhc3lG
#define struct_tag_shrNRnTxFOwq1yinsvhc3lG

struct tag_shrNRnTxFOwq1yinsvhc3lG
{
  real32_T stop_distance;
  real32_T max_stop_deceleration;
  real32_T min_pass_s_distance;
  real32_T c_max_stop_deceleration_yellow_;
  real32_T signal_expire_time_sec;
  sLSBmkg6IbvChMkfJ0iJlpB_St_type right_turn_creep;
};

#endif                                 //struct_tag_shrNRnTxFOwq1yinsvhc3lG

#ifndef typedef_shrNRnTxFOwq1yinsvhc3lG_St_type
#define typedef_shrNRnTxFOwq1yinsvhc3lG_St_type

typedef struct tag_shrNRnTxFOwq1yinsvhc3lG shrNRnTxFOwq1yinsvhc3lG_St_type;

#endif                                 //typedef_shrNRnTxFOwq1yinsvhc3lG_St_type

#ifndef struct_tag_s80HlDuPnFdrUNHI1iWOIwD
#define struct_tag_s80HlDuPnFdrUNHI1iWOIwD

struct tag_s80HlDuPnFdrUNHI1iWOIwD
{
  uint8_T rule_id;
  boolean_T enabled;
  shrNRnTxFOwq1yinsvhc3lG_St_type signal_light;
};

#endif                                 //struct_tag_s80HlDuPnFdrUNHI1iWOIwD

#ifndef typedef_s80HlDuPnFdrUNHI1iWOIwD_St_type
#define typedef_s80HlDuPnFdrUNHI1iWOIwD_St_type

typedef struct tag_s80HlDuPnFdrUNHI1iWOIwD s80HlDuPnFdrUNHI1iWOIwD_St_type;

#endif                                 //typedef_s80HlDuPnFdrUNHI1iWOIwD_St_type

#ifndef struct_tag_sSuPNSjwiym0LACwWCDZjbE
#define struct_tag_sSuPNSjwiym0LACwWCDZjbE

struct tag_sSuPNSjwiym0LACwWCDZjbE
{
  uint8_T valid_num;
  sO4N9lwUrmGz3ysNzhAmwTF_St_type b_signal;
};

#endif                                 //struct_tag_sSuPNSjwiym0LACwWCDZjbE

#ifndef typedef_sSuPNSjwiym0LACwWCDZjbE_St_type
#define typedef_sSuPNSjwiym0LACwWCDZjbE_St_type

typedef struct tag_sSuPNSjwiym0LACwWCDZjbE sSuPNSjwiym0LACwWCDZjbE_St_type;

#endif                                 //typedef_sSuPNSjwiym0LACwWCDZjbE_St_type

#ifndef struct_tag_sngtUq4DvfJb2WgNit5vwsC
#define struct_tag_sngtUq4DvfJb2WgNit5vwsC

struct tag_sngtUq4DvfJb2WgNit5vwsC
{
  uint8_T valid_num;
  sO4N9lwUrmGz3ysNzhAmwTF_St_type b_signal[4];
};

#endif                                 //struct_tag_sngtUq4DvfJb2WgNit5vwsC

#ifndef typedef_sngtUq4DvfJb2WgNit5vwsC_St_type
#define typedef_sngtUq4DvfJb2WgNit5vwsC_St_type

typedef struct tag_sngtUq4DvfJb2WgNit5vwsC sngtUq4DvfJb2WgNit5vwsC_St_type;

#endif                                 //typedef_sngtUq4DvfJb2WgNit5vwsC_St_type

#ifndef typedef_SignalLight_StdPlanningCor_type
#define typedef_SignalLight_StdPlanningCor_type

typedef struct {
  s80HlDuPnFdrUNHI1iWOIwD_St_type config;
  sxxJmpA32FpahRzmESl2RjG_St_type detected_signals;
  vehicle_state ptr_vehicle_state;
  sSuPNSjwiym0LACwWCDZjbE_St_type signal_lights;
  sngtUq4DvfJb2WgNit5vwsC_St_type signal_lights_from_path;
} SignalLight_StdPlanningCor_type;

#endif                                 //typedef_SignalLight_StdPlanningCor_type

// Custom Type definition for MATLAB Function: '<S38>/ScenarioChoice'
#ifndef struct_tag_skpuzt1C65doCxfxHlS5GtE
#define struct_tag_skpuzt1C65doCxfxHlS5GtE

struct tag_skpuzt1C65doCxfxHlS5GtE
{
  real32_T DistanceToSEndThr;
  real32_T TurnCurThr;
  real32_T TurnTimeThr;
  real32_T RearWearningTime;
  real32_T RearTimeExpect;
  real32_T FrontFuncA0;
  real32_T FrontFuncA1;
  real32_T FrontFuncA2;
  real32_T FrontFuncA3;
  real32_T RearFuncB0;
  real32_T RearFuncK0;
  real32_T TimeCostUpSat;
  real32_T TimeCostDownSat;
  real32_T ObjCostThr;
};

#endif                                 //struct_tag_skpuzt1C65doCxfxHlS5GtE

#ifndef typedef_skpuzt1C65doCxfxHlS5GtE_St_type
#define typedef_skpuzt1C65doCxfxHlS5GtE_St_type

typedef struct tag_skpuzt1C65doCxfxHlS5GtE skpuzt1C65doCxfxHlS5GtE_St_type;

#endif                                 //typedef_skpuzt1C65doCxfxHlS5GtE_St_type

// Custom Type definition for MATLAB Function: '<S69>/trajectory_evaluation'
#ifndef struct_tag_saVrHLLel0leFVt4C7H3bmF
#define struct_tag_saVrHLLel0leFVt4C7H3bmF

struct tag_saVrHLLel0leFVt4C7H3bmF
{
  real32_T ID_List[81];
  real32_T leng;
};

#endif                                 //struct_tag_saVrHLLel0leFVt4C7H3bmF

#ifndef typedef_saVrHLLel0leFVt4C7H3bmF_St_type
#define typedef_saVrHLLel0leFVt4C7H3bmF_St_type

typedef struct tag_saVrHLLel0leFVt4C7H3bmF saVrHLLel0leFVt4C7H3bmF_St_type;

#endif                                 //typedef_saVrHLLel0leFVt4C7H3bmF_St_type

// Custom Type definition for MATLAB Function: '<S70>/Trajectories Generation'
#ifndef typedef_EndConditionSampler_StdPla_type
#define typedef_EndConditionSampler_StdPla_type

typedef struct {
  PathTimeGraph_StdPlanningC_type *ptr_path_time_graph;
  uint8_T sample_index;
  real32_T sample_point[144];
  boolean_T Flag_PathTimeObstacleSample;
} EndConditionSampler_StdPla_type;

#endif                                 //typedef_EndConditionSampler_StdPla_type

// Custom Type definition for MATLAB Function: '<S33>/MATLAB Function'
#ifndef struct_tag_szcBjmENAO1Z75rgPlCpAiD
#define struct_tag_szcBjmENAO1Z75rgPlCpAiD

struct tag_szcBjmENAO1Z75rgPlCpAiD
{
  sHMN3VhZNRfeeF1tfUTtYR_Std_type config;
  char_T name[11];
};

#endif                                 //struct_tag_szcBjmENAO1Z75rgPlCpAiD

#ifndef typedef_szcBjmENAO1Z75rgPlCpAiD_St_type
#define typedef_szcBjmENAO1Z75rgPlCpAiD_St_type

typedef struct tag_szcBjmENAO1Z75rgPlCpAiD szcBjmENAO1Z75rgPlCpAiD_St_type;

#endif                                 //typedef_szcBjmENAO1Z75rgPlCpAiD_St_type

#ifndef struct_tag_sdDhdolzPOCapIv9GScY7s
#define struct_tag_sdDhdolzPOCapIv9GScY7s

struct tag_sdDhdolzPOCapIv9GScY7s
{
  s80HlDuPnFdrUNHI1iWOIwD_St_type config;
  char_T name[12];
};

#endif                                 //struct_tag_sdDhdolzPOCapIv9GScY7s

#ifndef typedef_sdDhdolzPOCapIv9GScY7s_Std_type
#define typedef_sdDhdolzPOCapIv9GScY7s_Std_type

typedef struct tag_sdDhdolzPOCapIv9GScY7s sdDhdolzPOCapIv9GScY7s_Std_type;

#endif                                 //typedef_sdDhdolzPOCapIv9GScY7s_Std_type

#ifndef struct_tag_spfOxIWGBgnKhVHIn8XjCUG
#define struct_tag_spfOxIWGBgnKhVHIn8XjCUG

struct tag_spfOxIWGBgnKhVHIn8XjCUG
{
  szKiOEBF1RVIuAVKais0FEC_St_type config;
  char_T name[18];
};

#endif                                 //struct_tag_spfOxIWGBgnKhVHIn8XjCUG

#ifndef typedef_spfOxIWGBgnKhVHIn8XjCUG_St_type
#define typedef_spfOxIWGBgnKhVHIn8XjCUG_St_type

typedef struct tag_spfOxIWGBgnKhVHIn8XjCUG spfOxIWGBgnKhVHIn8XjCUG_St_type;

#endif                                 //typedef_spfOxIWGBgnKhVHIn8XjCUG_St_type

// Forward declaration for rtModel
typedef struct tag_RTM_StdPlanningCore_type RT_MODEL_StdPlanningCore_type;

#endif                                 // RTW_HEADER_StdPlanningCore_types_h_

//
// File trailer for generated code.
//
// [EOF]
//
