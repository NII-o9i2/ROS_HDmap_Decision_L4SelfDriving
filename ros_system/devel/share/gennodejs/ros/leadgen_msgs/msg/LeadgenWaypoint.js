// Auto-generated. Do not edit!

// (in-package leadgen_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class LeadgenWaypoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.point = null;
      this.theta = null;
      this.kappa = null;
      this.station = null;
      this.lateral = null;
      this.speed = null;
      this.accel = null;
      this.time_arrival = null;
    }
    else {
      if (initObj.hasOwnProperty('point')) {
        this.point = initObj.point
      }
      else {
        this.point = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
      if (initObj.hasOwnProperty('kappa')) {
        this.kappa = initObj.kappa
      }
      else {
        this.kappa = 0.0;
      }
      if (initObj.hasOwnProperty('station')) {
        this.station = initObj.station
      }
      else {
        this.station = 0.0;
      }
      if (initObj.hasOwnProperty('lateral')) {
        this.lateral = initObj.lateral
      }
      else {
        this.lateral = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('accel')) {
        this.accel = initObj.accel
      }
      else {
        this.accel = 0.0;
      }
      if (initObj.hasOwnProperty('time_arrival')) {
        this.time_arrival = initObj.time_arrival
      }
      else {
        this.time_arrival = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LeadgenWaypoint
    // Serialize message field [point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.point, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float64(obj.theta, buffer, bufferOffset);
    // Serialize message field [kappa]
    bufferOffset = _serializer.float64(obj.kappa, buffer, bufferOffset);
    // Serialize message field [station]
    bufferOffset = _serializer.float64(obj.station, buffer, bufferOffset);
    // Serialize message field [lateral]
    bufferOffset = _serializer.float64(obj.lateral, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [accel]
    bufferOffset = _serializer.float32(obj.accel, buffer, bufferOffset);
    // Serialize message field [time_arrival]
    bufferOffset = _serializer.time(obj.time_arrival, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LeadgenWaypoint
    let len;
    let data = new LeadgenWaypoint(null);
    // Deserialize message field [point]
    data.point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [kappa]
    data.kappa = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [station]
    data.station = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lateral]
    data.lateral = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accel]
    data.accel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [time_arrival]
    data.time_arrival = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'leadgen_msgs/LeadgenWaypoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '38a50bfbdbab44a271e46dddaf38da0a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new LeadgenWaypoint(null);
    if (msg.point !== undefined) {
      resolved.point = geometry_msgs.msg.Point.Resolve(msg.point)
    }
    else {
      resolved.point = new geometry_msgs.msg.Point()
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    if (msg.kappa !== undefined) {
      resolved.kappa = msg.kappa;
    }
    else {
      resolved.kappa = 0.0
    }

    if (msg.station !== undefined) {
      resolved.station = msg.station;
    }
    else {
      resolved.station = 0.0
    }

    if (msg.lateral !== undefined) {
      resolved.lateral = msg.lateral;
    }
    else {
      resolved.lateral = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.accel !== undefined) {
      resolved.accel = msg.accel;
    }
    else {
      resolved.accel = 0.0
    }

    if (msg.time_arrival !== undefined) {
      resolved.time_arrival = msg.time_arrival;
    }
    else {
      resolved.time_arrival = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = LeadgenWaypoint;
