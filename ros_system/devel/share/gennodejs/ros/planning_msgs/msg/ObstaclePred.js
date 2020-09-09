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

class ObstaclePred {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.prediction_x = null;
      this.prediction_y = null;
      this.predict_method = null;
      this.is_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('prediction_x')) {
        this.prediction_x = initObj.prediction_x
      }
      else {
        this.prediction_x = new Array(10).fill(0);
      }
      if (initObj.hasOwnProperty('prediction_y')) {
        this.prediction_y = initObj.prediction_y
      }
      else {
        this.prediction_y = new Array(10).fill(0);
      }
      if (initObj.hasOwnProperty('predict_method')) {
        this.predict_method = initObj.predict_method
      }
      else {
        this.predict_method = 0;
      }
      if (initObj.hasOwnProperty('is_valid')) {
        this.is_valid = initObj.is_valid
      }
      else {
        this.is_valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObstaclePred
    // Check that the constant length array field [prediction_x] has the right length
    if (obj.prediction_x.length !== 10) {
      throw new Error('Unable to serialize array field prediction_x - length must be 10')
    }
    // Serialize message field [prediction_x]
    bufferOffset = _arraySerializer.float32(obj.prediction_x, buffer, bufferOffset, 10);
    // Check that the constant length array field [prediction_y] has the right length
    if (obj.prediction_y.length !== 10) {
      throw new Error('Unable to serialize array field prediction_y - length must be 10')
    }
    // Serialize message field [prediction_y]
    bufferOffset = _arraySerializer.float32(obj.prediction_y, buffer, bufferOffset, 10);
    // Serialize message field [predict_method]
    bufferOffset = _serializer.uint32(obj.predict_method, buffer, bufferOffset);
    // Serialize message field [is_valid]
    bufferOffset = _serializer.bool(obj.is_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObstaclePred
    let len;
    let data = new ObstaclePred(null);
    // Deserialize message field [prediction_x]
    data.prediction_x = _arrayDeserializer.float32(buffer, bufferOffset, 10)
    // Deserialize message field [prediction_y]
    data.prediction_y = _arrayDeserializer.float32(buffer, bufferOffset, 10)
    // Deserialize message field [predict_method]
    data.predict_method = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [is_valid]
    data.is_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 85;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/ObstaclePred';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff9d8c9ace78f2e23a2505b10de19eaa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[10] prediction_x
    float32[10] prediction_y
    uint32 predict_method
    bool is_valid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObstaclePred(null);
    if (msg.prediction_x !== undefined) {
      resolved.prediction_x = msg.prediction_x;
    }
    else {
      resolved.prediction_x = new Array(10).fill(0)
    }

    if (msg.prediction_y !== undefined) {
      resolved.prediction_y = msg.prediction_y;
    }
    else {
      resolved.prediction_y = new Array(10).fill(0)
    }

    if (msg.predict_method !== undefined) {
      resolved.predict_method = msg.predict_method;
    }
    else {
      resolved.predict_method = 0
    }

    if (msg.is_valid !== undefined) {
      resolved.is_valid = msg.is_valid;
    }
    else {
      resolved.is_valid = false
    }

    return resolved;
    }
};

module.exports = ObstaclePred;
