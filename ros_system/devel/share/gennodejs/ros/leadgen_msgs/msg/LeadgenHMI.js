// Auto-generated. Do not edit!

// (in-package leadgen_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LeadgenPointArray = require('./LeadgenPointArray.js');
let LeadgenObstacleOutput = require('./LeadgenObstacleOutput.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LeadgenHMI {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.lane_decision = null;
      this.traffic_light_result = null;
      this.lane_speed_limit = null;
      this.lane_borders = null;
      this.obs_decision_result = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('lane_decision')) {
        this.lane_decision = initObj.lane_decision
      }
      else {
        this.lane_decision = 0;
      }
      if (initObj.hasOwnProperty('traffic_light_result')) {
        this.traffic_light_result = initObj.traffic_light_result
      }
      else {
        this.traffic_light_result = 0;
      }
      if (initObj.hasOwnProperty('lane_speed_limit')) {
        this.lane_speed_limit = initObj.lane_speed_limit
      }
      else {
        this.lane_speed_limit = 0.0;
      }
      if (initObj.hasOwnProperty('lane_borders')) {
        this.lane_borders = initObj.lane_borders
      }
      else {
        this.lane_borders = [];
      }
      if (initObj.hasOwnProperty('obs_decision_result')) {
        this.obs_decision_result = initObj.obs_decision_result
      }
      else {
        this.obs_decision_result = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LeadgenHMI
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [lane_decision]
    bufferOffset = _serializer.uint8(obj.lane_decision, buffer, bufferOffset);
    // Serialize message field [traffic_light_result]
    bufferOffset = _serializer.uint8(obj.traffic_light_result, buffer, bufferOffset);
    // Serialize message field [lane_speed_limit]
    bufferOffset = _serializer.float32(obj.lane_speed_limit, buffer, bufferOffset);
    // Serialize message field [lane_borders]
    // Serialize the length for message field [lane_borders]
    bufferOffset = _serializer.uint32(obj.lane_borders.length, buffer, bufferOffset);
    obj.lane_borders.forEach((val) => {
      bufferOffset = LeadgenPointArray.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [obs_decision_result]
    // Serialize the length for message field [obs_decision_result]
    bufferOffset = _serializer.uint32(obj.obs_decision_result.length, buffer, bufferOffset);
    obj.obs_decision_result.forEach((val) => {
      bufferOffset = LeadgenObstacleOutput.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LeadgenHMI
    let len;
    let data = new LeadgenHMI(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [lane_decision]
    data.lane_decision = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [traffic_light_result]
    data.traffic_light_result = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lane_speed_limit]
    data.lane_speed_limit = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lane_borders]
    // Deserialize array length for message field [lane_borders]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lane_borders = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lane_borders[i] = LeadgenPointArray.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [obs_decision_result]
    // Deserialize array length for message field [obs_decision_result]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obs_decision_result = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obs_decision_result[i] = LeadgenObstacleOutput.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.lane_borders.forEach((val) => {
      length += LeadgenPointArray.getMessageSize(val);
    });
    object.obs_decision_result.forEach((val) => {
      length += LeadgenObstacleOutput.getMessageSize(val);
    });
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'leadgen_msgs/LeadgenHMI';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0d84c81bb319da0c42ae894c7b0cac72';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message is to describe decistion and planning message for HMI
    
    # Header
    std_msgs/Header header
    
    # lane changing decisions
    uint8 lane_decision
    
    # enum for lane decisions
    uint8 KEEP_IN_LANE = 0
    uint8 MERGE_LEFT_LANE = 1
    uint8 MERGE_RIGHT_LANE = 2
    
    # traffic light result
    uint8 traffic_light_result
    
    # enum for traffic light result
    uint8 TRAFFIC_LIGHT_NA = 0
    uint8 TRAFFIC_LIGHT_RED = 1
    uint8 TRAFFIC_LIGHT_GREEN = 2
    
    # current lane limit speed
    float32 lane_speed_limit # km/h
    
    # lane borders
    LeadgenPointArray[] lane_borders
    
    # obstacle output
    LeadgenObstacleOutput[] obs_decision_result
    
    
    
    
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
    MSG: leadgen_msgs/LeadgenPointArray
    # This message is to describe an array of geometry_msgs/Point
    
    geometry_msgs/Point[] points
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: leadgen_msgs/LeadgenObstacleOutput
    # This message is to describe the information of an obstacle
    
    # Header
    std_msgs/Header header
    
    # obstacle ID number
    int32 id
    
    # obstacle detection sources(optional)
    uint16 source_sensor
    
    # obstacle source sensor definition, using bit-wise operations
    # A single obstacle can be detected by multiple sensors, and use OR operation as the result
    uint16 SENSOR_LIDAR = 1
    uint16 SENSOR_VISION = 2
    uint16 SENSOR_RADAR = 4
    
    # obstacle type(optional)
    uint8 type
    
    # obstacle type definitions
    # subject to change
    
    uint8 OBSTACLE_TYPE_UNKNOWN = 0
    uint8 OBSTACLE_TYPE_SMALL = 1
    uint8 OBSTACLE_TYPE_BIG = 2
    uint8 OBSTACLE_TYPE_CAR = 3
    uint8 OBSTACLE_TYPE_BUS = 4
    uint8 OBSTACLE_TYPE_TRUCK = 5
    uint8 OBSTACLE_TYPE_CYCLER = 6
    uint8 OBSTACLE_TYPE_PEDESTRIAN = 7
    uint8 OBSTACLE_TYPE_PLANT = 8
    uint8 OBSTACLE_TYPE_FENCE = 9
    
    # obstacle status(optional)
    uint8 status
    
    # obstacle status definitions
    # according to Mobileye specs
    uint8 OBSTACLE_STATUS_UNDEFINED = 0
    uint8 OBSTACLE_STATUS_STANDING = 1
    uint8 OBSTACLE_STATUS_STOPPED = 2
    uint8 OBSTACLE_STATUS_MOVING = 3
    uint8 OBSTACLE_STATUS_ONCOMING = 4
    uint8 OBSTACLE_STATUS_PARKED = 5
    uint8 OBSTACLE_STATUS_UNUSED = 6
    
    # obstacle cutting(optional)
    uint8 cutting
    
    # obstacle cutting definitions
    # according to Mobileye specs
    uint8 OBSTACLE_CUTTING_UNDEFINED = 0
    uint8 OBSTACLE_IN_HOST_LANE = 1
    uint8 OBSTACLE_OUT_HOST_LANE = 2
    uint8 OBSTACLE_CUTTING_IN = 3
    uint8 OBSTACLE_CUTTING_OUT = 4
    
    # obstacle size
    float32 length  # along obstacle's +x direction, in [m] meter
    float32 width   # along obstacle's +y direction, in [m]
    float32 height  # along obstacle's +z direction, in [m]
    
    float32 velocity_heading # the velocity heading in the world frame
    
    # obstacle pose in body frame
    bool rlt_valid  # relative information valid
    geometry_msgs/Point rlt_position    # relative position to body frame
    float32 rlt_theta   # relative theta angle, to body frame along z axis
    
    # obstacle velocity in body frame
    geometry_msgs/Vector3 rlt_velocity  # relative velocity to body frame 
    
    # obstacle pose in world frame
    bool abs_valid  # absolute information valid
    geometry_msgs/Point abs_position    # absolute position in world frame
    float32 abs_theta   # absolute yaw angle in world frame
    
    # obstacle velocity in world frame
    geometry_msgs/Vector3 abs_velocity  # absolute velocity in world frame
    
    # decision tags
    uint8 longitude_tag
    uint8 lateral_tag
    
    # decision tag definitions
    uint8 IGNORE = 0 
    uint8 STAY_BEHIND = 1
    
    uint8 NUDGE_LEFT = 2   
    uint8 NUDGE_RIGHT = 3 
    uint8 NOT_AVAILABLE = 4 
    
    LeadgenWaypoint[] predicted_traj
    float32 predicted_period
    
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: leadgen_msgs/LeadgenWaypoint
    # This message is to describe a WAYPOINT in the target trajectory
    
    # header
    # std_msgs/Header header
    
    # 3D position
    geometry_msgs/Point point
    
    # trace info
    float64 theta # the heading of the trace at this point
    float64 kappa # the curvature of the trace at this point
    
    # SL info
    float64 station
    float64 lateral
    
    # speed info
    float32 speed # in [m/s]
    float32 accel # in [m/s^2],(optional)
    
    time time_arrival # the expected arrival time of this point
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LeadgenHMI(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.lane_decision !== undefined) {
      resolved.lane_decision = msg.lane_decision;
    }
    else {
      resolved.lane_decision = 0
    }

    if (msg.traffic_light_result !== undefined) {
      resolved.traffic_light_result = msg.traffic_light_result;
    }
    else {
      resolved.traffic_light_result = 0
    }

    if (msg.lane_speed_limit !== undefined) {
      resolved.lane_speed_limit = msg.lane_speed_limit;
    }
    else {
      resolved.lane_speed_limit = 0.0
    }

    if (msg.lane_borders !== undefined) {
      resolved.lane_borders = new Array(msg.lane_borders.length);
      for (let i = 0; i < resolved.lane_borders.length; ++i) {
        resolved.lane_borders[i] = LeadgenPointArray.Resolve(msg.lane_borders[i]);
      }
    }
    else {
      resolved.lane_borders = []
    }

    if (msg.obs_decision_result !== undefined) {
      resolved.obs_decision_result = new Array(msg.obs_decision_result.length);
      for (let i = 0; i < resolved.obs_decision_result.length; ++i) {
        resolved.obs_decision_result[i] = LeadgenObstacleOutput.Resolve(msg.obs_decision_result[i]);
      }
    }
    else {
      resolved.obs_decision_result = []
    }

    return resolved;
    }
};

// Constants for message
LeadgenHMI.Constants = {
  KEEP_IN_LANE: 0,
  MERGE_LEFT_LANE: 1,
  MERGE_RIGHT_LANE: 2,
  TRAFFIC_LIGHT_NA: 0,
  TRAFFIC_LIGHT_RED: 1,
  TRAFFIC_LIGHT_GREEN: 2,
}

module.exports = LeadgenHMI;
