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

class StitchDebug {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.prev_traj_is_not_ok = null;
      this.driver_mode_is_not_auto = null;
      this.prev_traj_size_is_zero = null;
      this.smaller_than_prev_traj_time = null;
      this.beyond_prev_traj_time = null;
      this.dist_too_large = null;
      this.lon_diff = null;
      this.lat_diff = null;
    }
    else {
      if (initObj.hasOwnProperty('prev_traj_is_not_ok')) {
        this.prev_traj_is_not_ok = initObj.prev_traj_is_not_ok
      }
      else {
        this.prev_traj_is_not_ok = false;
      }
      if (initObj.hasOwnProperty('driver_mode_is_not_auto')) {
        this.driver_mode_is_not_auto = initObj.driver_mode_is_not_auto
      }
      else {
        this.driver_mode_is_not_auto = false;
      }
      if (initObj.hasOwnProperty('prev_traj_size_is_zero')) {
        this.prev_traj_size_is_zero = initObj.prev_traj_size_is_zero
      }
      else {
        this.prev_traj_size_is_zero = false;
      }
      if (initObj.hasOwnProperty('smaller_than_prev_traj_time')) {
        this.smaller_than_prev_traj_time = initObj.smaller_than_prev_traj_time
      }
      else {
        this.smaller_than_prev_traj_time = false;
      }
      if (initObj.hasOwnProperty('beyond_prev_traj_time')) {
        this.beyond_prev_traj_time = initObj.beyond_prev_traj_time
      }
      else {
        this.beyond_prev_traj_time = false;
      }
      if (initObj.hasOwnProperty('dist_too_large')) {
        this.dist_too_large = initObj.dist_too_large
      }
      else {
        this.dist_too_large = false;
      }
      if (initObj.hasOwnProperty('lon_diff')) {
        this.lon_diff = initObj.lon_diff
      }
      else {
        this.lon_diff = 0.0;
      }
      if (initObj.hasOwnProperty('lat_diff')) {
        this.lat_diff = initObj.lat_diff
      }
      else {
        this.lat_diff = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StitchDebug
    // Serialize message field [prev_traj_is_not_ok]
    bufferOffset = _serializer.bool(obj.prev_traj_is_not_ok, buffer, bufferOffset);
    // Serialize message field [driver_mode_is_not_auto]
    bufferOffset = _serializer.bool(obj.driver_mode_is_not_auto, buffer, bufferOffset);
    // Serialize message field [prev_traj_size_is_zero]
    bufferOffset = _serializer.bool(obj.prev_traj_size_is_zero, buffer, bufferOffset);
    // Serialize message field [smaller_than_prev_traj_time]
    bufferOffset = _serializer.bool(obj.smaller_than_prev_traj_time, buffer, bufferOffset);
    // Serialize message field [beyond_prev_traj_time]
    bufferOffset = _serializer.bool(obj.beyond_prev_traj_time, buffer, bufferOffset);
    // Serialize message field [dist_too_large]
    bufferOffset = _serializer.bool(obj.dist_too_large, buffer, bufferOffset);
    // Serialize message field [lon_diff]
    bufferOffset = _serializer.float32(obj.lon_diff, buffer, bufferOffset);
    // Serialize message field [lat_diff]
    bufferOffset = _serializer.float32(obj.lat_diff, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StitchDebug
    let len;
    let data = new StitchDebug(null);
    // Deserialize message field [prev_traj_is_not_ok]
    data.prev_traj_is_not_ok = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [driver_mode_is_not_auto]
    data.driver_mode_is_not_auto = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [prev_traj_size_is_zero]
    data.prev_traj_size_is_zero = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [smaller_than_prev_traj_time]
    data.smaller_than_prev_traj_time = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [beyond_prev_traj_time]
    data.beyond_prev_traj_time = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dist_too_large]
    data.dist_too_large = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lon_diff]
    data.lon_diff = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lat_diff]
    data.lat_diff = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/StitchDebug';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dbce74fa73b1745ccd5e3c75b3d544b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
      bool prev_traj_is_not_ok
      bool driver_mode_is_not_auto
      bool prev_traj_size_is_zero
      bool smaller_than_prev_traj_time
      bool beyond_prev_traj_time
      bool dist_too_large
      float32 lon_diff
      float32 lat_diff
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StitchDebug(null);
    if (msg.prev_traj_is_not_ok !== undefined) {
      resolved.prev_traj_is_not_ok = msg.prev_traj_is_not_ok;
    }
    else {
      resolved.prev_traj_is_not_ok = false
    }

    if (msg.driver_mode_is_not_auto !== undefined) {
      resolved.driver_mode_is_not_auto = msg.driver_mode_is_not_auto;
    }
    else {
      resolved.driver_mode_is_not_auto = false
    }

    if (msg.prev_traj_size_is_zero !== undefined) {
      resolved.prev_traj_size_is_zero = msg.prev_traj_size_is_zero;
    }
    else {
      resolved.prev_traj_size_is_zero = false
    }

    if (msg.smaller_than_prev_traj_time !== undefined) {
      resolved.smaller_than_prev_traj_time = msg.smaller_than_prev_traj_time;
    }
    else {
      resolved.smaller_than_prev_traj_time = false
    }

    if (msg.beyond_prev_traj_time !== undefined) {
      resolved.beyond_prev_traj_time = msg.beyond_prev_traj_time;
    }
    else {
      resolved.beyond_prev_traj_time = false
    }

    if (msg.dist_too_large !== undefined) {
      resolved.dist_too_large = msg.dist_too_large;
    }
    else {
      resolved.dist_too_large = false
    }

    if (msg.lon_diff !== undefined) {
      resolved.lon_diff = msg.lon_diff;
    }
    else {
      resolved.lon_diff = 0.0
    }

    if (msg.lat_diff !== undefined) {
      resolved.lat_diff = msg.lat_diff;
    }
    else {
      resolved.lat_diff = 0.0
    }

    return resolved;
    }
};

module.exports = StitchDebug;
