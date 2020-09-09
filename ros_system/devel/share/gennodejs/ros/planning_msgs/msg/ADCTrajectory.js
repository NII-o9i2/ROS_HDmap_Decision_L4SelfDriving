// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PathPoint = require('./PathPoint.js');
let LatencyStats = require('./LatencyStats.js');
let PredictionDebug = require('./PredictionDebug.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ADCTrajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.path_point = null;
      this.dis_to_end = null;
      this.dis_to_cip = null;
      this.estop = null;
      this.is_replan = null;
      this.gear_position = null;
      this.turn_signal = null;
      this.latency_stats = null;
      this.predict_debug = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('path_point')) {
        this.path_point = initObj.path_point
      }
      else {
        this.path_point = [];
      }
      if (initObj.hasOwnProperty('dis_to_end')) {
        this.dis_to_end = initObj.dis_to_end
      }
      else {
        this.dis_to_end = 0.0;
      }
      if (initObj.hasOwnProperty('dis_to_cip')) {
        this.dis_to_cip = initObj.dis_to_cip
      }
      else {
        this.dis_to_cip = 0.0;
      }
      if (initObj.hasOwnProperty('estop')) {
        this.estop = initObj.estop
      }
      else {
        this.estop = false;
      }
      if (initObj.hasOwnProperty('is_replan')) {
        this.is_replan = initObj.is_replan
      }
      else {
        this.is_replan = false;
      }
      if (initObj.hasOwnProperty('gear_position')) {
        this.gear_position = initObj.gear_position
      }
      else {
        this.gear_position = 0;
      }
      if (initObj.hasOwnProperty('turn_signal')) {
        this.turn_signal = initObj.turn_signal
      }
      else {
        this.turn_signal = 0;
      }
      if (initObj.hasOwnProperty('latency_stats')) {
        this.latency_stats = initObj.latency_stats
      }
      else {
        this.latency_stats = new LatencyStats();
      }
      if (initObj.hasOwnProperty('predict_debug')) {
        this.predict_debug = initObj.predict_debug
      }
      else {
        this.predict_debug = new PredictionDebug();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ADCTrajectory
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [path_point]
    // Serialize the length for message field [path_point]
    bufferOffset = _serializer.uint32(obj.path_point.length, buffer, bufferOffset);
    obj.path_point.forEach((val) => {
      bufferOffset = PathPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [dis_to_end]
    bufferOffset = _serializer.float32(obj.dis_to_end, buffer, bufferOffset);
    // Serialize message field [dis_to_cip]
    bufferOffset = _serializer.float32(obj.dis_to_cip, buffer, bufferOffset);
    // Serialize message field [estop]
    bufferOffset = _serializer.bool(obj.estop, buffer, bufferOffset);
    // Serialize message field [is_replan]
    bufferOffset = _serializer.bool(obj.is_replan, buffer, bufferOffset);
    // Serialize message field [gear_position]
    bufferOffset = _serializer.uint8(obj.gear_position, buffer, bufferOffset);
    // Serialize message field [turn_signal]
    bufferOffset = _serializer.uint8(obj.turn_signal, buffer, bufferOffset);
    // Serialize message field [latency_stats]
    bufferOffset = LatencyStats.serialize(obj.latency_stats, buffer, bufferOffset);
    // Serialize message field [predict_debug]
    bufferOffset = PredictionDebug.serialize(obj.predict_debug, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ADCTrajectory
    let len;
    let data = new ADCTrajectory(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [path_point]
    // Deserialize array length for message field [path_point]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.path_point = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.path_point[i] = PathPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [dis_to_end]
    data.dis_to_end = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dis_to_cip]
    data.dis_to_cip = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [estop]
    data.estop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_replan]
    data.is_replan = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gear_position]
    data.gear_position = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [turn_signal]
    data.turn_signal = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [latency_stats]
    data.latency_stats = LatencyStats.deserialize(buffer, bufferOffset);
    // Deserialize message field [predict_debug]
    data.predict_debug = PredictionDebug.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 72 * object.path_point.length;
    return length + 174;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/ADCTrajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a6c0f4e599aa65a91923e94a4414cf84';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    PathPoint[] path_point
    float32 dis_to_end
    float32 dis_to_cip
    bool estop
    bool is_replan
    uint8 gear_position
    uint8 turn_signal
    LatencyStats latency_stats
    PredictionDebug predict_debug
    
    # Gear Position
    uint8 GEAR_NEUTRAL=0
    uint8 GEAR_DRIVE=1
    uint8 GEAR_REVERSE=2
    uint8 GEAR_PARKING=3
    uint8 GEAR_INVALID=4
    
    # turn signal state
    uint8 TURN_NONE=0
    uint8 TURN_LEFT=1
    uint8 TURN_RIGHT=2
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: planning_msgs/PathPoint
    float64 time
    float64 x
    float64 y
    float64 z
    float64 theta
    float64 curvature
    float64 curv_rate
    float32 velocity 
    float32 acceleration 
    float32 s
    float32 l
    
    ================================================================================
    MSG: planning_msgs/LatencyStats
    float64 total_time_ms
    float64 init_frame_time_ms
    
    ================================================================================
    MSG: planning_msgs/PredictionDebug
    Propt[32] propt
    ObstaclePred[64] obstacle_pred
    GlobalObstacle[32] obstacle_glbl
    
    ================================================================================
    MSG: planning_msgs/Propt
    float32 frenet_l
    float32 frenet_s
    float32 angle_diff
    
    ================================================================================
    MSG: planning_msgs/ObstaclePred
    float32[10] prediction_x
    float32[10] prediction_y
    uint32 predict_method
    bool is_valid
    
    ================================================================================
    MSG: planning_msgs/GlobalObstacle
    float32 enu_x
    float32 enu_y
    float32 enu_theta
    float32 enu_vx
    float32 enu_vy
    float32 enu_ax
    float32 enu_ay
    float32 confidence
    int8 type
    float32 velocity
    float32 length
    float32 width
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ADCTrajectory(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.path_point !== undefined) {
      resolved.path_point = new Array(msg.path_point.length);
      for (let i = 0; i < resolved.path_point.length; ++i) {
        resolved.path_point[i] = PathPoint.Resolve(msg.path_point[i]);
      }
    }
    else {
      resolved.path_point = []
    }

    if (msg.dis_to_end !== undefined) {
      resolved.dis_to_end = msg.dis_to_end;
    }
    else {
      resolved.dis_to_end = 0.0
    }

    if (msg.dis_to_cip !== undefined) {
      resolved.dis_to_cip = msg.dis_to_cip;
    }
    else {
      resolved.dis_to_cip = 0.0
    }

    if (msg.estop !== undefined) {
      resolved.estop = msg.estop;
    }
    else {
      resolved.estop = false
    }

    if (msg.is_replan !== undefined) {
      resolved.is_replan = msg.is_replan;
    }
    else {
      resolved.is_replan = false
    }

    if (msg.gear_position !== undefined) {
      resolved.gear_position = msg.gear_position;
    }
    else {
      resolved.gear_position = 0
    }

    if (msg.turn_signal !== undefined) {
      resolved.turn_signal = msg.turn_signal;
    }
    else {
      resolved.turn_signal = 0
    }

    if (msg.latency_stats !== undefined) {
      resolved.latency_stats = LatencyStats.Resolve(msg.latency_stats)
    }
    else {
      resolved.latency_stats = new LatencyStats()
    }

    if (msg.predict_debug !== undefined) {
      resolved.predict_debug = PredictionDebug.Resolve(msg.predict_debug)
    }
    else {
      resolved.predict_debug = new PredictionDebug()
    }

    return resolved;
    }
};

// Constants for message
ADCTrajectory.Constants = {
  GEAR_NEUTRAL: 0,
  GEAR_DRIVE: 1,
  GEAR_REVERSE: 2,
  GEAR_PARKING: 3,
  GEAR_INVALID: 4,
  TURN_NONE: 0,
  TURN_LEFT: 1,
  TURN_RIGHT: 2,
}

module.exports = ADCTrajectory;
