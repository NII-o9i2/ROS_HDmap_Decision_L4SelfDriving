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

class S_STOPLINE {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.offset = null;
      this.latOffset = null;
      this.type = null;
      this.validnum = null;
      this.point = null;
    }
    else {
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = 0;
      }
      if (initObj.hasOwnProperty('latOffset')) {
        this.latOffset = initObj.latOffset
      }
      else {
        this.latOffset = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('validnum')) {
        this.validnum = initObj.validnum
      }
      else {
        this.validnum = 0;
      }
      if (initObj.hasOwnProperty('point')) {
        this.point = initObj.point
      }
      else {
        this.point = new Array(100).fill(new S_POINT());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type S_STOPLINE
    // Serialize message field [offset]
    bufferOffset = _serializer.int16(obj.offset, buffer, bufferOffset);
    // Serialize message field [latOffset]
    bufferOffset = _serializer.int16(obj.latOffset, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int16(obj.type, buffer, bufferOffset);
    // Serialize message field [validnum]
    bufferOffset = _serializer.int16(obj.validnum, buffer, bufferOffset);
    // Check that the constant length array field [point] has the right length
    if (obj.point.length !== 100) {
      throw new Error('Unable to serialize array field point - length must be 100')
    }
    // Serialize message field [point]
    obj.point.forEach((val) => {
      bufferOffset = S_POINT.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type S_STOPLINE
    let len;
    let data = new S_STOPLINE(null);
    // Deserialize message field [offset]
    data.offset = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [latOffset]
    data.latOffset = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [validnum]
    data.validnum = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [point]
    len = 100;
    data.point = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.point[i] = S_POINT.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ytthdmap_msgs/S_STOPLINE';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1177159ac36be20cf69b091839735d00';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 offset
    int16 latOffset
    int16 type
    int16 validnum
    S_POINT[100] point
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
    const resolved = new S_STOPLINE(null);
    if (msg.offset !== undefined) {
      resolved.offset = msg.offset;
    }
    else {
      resolved.offset = 0
    }

    if (msg.latOffset !== undefined) {
      resolved.latOffset = msg.latOffset;
    }
    else {
      resolved.latOffset = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.validnum !== undefined) {
      resolved.validnum = msg.validnum;
    }
    else {
      resolved.validnum = 0
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

    return resolved;
    }
};

module.exports = S_STOPLINE;
