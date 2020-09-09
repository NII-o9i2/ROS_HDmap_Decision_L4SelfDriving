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

class GlobalObstacle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enu_x = null;
      this.enu_y = null;
      this.enu_theta = null;
      this.enu_vx = null;
      this.enu_vy = null;
      this.enu_ax = null;
      this.enu_ay = null;
      this.confidence = null;
      this.type = null;
      this.velocity = null;
      this.length = null;
      this.width = null;
    }
    else {
      if (initObj.hasOwnProperty('enu_x')) {
        this.enu_x = initObj.enu_x
      }
      else {
        this.enu_x = 0.0;
      }
      if (initObj.hasOwnProperty('enu_y')) {
        this.enu_y = initObj.enu_y
      }
      else {
        this.enu_y = 0.0;
      }
      if (initObj.hasOwnProperty('enu_theta')) {
        this.enu_theta = initObj.enu_theta
      }
      else {
        this.enu_theta = 0.0;
      }
      if (initObj.hasOwnProperty('enu_vx')) {
        this.enu_vx = initObj.enu_vx
      }
      else {
        this.enu_vx = 0.0;
      }
      if (initObj.hasOwnProperty('enu_vy')) {
        this.enu_vy = initObj.enu_vy
      }
      else {
        this.enu_vy = 0.0;
      }
      if (initObj.hasOwnProperty('enu_ax')) {
        this.enu_ax = initObj.enu_ax
      }
      else {
        this.enu_ax = 0.0;
      }
      if (initObj.hasOwnProperty('enu_ay')) {
        this.enu_ay = initObj.enu_ay
      }
      else {
        this.enu_ay = 0.0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0.0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GlobalObstacle
    // Serialize message field [enu_x]
    bufferOffset = _serializer.float32(obj.enu_x, buffer, bufferOffset);
    // Serialize message field [enu_y]
    bufferOffset = _serializer.float32(obj.enu_y, buffer, bufferOffset);
    // Serialize message field [enu_theta]
    bufferOffset = _serializer.float32(obj.enu_theta, buffer, bufferOffset);
    // Serialize message field [enu_vx]
    bufferOffset = _serializer.float32(obj.enu_vx, buffer, bufferOffset);
    // Serialize message field [enu_vy]
    bufferOffset = _serializer.float32(obj.enu_vy, buffer, bufferOffset);
    // Serialize message field [enu_ax]
    bufferOffset = _serializer.float32(obj.enu_ax, buffer, bufferOffset);
    // Serialize message field [enu_ay]
    bufferOffset = _serializer.float32(obj.enu_ay, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int8(obj.type, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = _serializer.float32(obj.velocity, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GlobalObstacle
    let len;
    let data = new GlobalObstacle(null);
    // Deserialize message field [enu_x]
    data.enu_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [enu_y]
    data.enu_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [enu_theta]
    data.enu_theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [enu_vx]
    data.enu_vx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [enu_vy]
    data.enu_vy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [enu_ax]
    data.enu_ax = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [enu_ay]
    data.enu_ay = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 45;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/GlobalObstacle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b7d3afddcf69de81cf0f9f41ad80e5fa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new GlobalObstacle(null);
    if (msg.enu_x !== undefined) {
      resolved.enu_x = msg.enu_x;
    }
    else {
      resolved.enu_x = 0.0
    }

    if (msg.enu_y !== undefined) {
      resolved.enu_y = msg.enu_y;
    }
    else {
      resolved.enu_y = 0.0
    }

    if (msg.enu_theta !== undefined) {
      resolved.enu_theta = msg.enu_theta;
    }
    else {
      resolved.enu_theta = 0.0
    }

    if (msg.enu_vx !== undefined) {
      resolved.enu_vx = msg.enu_vx;
    }
    else {
      resolved.enu_vx = 0.0
    }

    if (msg.enu_vy !== undefined) {
      resolved.enu_vy = msg.enu_vy;
    }
    else {
      resolved.enu_vy = 0.0
    }

    if (msg.enu_ax !== undefined) {
      resolved.enu_ax = msg.enu_ax;
    }
    else {
      resolved.enu_ax = 0.0
    }

    if (msg.enu_ay !== undefined) {
      resolved.enu_ay = msg.enu_ay;
    }
    else {
      resolved.enu_ay = 0.0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0.0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    return resolved;
    }
};

module.exports = GlobalObstacle;
