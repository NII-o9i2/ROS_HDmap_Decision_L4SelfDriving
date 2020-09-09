// Auto-generated. Do not edit!

// (in-package leadgen_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LeadgenWaypoint = require('./LeadgenWaypoint.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LeadgenTrajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.waypoints = null;
      this.estop = null;
      this.turn_light = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('waypoints')) {
        this.waypoints = initObj.waypoints
      }
      else {
        this.waypoints = [];
      }
      if (initObj.hasOwnProperty('estop')) {
        this.estop = initObj.estop
      }
      else {
        this.estop = false;
      }
      if (initObj.hasOwnProperty('turn_light')) {
        this.turn_light = initObj.turn_light
      }
      else {
        this.turn_light = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LeadgenTrajectory
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [waypoints]
    // Serialize the length for message field [waypoints]
    bufferOffset = _serializer.uint32(obj.waypoints.length, buffer, bufferOffset);
    obj.waypoints.forEach((val) => {
      bufferOffset = LeadgenWaypoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [estop]
    bufferOffset = _serializer.bool(obj.estop, buffer, bufferOffset);
    // Serialize message field [turn_light]
    bufferOffset = _serializer.uint8(obj.turn_light, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LeadgenTrajectory
    let len;
    let data = new LeadgenTrajectory(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [waypoints]
    // Deserialize array length for message field [waypoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.waypoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.waypoints[i] = LeadgenWaypoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [estop]
    data.estop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [turn_light]
    data.turn_light = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 72 * object.waypoints.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'leadgen_msgs/LeadgenTrajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '403d372ec69806b29a42abeb4348e3f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message is to describe the target trajectory for the vehicle
    # The message is usually sent by planning module and followed by control module
    
    # Header
    std_msgs/Header header
    
    # The target trajectory
    LeadgenWaypoint[] waypoints
    
    # emergency stop marker
    bool estop
    
    # turn light
    uint8 turn_light
    
    uint8 NO_TURN_LIGHT = 0
    uint8 LEFT_TURN_LIGHT = 1
    uint8 RIGHT_TURN_LIGHT = 2
    
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
    
    
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LeadgenTrajectory(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.waypoints !== undefined) {
      resolved.waypoints = new Array(msg.waypoints.length);
      for (let i = 0; i < resolved.waypoints.length; ++i) {
        resolved.waypoints[i] = LeadgenWaypoint.Resolve(msg.waypoints[i]);
      }
    }
    else {
      resolved.waypoints = []
    }

    if (msg.estop !== undefined) {
      resolved.estop = msg.estop;
    }
    else {
      resolved.estop = false
    }

    if (msg.turn_light !== undefined) {
      resolved.turn_light = msg.turn_light;
    }
    else {
      resolved.turn_light = 0
    }

    return resolved;
    }
};

// Constants for message
LeadgenTrajectory.Constants = {
  NO_TURN_LIGHT: 0,
  LEFT_TURN_LIGHT: 1,
  RIGHT_TURN_LIGHT: 2,
}

module.exports = LeadgenTrajectory;
