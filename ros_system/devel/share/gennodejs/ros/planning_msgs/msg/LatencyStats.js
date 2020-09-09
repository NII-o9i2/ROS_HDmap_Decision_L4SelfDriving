// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LatencyStats {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.total_time_ms = null;
      this.init_frame_time_ms = null;
    }
    else {
      if (initObj.hasOwnProperty('total_time_ms')) {
        this.total_time_ms = initObj.total_time_ms
      }
      else {
        this.total_time_ms = 0.0;
      }
      if (initObj.hasOwnProperty('init_frame_time_ms')) {
        this.init_frame_time_ms = initObj.init_frame_time_ms
      }
      else {
        this.init_frame_time_ms = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LatencyStats
    // Serialize message field [total_time_ms]
    bufferOffset = _serializer.float64(obj.total_time_ms, buffer, bufferOffset);
    // Serialize message field [init_frame_time_ms]
    bufferOffset = _serializer.float64(obj.init_frame_time_ms, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LatencyStats
    let len;
    let data = new LatencyStats(null);
    // Deserialize message field [total_time_ms]
    data.total_time_ms = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [init_frame_time_ms]
    data.init_frame_time_ms = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/LatencyStats';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '355dc3828983803a4a3b53991fcab533';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 total_time_ms
    float64 init_frame_time_ms
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LatencyStats(null);
    if (msg.total_time_ms !== undefined) {
      resolved.total_time_ms = msg.total_time_ms;
    }
    else {
      resolved.total_time_ms = 0.0
    }

    if (msg.init_frame_time_ms !== undefined) {
      resolved.init_frame_time_ms = msg.init_frame_time_ms;
    }
    else {
      resolved.init_frame_time_ms = 0.0
    }

    return resolved;
    }
};

module.exports = LatencyStats;
