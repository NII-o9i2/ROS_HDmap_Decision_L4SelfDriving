// Auto-generated. Do not edit!

// (in-package ytthdmap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let S_LINE = require('./S_LINE.js');

//-----------------------------------------------------------

class S_LANEINFO {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.centerline = null;
      this.leftboundry = null;
      this.rightboundry = null;
      this.width = null;
      this.IsPartofRouting = null;
      this.type = null;
      this.direction = null;
      this.id = null;
      this.length = null;
    }
    else {
      if (initObj.hasOwnProperty('centerline')) {
        this.centerline = initObj.centerline
      }
      else {
        this.centerline = new S_LINE();
      }
      if (initObj.hasOwnProperty('leftboundry')) {
        this.leftboundry = initObj.leftboundry
      }
      else {
        this.leftboundry = new S_LINE();
      }
      if (initObj.hasOwnProperty('rightboundry')) {
        this.rightboundry = initObj.rightboundry
      }
      else {
        this.rightboundry = new S_LINE();
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('IsPartofRouting')) {
        this.IsPartofRouting = initObj.IsPartofRouting
      }
      else {
        this.IsPartofRouting = false;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = 0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type S_LANEINFO
    // Serialize message field [centerline]
    bufferOffset = S_LINE.serialize(obj.centerline, buffer, bufferOffset);
    // Serialize message field [leftboundry]
    bufferOffset = S_LINE.serialize(obj.leftboundry, buffer, bufferOffset);
    // Serialize message field [rightboundry]
    bufferOffset = S_LINE.serialize(obj.rightboundry, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    // Serialize message field [IsPartofRouting]
    bufferOffset = _serializer.bool(obj.IsPartofRouting, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int16(obj.type, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.int16(obj.direction, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int16(obj.id, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type S_LANEINFO
    let len;
    let data = new S_LANEINFO(null);
    // Deserialize message field [centerline]
    data.centerline = S_LINE.deserialize(buffer, bufferOffset);
    // Deserialize message field [leftboundry]
    data.leftboundry = S_LINE.deserialize(buffer, bufferOffset);
    // Deserialize message field [rightboundry]
    data.rightboundry = S_LINE.deserialize(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [IsPartofRouting]
    data.IsPartofRouting = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 69;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ytthdmap_msgs/S_LANEINFO';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3bc5c9298690fd903b2c404d72e82a3f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    S_LINE centerline
    S_LINE leftboundry
    S_LINE rightboundry
    float32 width
    bool IsPartofRouting
    int16 type
    int16 direction
    int16 id
    float32 length
    
    ================================================================================
    MSG: ytthdmap_msgs/S_LINE
    int16 type
    int16 linetype
    S_POINT[100] point
    int16 pointnum
    
    ================================================================================
    MSG: ytthdmap_msgs/S_POINT
    float32 x
    float32 y
    float32 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new S_LANEINFO(null);
    if (msg.centerline !== undefined) {
      resolved.centerline = S_LINE.Resolve(msg.centerline)
    }
    else {
      resolved.centerline = new S_LINE()
    }

    if (msg.leftboundry !== undefined) {
      resolved.leftboundry = S_LINE.Resolve(msg.leftboundry)
    }
    else {
      resolved.leftboundry = new S_LINE()
    }

    if (msg.rightboundry !== undefined) {
      resolved.rightboundry = S_LINE.Resolve(msg.rightboundry)
    }
    else {
      resolved.rightboundry = new S_LINE()
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.IsPartofRouting !== undefined) {
      resolved.IsPartofRouting = msg.IsPartofRouting;
    }
    else {
      resolved.IsPartofRouting = false
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = 0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    return resolved;
    }
};

module.exports = S_LANEINFO;
