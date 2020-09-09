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

class Propt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frenet_l = null;
      this.frenet_s = null;
      this.angle_diff = null;
    }
    else {
      if (initObj.hasOwnProperty('frenet_l')) {
        this.frenet_l = initObj.frenet_l
      }
      else {
        this.frenet_l = 0.0;
      }
      if (initObj.hasOwnProperty('frenet_s')) {
        this.frenet_s = initObj.frenet_s
      }
      else {
        this.frenet_s = 0.0;
      }
      if (initObj.hasOwnProperty('angle_diff')) {
        this.angle_diff = initObj.angle_diff
      }
      else {
        this.angle_diff = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Propt
    // Serialize message field [frenet_l]
    bufferOffset = _serializer.float32(obj.frenet_l, buffer, bufferOffset);
    // Serialize message field [frenet_s]
    bufferOffset = _serializer.float32(obj.frenet_s, buffer, bufferOffset);
    // Serialize message field [angle_diff]
    bufferOffset = _serializer.float32(obj.angle_diff, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Propt
    let len;
    let data = new Propt(null);
    // Deserialize message field [frenet_l]
    data.frenet_l = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [frenet_s]
    data.frenet_s = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle_diff]
    data.angle_diff = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/Propt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '36e7dfcccde17a7b4086abce8e13aa97';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 frenet_l
    float32 frenet_s
    float32 angle_diff
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Propt(null);
    if (msg.frenet_l !== undefined) {
      resolved.frenet_l = msg.frenet_l;
    }
    else {
      resolved.frenet_l = 0.0
    }

    if (msg.frenet_s !== undefined) {
      resolved.frenet_s = msg.frenet_s;
    }
    else {
      resolved.frenet_s = 0.0
    }

    if (msg.angle_diff !== undefined) {
      resolved.angle_diff = msg.angle_diff;
    }
    else {
      resolved.angle_diff = 0.0
    }

    return resolved;
    }
};

module.exports = Propt;
