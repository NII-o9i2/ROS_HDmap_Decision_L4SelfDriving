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

class ObstacleIn {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.s = null;
      this.l = null;
      this.vs = null;
      this.as = null;
      this.vl = null;
      this.al = null;
      this.lane_no = null;
      this.time_cost = null;
      this.des_cost = null;
      this.decision_cost = null;
      this.decision_tag = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('s')) {
        this.s = initObj.s
      }
      else {
        this.s = 0.0;
      }
      if (initObj.hasOwnProperty('l')) {
        this.l = initObj.l
      }
      else {
        this.l = 0.0;
      }
      if (initObj.hasOwnProperty('vs')) {
        this.vs = initObj.vs
      }
      else {
        this.vs = 0.0;
      }
      if (initObj.hasOwnProperty('as')) {
        this.as = initObj.as
      }
      else {
        this.as = 0.0;
      }
      if (initObj.hasOwnProperty('vl')) {
        this.vl = initObj.vl
      }
      else {
        this.vl = 0.0;
      }
      if (initObj.hasOwnProperty('al')) {
        this.al = initObj.al
      }
      else {
        this.al = 0.0;
      }
      if (initObj.hasOwnProperty('lane_no')) {
        this.lane_no = initObj.lane_no
      }
      else {
        this.lane_no = 0;
      }
      if (initObj.hasOwnProperty('time_cost')) {
        this.time_cost = initObj.time_cost
      }
      else {
        this.time_cost = 0.0;
      }
      if (initObj.hasOwnProperty('des_cost')) {
        this.des_cost = initObj.des_cost
      }
      else {
        this.des_cost = 0.0;
      }
      if (initObj.hasOwnProperty('decision_cost')) {
        this.decision_cost = initObj.decision_cost
      }
      else {
        this.decision_cost = 0.0;
      }
      if (initObj.hasOwnProperty('decision_tag')) {
        this.decision_tag = initObj.decision_tag
      }
      else {
        this.decision_tag = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObstacleIn
    // Serialize message field [id]
    bufferOffset = _serializer.int8(obj.id, buffer, bufferOffset);
    // Serialize message field [s]
    bufferOffset = _serializer.float32(obj.s, buffer, bufferOffset);
    // Serialize message field [l]
    bufferOffset = _serializer.float32(obj.l, buffer, bufferOffset);
    // Serialize message field [vs]
    bufferOffset = _serializer.float32(obj.vs, buffer, bufferOffset);
    // Serialize message field [as]
    bufferOffset = _serializer.float32(obj.as, buffer, bufferOffset);
    // Serialize message field [vl]
    bufferOffset = _serializer.float32(obj.vl, buffer, bufferOffset);
    // Serialize message field [al]
    bufferOffset = _serializer.float32(obj.al, buffer, bufferOffset);
    // Serialize message field [lane_no]
    bufferOffset = _serializer.int8(obj.lane_no, buffer, bufferOffset);
    // Serialize message field [time_cost]
    bufferOffset = _serializer.float32(obj.time_cost, buffer, bufferOffset);
    // Serialize message field [des_cost]
    bufferOffset = _serializer.float32(obj.des_cost, buffer, bufferOffset);
    // Serialize message field [decision_cost]
    bufferOffset = _serializer.float32(obj.decision_cost, buffer, bufferOffset);
    // Serialize message field [decision_tag]
    bufferOffset = _serializer.int8(obj.decision_tag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObstacleIn
    let len;
    let data = new ObstacleIn(null);
    // Deserialize message field [id]
    data.id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [s]
    data.s = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [l]
    data.l = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vs]
    data.vs = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [as]
    data.as = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vl]
    data.vl = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [al]
    data.al = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lane_no]
    data.lane_no = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [time_cost]
    data.time_cost = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [des_cost]
    data.des_cost = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [decision_cost]
    data.decision_cost = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [decision_tag]
    data.decision_tag = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 39;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/ObstacleIn';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '839da740b46a1232ec0479df07f94f66';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 id
    float32 s
    float32 l
    float32 vs
    float32 as
    float32 vl
    float32 al
    int8 lane_no
    float32 time_cost
    float32 des_cost
    float32 decision_cost
    int8 decision_tag
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObstacleIn(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.s !== undefined) {
      resolved.s = msg.s;
    }
    else {
      resolved.s = 0.0
    }

    if (msg.l !== undefined) {
      resolved.l = msg.l;
    }
    else {
      resolved.l = 0.0
    }

    if (msg.vs !== undefined) {
      resolved.vs = msg.vs;
    }
    else {
      resolved.vs = 0.0
    }

    if (msg.as !== undefined) {
      resolved.as = msg.as;
    }
    else {
      resolved.as = 0.0
    }

    if (msg.vl !== undefined) {
      resolved.vl = msg.vl;
    }
    else {
      resolved.vl = 0.0
    }

    if (msg.al !== undefined) {
      resolved.al = msg.al;
    }
    else {
      resolved.al = 0.0
    }

    if (msg.lane_no !== undefined) {
      resolved.lane_no = msg.lane_no;
    }
    else {
      resolved.lane_no = 0
    }

    if (msg.time_cost !== undefined) {
      resolved.time_cost = msg.time_cost;
    }
    else {
      resolved.time_cost = 0.0
    }

    if (msg.des_cost !== undefined) {
      resolved.des_cost = msg.des_cost;
    }
    else {
      resolved.des_cost = 0.0
    }

    if (msg.decision_cost !== undefined) {
      resolved.decision_cost = msg.decision_cost;
    }
    else {
      resolved.decision_cost = 0.0
    }

    if (msg.decision_tag !== undefined) {
      resolved.decision_tag = msg.decision_tag;
    }
    else {
      resolved.decision_tag = 0
    }

    return resolved;
    }
};

module.exports = ObstacleIn;
