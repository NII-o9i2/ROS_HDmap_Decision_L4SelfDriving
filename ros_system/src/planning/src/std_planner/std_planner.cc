/******************************************************************************
 * Copyright 2019 The Zibet Authors. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *****************************************************************************/

#include "std_planner.h"

#include <fstream>
#include <utility>

const char *RT_MEMORY_ALLOCATION_ERROR = "memory allocation error"; 
namespace planning {


void StdPlanner::SetLocation(const locationsim_msgs::LOCATIONSIM& msgs){
  location_ = msgs;
}

void StdPlanner::SetHdmap(const ytthdmap_msgs::HdmapYtt& msgs){
  hdmap_ = msgs;
}

StdPlanner::StdPlanner() {
  planning_core_ = StdPlanningCore();
  StdPlanningCore_initialize(planning_core_);
}

StdPlanner::~StdPlanner() {

  StdPlanningCore_terminate(planning_core_);
}

void StdPlanner:: GetLocalizationInfo(const locationsim_msgs::LOCATIONSIM& localization){
  auto &input = planning_core_->inputs->localization_YTT;
  input.position_x = localization.position_x;
  input.position_y = localization.position_y;
  input.position_yaw = localization.positon_yaw;
  input.velocity = localization.velocity;
}
void StdPlanner:: GetHdmapInfo(const ytthdmap_msgs::HdmapYtt& map){
  auto &input = planning_core_->inputs->HD_MAP_n;
  input.curlane = map.curlane;
  input.istunnel = map.istunnel;
  input.isvalidlane = map.isValidlane;
  for(int i = 0;i<5;i++){
    input.laneInfo[i].type = map.laneinfo[i].type;
    input.laneInfo[i].width = map.laneinfo[i].width;
    input.laneInfo[i].IsPartofRouting =map.laneinfo[i].IsPartofRouting;
    input.laneInfo[i].direction =map.laneinfo[i].direction;
    input.laneInfo[i].id =map.laneinfo[i].id;
    input.laneInfo[i].length =map.laneinfo[i].length;   
    //centerline 
    input.laneInfo[i].centerline.type = map.laneinfo[i].centerline.type;
    //input.laneInfo[i].centerline.linetype = map.laneinfo[i].centerline.linetype;
    input.laneInfo[i].centerline.pointnum = map.laneinfo[i].centerline.pointnum;
    for(int j=0;j<100;j++){
      input.laneInfo[i].centerline.point[j].x = map.laneinfo[i].centerline.point[j].x;
      input.laneInfo[i].centerline.point[j].y = map.laneinfo[i].centerline.point[j].y;
      input.laneInfo[i].centerline.point[j].z = map.laneinfo[i].centerline.point[j].z;
    }
    //leftboundry 
    input.laneInfo[i].leftboundry.type = map.laneinfo[i].leftboundry.type;
    //input.laneInfo[i].leftboundry.linetype = map.laneinfo[i].leftboundry.linetype;
    input.laneInfo[i].leftboundry.pointnum = map.laneinfo[i].leftboundry.pointnum;
    for(int j=0;j<100;j++){
      input.laneInfo[i].leftboundry.point[j].x = map.laneinfo[i].leftboundry.point[j].x;
      input.laneInfo[i].leftboundry.point[j].y = map.laneinfo[i].leftboundry.point[j].y;
      input.laneInfo[i].leftboundry.point[j].z = map.laneinfo[i].leftboundry.point[j].z;
    }
    //rightboundry 
    input.laneInfo[i].rightboundry.type = map.laneinfo[i].rightboundry.type;
    //input.laneInfo[i].rightboundry.linetype = map.laneinfo[i].rightboundry.linetype;
    input.laneInfo[i].rightboundry.pointnum = map.laneinfo[i].rightboundry.pointnum;
    for(int j=0;j<100;j++){
      input.laneInfo[i].rightboundry.point[j].x = map.laneinfo[i].rightboundry.point[j].x;
      input.laneInfo[i].rightboundry.point[j].y = map.laneinfo[i].rightboundry.point[j].y;
      input.laneInfo[i].rightboundry.point[j].z = map.laneinfo[i].rightboundry.point[j].z;
    }
  }
  input.nextlaneCH = map.nextlaneCH;
  input.positionstate = map.positionstate;
  input.speedlim = map.speedlim;
  //input.stopline = map.stopline;
  input.time = map.time;
}

void StdPlanner::GetPlanningTrajectory(planning_msgs::ADCTrajectory& trajectory) {
  auto &output = planning_core_->outputs->trajectory_output;
  
  trajectory.dis_to_end = output.distance_to_terminal;
  trajectory.dis_to_cip = output.distance_to_cip;

  trajectory.is_replan = false;



  for (int i = 0; i < 800; i++) {
    planning_msgs::PathPoint ppt;
    ppt.x = output.path_point[i].x;
    ppt.y = output.path_point[i].y;
    ppt.z = output.path_point[i].z;
    ppt.velocity = output.path_point[i].velocity;
    ppt.acceleration = output.path_point[i].accel;
    ppt.time = output.path_point[i].time;
    ppt.curvature = output.path_point[i].curvature;
    ppt.curv_rate = output.path_point[i].curv_rate;
    ppt.theta = output.path_point[i].theta;
    ppt.s = output.path_point[i].s;
    ppt.l = output.path_point[i].l;
    trajectory.path_point.push_back(ppt); 
  }

  trajectory.estop = output.estop;
  trajectory.turn_signal = output.turn_light;

  //predict info
  auto &predict_output = planning_core_->outputs->trajectory_debug.Prediction_SubDebug;
  auto *predict_debug = &(trajectory.predict_debug);

  for (int i = 0; i < 32; i++) {
    predict_debug->propt[i].frenet_l = predict_output.Frenet_l[i];
    predict_debug->propt[i].frenet_s = predict_output.Frenet_s[i];
    predict_debug->propt[i].angle_diff = predict_output.Angle_diff[i];
  }

  for (int i = 0; i < 64; i++) {
    for (int j = 0; j < 10; j++) {
      predict_debug->obstacle_pred[i].prediction_x[j] = predict_output.prediction_x[i*10 + j];
      predict_debug->obstacle_pred[i].prediction_y[j] = predict_output.prediction_y[i*10 + j];
    }
    predict_debug->obstacle_pred[i].predict_method = predict_output.Prediction_Method[i];
    predict_debug->obstacle_pred[i].is_valid = predict_output.istrajectoryok[i];
  }

  for (int i = 0; i < 32; i++) {
    predict_debug->obstacle_glbl[i].enu_x = predict_output.ObstacleENU_Debug.Global_Obstacles[i].ENU_x;
    predict_debug->obstacle_glbl[i].enu_y = predict_output.ObstacleENU_Debug.Global_Obstacles[i].ENU_y;
    predict_debug->obstacle_glbl[i].enu_theta = predict_output.ObstacleENU_Debug.Global_Obstacles[i].ENU_theta;
    predict_debug->obstacle_glbl[i].enu_vx = predict_output.ObstacleENU_Debug.Global_Obstacles[i].ENU_vx;
    predict_debug->obstacle_glbl[i].enu_vy = predict_output.ObstacleENU_Debug.Global_Obstacles[i].ENU_vy;
    predict_debug->obstacle_glbl[i].enu_ax = predict_output.ObstacleENU_Debug.Global_Obstacles[i].ENU_ax;
    predict_debug->obstacle_glbl[i].enu_ay = predict_output.ObstacleENU_Debug.Global_Obstacles[i].ENU_ay;
    predict_debug->obstacle_glbl[i].confidence = predict_output.ObstacleENU_Debug.Global_Obstacles[i].confidence;
    predict_debug->obstacle_glbl[i].type = predict_output.ObstacleENU_Debug.Global_Obstacles[i].type;
    predict_debug->obstacle_glbl[i].velocity = predict_output.ObstacleENU_Debug.Global_Obstacles[i].velocity;
    predict_debug->obstacle_glbl[i].length = predict_output.ObstacleENU_Debug.Global_Obstacles[i].length;
    predict_debug->obstacle_glbl[i].width = predict_output.ObstacleENU_Debug.Global_Obstacles[i].width;
  }
}

void StdPlanner::PrintDebugInfo(planning_msgs::PlanningDebug& pdbg) {
  auto &output = planning_core_->outputs->trajectory_debug;

  pdbg.lon_objective_cost = output.lon_objective_cost;
  pdbg.lon_jerk_cost = output.lon_jerk_cost;
  pdbg.lon_collision_cost = output.lon_collision_cost;
  pdbg.lat_offset_cost = output.lat_offset_cost;
  pdbg.centripental_acc_cost = output.centripental_acc_cost;
  pdbg.lat_comfort_cost = output.lat_comfort_cost;
  pdbg.constraint_check_failure_count = output.constraint_check_failure_count;
  pdbg.collision_failure_count = output.collision_failure_count;
  pdbg.distance_planning = output.distance_planning;
  pdbg.id_shown = output.id_shown;
  pdbg.flag_path_time_obstacle_sample_shown = output.Flag_PathTimeObstacleSample_shown;
  pdbg.max_t = output.max_t;
  pdbg.max_d = output.max_d;
  pdbg.stitch_trajectory_x = output.stitch_trajectory_x;
  pdbg.stitch_trajectory_y = output.stitch_trajectory_y;
  pdbg.stitch_trajectory_z = output.stitch_trajectory_z;
  pdbg.stitch_trajectory_theta = output.stitch_trajectory_theta;
  pdbg.stitch_trajectory_kappa = output.stitch_trajectory_kappa;
  pdbg.stitch_trajectory_v = output.stitch_trajectory_v;
  pdbg.stitch_trajectory_a = output.stitch_trajectory_a;
  pdbg.stitch_trajectory_relative_time = output.stitch_trajectory_relative_time;
  
  // print stitch debug message
  auto &stitch_output = planning_core_->outputs->trajectory_debug.stitch_Debug;
  auto *stitch_debug = &(pdbg.stitch_debug);

  stitch_debug->prev_traj_is_not_ok = stitch_output.prev_traj_is_NOT_ok;
  stitch_debug->driver_mode_is_not_auto = stitch_output.driver_mode_is_NOT_auto;
  stitch_debug->prev_traj_size_is_zero = stitch_output.prev_traj_size_is_zero;
  stitch_debug->smaller_than_prev_traj_time = stitch_output.curr_time_smaller_than_prev_traj_time;
  stitch_debug->beyond_prev_traj_time = stitch_output.curr_time_beyond_prev_traj_time;
  stitch_debug->dist_too_large = stitch_output.dist_too_large;
  stitch_debug->lon_diff = stitch_output.lon_diff;
  stitch_debug->lat_diff = stitch_output.lat_diff;
  #ifdef  _USING_ROUTING
  /// print decision debug message
  auto &decision_output = planning_core_->outputs->decbus;
  auto *decision_debug = &(pdbg.decision_debug);
  for (int i = 0; i < 50; i++) {
    decision_debug->obstacle[i].id = decision_output.obstacle[i].ID;
    decision_debug->obstacle[i].s = decision_output.obstacle[i].s;
    decision_debug->obstacle[i].l = decision_output.obstacle[i].l;
    decision_debug->obstacle[i].vs = decision_output.obstacle[i].vs;
    decision_debug->obstacle[i].as = decision_output.obstacle[i].as;
    decision_debug->obstacle[i].vl = decision_output.obstacle[i].vl;
    decision_debug->obstacle[i].al = decision_output.obstacle[i].al;
    decision_debug->obstacle[i].lane_no = decision_output.obstacle[i].LaneNo;
    decision_debug->obstacle[i].time_cost = decision_output.obstacle[i].TimeCost;
    decision_debug->obstacle[i].des_cost = decision_output.obstacle[i].DesCost;
    decision_debug->obstacle[i].decision_cost = decision_output.obstacle[i].DecisionCost;
    decision_debug->obstacle[i].decision_tag = decision_output.obstacle[i].DecisionTag;;
  }
  decision_debug->lanechange_id = decision_output.LaneChangeID;
  decision_debug->lane_id = decision_output.LaneID;
  decision_debug->lanechange_process = decision_output.LaneChangeProcess;
  for (int i = 0; i < 3; i++) {
    decision_debug->ego_cost[i] = decision_output.EgoCost[i];
    decision_debug->onlane_obs_num[i] = decision_output.OnLaneObsNum[i];
  }
  #endif
}

bool StdPlanner::Plan(){
  bool status = true;
  

  GetLocalizationInfo(location_);
  GetHdmapInfo(hdmap_);

  // TODO: Add planning core algorithm here
  StdPlanningCore_step(planning_core_);
  // TODO: copy the trajectory
  GetPlanningTrajectory(trajectory_);

  // TODO: copy the debug data 
  PrintDebugInfo(pdbg);

  return status;
}

}  // namespace planning

