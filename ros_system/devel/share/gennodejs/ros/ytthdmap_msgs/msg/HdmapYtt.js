// Auto-generated. Do not edit!

// (in-package ytthdmap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let S_LANEINFO = require('./S_LANEINFO.js');
let S_STOPLINE = require('./S_STOPLINE.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class HdmapYtt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time = null;
      this.isValidlane = null;
      this.positionstate = null;
      this.curlane = null;
      this.laneinfo = null;
      this.speedlim = null;
      this.stopline = null;
      this.istunnel = null;
      this.nextlaneCH = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0;
      }
      if (initObj.hasOwnProperty('isValidlane')) {
        this.isValidlane = initObj.isValidlane
      }
      else {
        this.isValidlane = 0;
      }
      if (initObj.hasOwnProperty('positionstate')) {
        this.positionstate = initObj.positionstate
      }
      else {
        this.positionstate = 0;
      }
      if (initObj.hasOwnProperty('curlane')) {
        this.curlane = initObj.curlane
      }
      else {
        this.curlane = 0;
      }
      if (initObj.hasOwnProperty('laneinfo')) {
        this.laneinfo = initObj.laneinfo
      }
      else {
        this.laneinfo = new Array(5).fill(new S_LANEINFO());
      }
      if (initObj.hasOwnProperty('speedlim')) {
        this.speedlim = initObj.speedlim
      }
      else {
        this.speedlim = 0.0;
      }
      if (initObj.hasOwnProperty('stopline')) {
        this.stopline = initObj.stopline
      }
      else {
        this.stopline = new S_STOPLINE();
      }
      if (initObj.hasOwnProperty('istunnel')) {
        this.istunnel = initObj.istunnel
      }
      else {
        this.istunnel = false;
      }
      if (initObj.hasOwnProperty('nextlaneCH')) {
        this.nextlaneCH = initObj.nextlaneCH
      }
      else {
        this.nextlaneCH = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HdmapYtt
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.int16(obj.time, buffer, bufferOffset);
    // Serialize message field [isValidlane]
    bufferOffset = _serializer.int16(obj.isValidlane, buffer, bufferOffset);
    // Serialize message field [positionstate]
    bufferOffset = _serializer.int16(obj.positionstate, buffer, bufferOffset);
    // Serialize message field [curlane]
    bufferOffset = _serializer.int16(obj.curlane, buffer, bufferOffset);
    // Check that the constant length array field [laneinfo] has the right length
    if (obj.laneinfo.length !== 5) {
      throw new Error('Unable to serialize array field laneinfo - length must be 5')
    }
    // Serialize message field [laneinfo]
    obj.laneinfo.forEach((val) => {
      bufferOffset = S_LANEINFO.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [speedlim]
    bufferOffset = _serializer.float32(obj.speedlim, buffer, bufferOffset);
    // Serialize message field [stopline]
    bufferOffset = S_STOPLINE.serialize(obj.stopline, buffer, bufferOffset);
    // Serialize message field [istunnel]
    bufferOffset = _serializer.bool(obj.istunnel, buffer, bufferOffset);
    // Serialize message field [nextlaneCH]
    bufferOffset = _serializer.int16(obj.nextlaneCH, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HdmapYtt
    let len;
    let data = new HdmapYtt(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [isValidlane]
    data.isValidlane = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [positionstate]
    data.positionstate = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [curlane]
    data.curlane = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [laneinfo]
    len = 5;
    data.laneinfo = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.laneinfo[i] = S_LANEINFO.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [speedlim]
    data.speedlim = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [stopline]
    data.stopline = S_STOPLINE.deserialize(buffer, bufferOffset);
    // Deserialize message field [istunnel]
    data.istunnel = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [nextlaneCH]
    data.nextlaneCH = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 380;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ytthdmap_msgs/HdmapYtt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '965fc75ddac5682aff9e25ac32f36524';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    int16 time
    int16 isValidlane
    int16 positionstate
    int16 curlane
    S_LANEINFO[5] laneinfo 
    float32 speedlim
    S_STOPLINE stopline
    bool istunnel
    int16 nextlaneCH
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: ytthdmap_msgs/S_LANEINFO
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
    
    ================================================================================
    MSG: ytthdmap_msgs/S_STOPLINE
    int16 offset
    int16 latOffset
    int16 type
    int16 validnum
    S_POINT[100] point
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HdmapYtt(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0
    }

    if (msg.isValidlane !== undefined) {
      resolved.isValidlane = msg.isValidlane;
    }
    else {
      resolved.isValidlane = 0
    }

    if (msg.positionstate !== undefined) {
      resolved.positionstate = msg.positionstate;
    }
    else {
      resolved.positionstate = 0
    }

    if (msg.curlane !== undefined) {
      resolved.curlane = msg.curlane;
    }
    else {
      resolved.curlane = 0
    }

    if (msg.laneinfo !== undefined) {
      resolved.laneinfo = new Array(5)
      for (let i = 0; i < resolved.laneinfo.length; ++i) {
        if (msg.laneinfo.length > i) {
          resolved.laneinfo[i] = S_LANEINFO.Resolve(msg.laneinfo[i]);
        }
        else {
          resolved.laneinfo[i] = new S_LANEINFO();
        }
      }
    }
    else {
      resolved.laneinfo = new Array(5).fill(new S_LANEINFO())
    }

    if (msg.speedlim !== undefined) {
      resolved.speedlim = msg.speedlim;
    }
    else {
      resolved.speedlim = 0.0
    }

    if (msg.stopline !== undefined) {
      resolved.stopline = S_STOPLINE.Resolve(msg.stopline)
    }
    else {
      resolved.stopline = new S_STOPLINE()
    }

    if (msg.istunnel !== undefined) {
      resolved.istunnel = msg.istunnel;
    }
    else {
      resolved.istunnel = false
    }

    if (msg.nextlaneCH !== undefined) {
      resolved.nextlaneCH = msg.nextlaneCH;
    }
    else {
      resolved.nextlaneCH = 0
    }

    return resolved;
    }
};

module.exports = HdmapYtt;
