// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let StitchDebug = require('./StitchDebug.js');
let DecisionDebug = require('./DecisionDebug.js');

//-----------------------------------------------------------

class PlanningDebug {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lon_objective_cost = null;
      this.lon_jerk_cost = null;
      this.lon_collision_cost = null;
      this.lat_offset_cost = null;
      this.centripental_acc_cost = null;
      this.lat_comfort_cost = null;
      this.constraint_check_failure_count = null;
      this.collision_failure_count = null;
      this.distance_planning = null;
      this.id_shown = null;
      this.flag_path_time_obstacle_sample_shown = null;
      this.max_t = null;
      this.max_d = null;
      this.stitch_trajectory_x = null;
      this.stitch_trajectory_y = null;
      this.stitch_trajectory_z = null;
      this.stitch_trajectory_theta = null;
      this.stitch_trajectory_kappa = null;
      this.stitch_trajectory_v = null;
      this.stitch_trajectory_a = null;
      this.stitch_trajectory_relative_time = null;
      this.stitch_debug = null;
      this.decision_debug = null;
    }
    else {
      if (initObj.hasOwnProperty('lon_objective_cost')) {
        this.lon_objective_cost = initObj.lon_objective_cost
      }
      else {
        this.lon_objective_cost = 0.0;
      }
      if (initObj.hasOwnProperty('lon_jerk_cost')) {
        this.lon_jerk_cost = initObj.lon_jerk_cost
      }
      else {
        this.lon_jerk_cost = 0.0;
      }
      if (initObj.hasOwnProperty('lon_collision_cost')) {
        this.lon_collision_cost = initObj.lon_collision_cost
      }
      else {
        this.lon_collision_cost = 0.0;
      }
      if (initObj.hasOwnProperty('lat_offset_cost')) {
        this.lat_offset_cost = initObj.lat_offset_cost
      }
      else {
        this.lat_offset_cost = 0.0;
      }
      if (initObj.hasOwnProperty('centripental_acc_cost')) {
        this.centripental_acc_cost = initObj.centripental_acc_cost
      }
      else {
        this.centripental_acc_cost = 0.0;
      }
      if (initObj.hasOwnProperty('lat_comfort_cost')) {
        this.lat_comfort_cost = initObj.lat_comfort_cost
      }
      else {
        this.lat_comfort_cost = 0.0;
      }
      if (initObj.hasOwnProperty('constraint_check_failure_count')) {
        this.constraint_check_failure_count = initObj.constraint_check_failure_count
      }
      else {
        this.constraint_check_failure_count = 0.0;
      }
      if (initObj.hasOwnProperty('collision_failure_count')) {
        this.collision_failure_count = initObj.collision_failure_count
      }
      else {
        this.collision_failure_count = 0.0;
      }
      if (initObj.hasOwnProperty('distance_planning')) {
        this.distance_planning = initObj.distance_planning
      }
      else {
        this.distance_planning = 0.0;
      }
      if (initObj.hasOwnProperty('id_shown')) {
        this.id_shown = initObj.id_shown
      }
      else {
        this.id_shown = 0;
      }
      if (initObj.hasOwnProperty('flag_path_time_obstacle_sample_shown')) {
        this.flag_path_time_obstacle_sample_shown = initObj.flag_path_time_obstacle_sample_shown
      }
      else {
        this.flag_path_time_obstacle_sample_shown = 0;
      }
      if (initObj.hasOwnProperty('max_t')) {
        this.max_t = initObj.max_t
      }
      else {
        this.max_t = 0.0;
      }
      if (initObj.hasOwnProperty('max_d')) {
        this.max_d = initObj.max_d
      }
      else {
        this.max_d = 0.0;
      }
      if (initObj.hasOwnProperty('stitch_trajectory_x')) {
        this.stitch_trajectory_x = initObj.stitch_trajectory_x
      }
      else {
        this.stitch_trajectory_x = 0.0;
      }
      if (initObj.hasOwnProperty('stitch_trajectory_y')) {
        this.stitch_trajectory_y = initObj.stitch_trajectory_y
      }
      else {
        this.stitch_trajectory_y = 0.0;
      }
      if (initObj.hasOwnProperty('stitch_trajectory_z')) {
        this.stitch_trajectory_z = initObj.stitch_trajectory_z
      }
      else {
        this.stitch_trajectory_z = 0.0;
      }
      if (initObj.hasOwnProperty('stitch_trajectory_theta')) {
        this.stitch_trajectory_theta = initObj.stitch_trajectory_theta
      }
      else {
        this.stitch_trajectory_theta = 0.0;
      }
      if (initObj.hasOwnProperty('stitch_trajectory_kappa')) {
        this.stitch_trajectory_kappa = initObj.stitch_trajectory_kappa
      }
      else {
        this.stitch_trajectory_kappa = 0.0;
      }
      if (initObj.hasOwnProperty('stitch_trajectory_v')) {
        this.stitch_trajectory_v = initObj.stitch_trajectory_v
      }
      else {
        this.stitch_trajectory_v = 0.0;
      }
      if (initObj.hasOwnProperty('stitch_trajectory_a')) {
        this.stitch_trajectory_a = initObj.stitch_trajectory_a
      }
      else {
        this.stitch_trajectory_a = 0.0;
      }
      if (initObj.hasOwnProperty('stitch_trajectory_relative_time')) {
        this.stitch_trajectory_relative_time = initObj.stitch_trajectory_relative_time
      }
      else {
        this.stitch_trajectory_relative_time = 0.0;
      }
      if (initObj.hasOwnProperty('stitch_debug')) {
        this.stitch_debug = initObj.stitch_debug
      }
      else {
        this.stitch_debug = new StitchDebug();
      }
      if (initObj.hasOwnProperty('decision_debug')) {
        this.decision_debug = initObj.decision_debug
      }
      else {
        this.decision_debug = new DecisionDebug();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanningDebug
    // Serialize message field [lon_objective_cost]
    bufferOffset = _serializer.float32(obj.lon_objective_cost, buffer, bufferOffset);
    // Serialize message field [lon_jerk_cost]
    bufferOffset = _serializer.float32(obj.lon_jerk_cost, buffer, bufferOffset);
    // Serialize message field [lon_collision_cost]
    bufferOffset = _serializer.float32(obj.lon_collision_cost, buffer, bufferOffset);
    // Serialize message field [lat_offset_cost]
    bufferOffset = _serializer.float32(obj.lat_offset_cost, buffer, bufferOffset);
    // Serialize message field [centripental_acc_cost]
    bufferOffset = _serializer.float32(obj.centripental_acc_cost, buffer, bufferOffset);
    // Serialize message field [lat_comfort_cost]
    bufferOffset = _serializer.float32(obj.lat_comfort_cost, buffer, bufferOffset);
    // Serialize message field [constraint_check_failure_count]
    bufferOffset = _serializer.float32(obj.constraint_check_failure_count, buffer, bufferOffset);
    // Serialize message field [collision_failure_count]
    bufferOffset = _serializer.float32(obj.collision_failure_count, buffer, bufferOffset);
    // Serialize message field [distance_planning]
    bufferOffset = _serializer.float32(obj.distance_planning, buffer, bufferOffset);
    // Serialize message field [id_shown]
    bufferOffset = _serializer.uint32(obj.id_shown, buffer, bufferOffset);
    // Serialize message field [flag_path_time_obstacle_sample_shown]
    bufferOffset = _serializer.uint32(obj.flag_path_time_obstacle_sample_shown, buffer, bufferOffset);
    // Serialize message field [max_t]
    bufferOffset = _serializer.float32(obj.max_t, buffer, bufferOffset);
    // Serialize message field [max_d]
    bufferOffset = _serializer.float32(obj.max_d, buffer, bufferOffset);
    // Serialize message field [stitch_trajectory_x]
    bufferOffset = _serializer.float32(obj.stitch_trajectory_x, buffer, bufferOffset);
    // Serialize message field [stitch_trajectory_y]
    bufferOffset = _serializer.float32(obj.stitch_trajectory_y, buffer, bufferOffset);
    // Serialize message field [stitch_trajectory_z]
    bufferOffset = _serializer.float32(obj.stitch_trajectory_z, buffer, bufferOffset);
    // Serialize message field [stitch_trajectory_theta]
    bufferOffset = _serializer.float32(obj.stitch_trajectory_theta, buffer, bufferOffset);
    // Serialize message field [stitch_trajectory_kappa]
    bufferOffset = _serializer.float32(obj.stitch_trajectory_kappa, buffer, bufferOffset);
    // Serialize message field [stitch_trajectory_v]
    bufferOffset = _serializer.float32(obj.stitch_trajectory_v, buffer, bufferOffset);
    // Serialize message field [stitch_trajectory_a]
    bufferOffset = _serializer.float32(obj.stitch_trajectory_a, buffer, bufferOffset);
    // Serialize message field [stitch_trajectory_relative_time]
    bufferOffset = _serializer.float32(obj.stitch_trajectory_relative_time, buffer, bufferOffset);
    // Serialize message field [stitch_debug]
    bufferOffset = StitchDebug.serialize(obj.stitch_debug, buffer, bufferOffset);
    // Serialize message field [decision_debug]
    bufferOffset = DecisionDebug.serialize(obj.decision_debug, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanningDebug
    let len;
    let data = new PlanningDebug(null);
    // Deserialize message field [lon_objective_cost]
    data.lon_objective_cost = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lon_jerk_cost]
    data.lon_jerk_cost = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lon_collision_cost]
    data.lon_collision_cost = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lat_offset_cost]
    data.lat_offset_cost = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [centripental_acc_cost]
    data.centripental_acc_cost = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lat_comfort_cost]
    data.lat_comfort_cost = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [constraint_check_failure_count]
    data.constraint_check_failure_count = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [collision_failure_count]
    data.collision_failure_count = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance_planning]
    data.distance_planning = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [id_shown]
    data.id_shown = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [flag_path_time_obstacle_sample_shown]
    data.flag_path_time_obstacle_sample_shown = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [max_t]
    data.max_t = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_d]
    data.max_d = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [stitch_trajectory_x]
    data.stitch_trajectory_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [stitch_trajectory_y]
    data.stitch_trajectory_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [stitch_trajectory_z]
    data.stitch_trajectory_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [stitch_trajectory_theta]
    data.stitch_trajectory_theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [stitch_trajectory_kappa]
    data.stitch_trajectory_kappa = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [stitch_trajectory_v]
    data.stitch_trajectory_v = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [stitch_trajectory_a]
    data.stitch_trajectory_a = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [stitch_trajectory_relative_time]
    data.stitch_trajectory_relative_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [stitch_debug]
    data.stitch_debug = StitchDebug.deserialize(buffer, bufferOffset);
    // Deserialize message field [decision_debug]
    data.decision_debug = DecisionDebug.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 155;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/PlanningDebug';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '423e0926173cb1c4e4e0d32a68ecf81f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 lon_objective_cost
    float32 lon_jerk_cost
    float32 lon_collision_cost
    float32 lat_offset_cost
    float32 centripental_acc_cost
    float32 lat_comfort_cost
    float32 constraint_check_failure_count
    float32 collision_failure_count
    float32 distance_planning
    uint32 id_shown
    uint32 flag_path_time_obstacle_sample_shown
    float32 max_t
    float32 max_d
    float32 stitch_trajectory_x
    float32 stitch_trajectory_y
    float32 stitch_trajectory_z
    float32 stitch_trajectory_theta
    float32 stitch_trajectory_kappa
    float32 stitch_trajectory_v
    float32 stitch_trajectory_a
    float32 stitch_trajectory_relative_time
    StitchDebug stitch_debug
    DecisionDebug decision_debug
    ================================================================================
    MSG: planning_msgs/StitchDebug
      bool prev_traj_is_not_ok
      bool driver_mode_is_not_auto
      bool prev_traj_size_is_zero
      bool smaller_than_prev_traj_time
      bool beyond_prev_traj_time
      bool dist_too_large
      float32 lon_diff
      float32 lat_diff
    ================================================================================
    MSG: planning_msgs/DecisionDebug
      ObstacleIn[50] obstacle
      int8 lanechange_id
      int8 lane_id
      float32[3] ego_cost
      int8[3] onlane_obs_num
      int8 lanechange_process
    
    ================================================================================
    MSG: planning_msgs/ObstacleIn
    int8 id
    float32 s
    float32 l
    float32 vs
    float32 as
    float32 vl
    float32 al
    int8 lane_no
    float32 time_cost
    float32 des_cost
    float32 decision_cost
    int8 decision_tag
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlanningDebug(null);
    if (msg.lon_objective_cost !== undefined) {
      resolved.lon_objective_cost = msg.lon_objective_cost;
    }
    else {
      resolved.lon_objective_cost = 0.0
    }

    if (msg.lon_jerk_cost !== undefined) {
      resolved.lon_jerk_cost = msg.lon_jerk_cost;
    }
    else {
      resolved.lon_jerk_cost = 0.0
    }

    if (msg.lon_collision_cost !== undefined) {
      resolved.lon_collision_cost = msg.lon_collision_cost;
    }
    else {
      resolved.lon_collision_cost = 0.0
    }

    if (msg.lat_offset_cost !== undefined) {
      resolved.lat_offset_cost = msg.lat_offset_cost;
    }
    else {
      resolved.lat_offset_cost = 0.0
    }

    if (msg.centripental_acc_cost !== undefined) {
      resolved.centripental_acc_cost = msg.centripental_acc_cost;
    }
    else {
      resolved.centripental_acc_cost = 0.0
    }

    if (msg.lat_comfort_cost !== undefined) {
      resolved.lat_comfort_cost = msg.lat_comfort_cost;
    }
    else {
      resolved.lat_comfort_cost = 0.0
    }

    if (msg.constraint_check_failure_count !== undefined) {
      resolved.constraint_check_failure_count = msg.constraint_check_failure_count;
    }
    else {
      resolved.constraint_check_failure_count = 0.0
    }

    if (msg.collision_failure_count !== undefined) {
      resolved.collision_failure_count = msg.collision_failure_count;
    }
    else {
      resolved.collision_failure_count = 0.0
    }

    if (msg.distance_planning !== undefined) {
      resolved.distance_planning = msg.distance_planning;
    }
    else {
      resolved.distance_planning = 0.0
    }

    if (msg.id_shown !== undefined) {
      resolved.id_shown = msg.id_shown;
    }
    else {
      resolved.id_shown = 0
    }

    if (msg.flag_path_time_obstacle_sample_shown !== undefined) {
      resolved.flag_path_time_obstacle_sample_shown = msg.flag_path_time_obstacle_sample_shown;
    }
    else {
      resolved.flag_path_time_obstacle_sample_shown = 0
    }

    if (msg.max_t !== undefined) {
      resolved.max_t = msg.max_t;
    }
    else {
      resolved.max_t = 0.0
    }

    if (msg.max_d !== undefined) {
      resolved.max_d = msg.max_d;
    }
    else {
      resolved.max_d = 0.0
    }

    if (msg.stitch_trajectory_x !== undefined) {
      resolved.stitch_trajectory_x = msg.stitch_trajectory_x;
    }
    else {
      resolved.stitch_trajectory_x = 0.0
    }

    if (msg.stitch_trajectory_y !== undefined) {
      resolved.stitch_trajectory_y = msg.stitch_trajectory_y;
    }
    else {
      resolved.stitch_trajectory_y = 0.0
    }

    if (msg.stitch_trajectory_z !== undefined) {
      resolved.stitch_trajectory_z = msg.stitch_trajectory_z;
    }
    else {
      resolved.stitch_trajectory_z = 0.0
    }

    if (msg.stitch_trajectory_theta !== undefined) {
      resolved.stitch_trajectory_theta = msg.stitch_trajectory_theta;
    }
    else {
      resolved.stitch_trajectory_theta = 0.0
    }

    if (msg.stitch_trajectory_kappa !== undefined) {
      resolved.stitch_trajectory_kappa = msg.stitch_trajectory_kappa;
    }
    else {
      resolved.stitch_trajectory_kappa = 0.0
    }

    if (msg.stitch_trajectory_v !== undefined) {
      resolved.stitch_trajectory_v = msg.stitch_trajectory_v;
    }
    else {
      resolved.stitch_trajectory_v = 0.0
    }

    if (msg.stitch_trajectory_a !== undefined) {
      resolved.stitch_trajectory_a = msg.stitch_trajectory_a;
    }
    else {
      resolved.stitch_trajectory_a = 0.0
    }

    if (msg.stitch_trajectory_relative_time !== undefined) {
      resolved.stitch_trajectory_relative_time = msg.stitch_trajectory_relative_time;
    }
    else {
      resolved.stitch_trajectory_relative_time = 0.0
    }

    if (msg.stitch_debug !== undefined) {
      resolved.stitch_debug = StitchDebug.Resolve(msg.stitch_debug)
    }
    else {
      resolved.stitch_debug = new StitchDebug()
    }

    if (msg.decision_debug !== undefined) {
      resolved.decision_debug = DecisionDebug.Resolve(msg.decision_debug)
    }
    else {
      resolved.decision_debug = new DecisionDebug()
    }

    return resolved;
    }
};

module.exports = PlanningDebug;
