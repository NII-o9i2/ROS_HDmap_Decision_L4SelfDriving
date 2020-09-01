// Auto-generated. Do not edit!

// (in-package ytthdmap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let S_POINT = require('./S_POINT.js');

//-----------------------------------------------------------

class S_LINE {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.linetype = null;
      this.point = null;
      this.pointnum = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('linetype')) {
        this.linetype = initObj.linetype
      }
      else {
        this.linetype = 0;
      }
      if (initObj.hasOwnProperty('point')) {
        this.point = initObj.point
      }
      else {
        this.point = new Array(100).fill(new S_POINT());
      }
      if (initObj.hasOwnProperty('pointnum')) {
        this.pointnum = initObj.pointnum
      }
      else {
        this.pointnum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type S_LINE
    // Serialize message field [type]
    bufferOffset = _serializer.int16(obj.type, buffer, bufferOffset);
    // Serialize message field [linetype]
    bufferOffset = _serializer.int16(obj.linetype, buffer, bufferOffset);
    // Check that the constant length array field [point] has the right length
    if (obj.point.length !== 100) {
      throw new Error('Unable to serialize array field point - length must be 100')
    }
    // Serialize message field [point]
    obj.point.forEach((val) => {
      bufferOffset = S_POINT.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pointnum]
    bufferOffset = _serializer.int16(obj.pointnum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type S_LINE
    let len;
    let data = new S_LINE(null);
    // Deserialize message field [type]
    data.type = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [linetype]
    data.linetype = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [point]
    len = 100;
    data.point = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.point[i] = S_POINT.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pointnum]
    data.pointnum = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ytthdmap_msgs/S_LINE';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3328978b048138c7828f4b617f1ca2a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 type
    int16 linetype
    S_POINT[100] point
    int16 pointnum
    ================================================================================
    MSG: ytthdmap_msgs/S_POINT
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
    const resolved = new S_LINE(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.linetype !== undefined) {
      resolved.linetype = msg.linetype;
    }
    else {
      resolved.linetype = 0
    }

    if (msg.point !== undefined) {
      resolved.point = new Array(100)
      for (let i = 0; i < resolved.point.length; ++i) {
        if (msg.point.length > i) {
          resolved.point[i] = S_POINT.Resolve(msg.point[i]);
        }
        else {
          resolved.point[i] = new S_POINT();
        }
      }
    }
    else {
      resolved.point = new Array(100).fill(new S_POINT())
    }

    if (msg.pointnum !== undefined) {
      resolved.pointnum = msg.pointnum;
    }
    else {
      resolved.pointnum = 0
    }

    return resolved;
    }
};

module.exports = S_LINE;
