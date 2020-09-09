// Auto-generated. Do not edit!

// (in-package leadgen_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LeadgenChassis {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.auto_mode = null;
      this.speed = null;
      this.acceleration = null;
      this.throttle = null;
      this.brake = null;
      this.gear = null;
      this.steer_pos = null;
      this.wheel_speed = null;
      this.engine_rpm = null;
      this.odometer = null;
      this.fuel_level = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('auto_mode')) {
        this.auto_mode = initObj.auto_mode
      }
      else {
        this.auto_mode = 0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = 0.0;
      }
      if (initObj.hasOwnProperty('throttle')) {
        this.throttle = initObj.throttle
      }
      else {
        this.throttle = 0.0;
      }
      if (initObj.hasOwnProperty('brake')) {
        this.brake = initObj.brake
      }
      else {
        this.brake = 0.0;
      }
      if (initObj.hasOwnProperty('gear')) {
        this.gear = initObj.gear
      }
      else {
        this.gear = 0;
      }
      if (initObj.hasOwnProperty('steer_pos')) {
        this.steer_pos = initObj.steer_pos
      }
      else {
        this.steer_pos = 0.0;
      }
      if (initObj.hasOwnProperty('wheel_speed')) {
        this.wheel_speed = initObj.wheel_speed
      }
      else {
        this.wheel_speed = [];
      }
      if (initObj.hasOwnProperty('engine_rpm')) {
        this.engine_rpm = initObj.engine_rpm
      }
      else {
        this.engine_rpm = 0.0;
      }
      if (initObj.hasOwnProperty('odometer')) {
        this.odometer = initObj.odometer
      }
      else {
        this.odometer = 0.0;
      }
      if (initObj.hasOwnProperty('fuel_level')) {
        this.fuel_level = initObj.fuel_level
      }
      else {
        this.fuel_level = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LeadgenChassis
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [auto_mode]
    bufferOffset = _serializer.uint8(obj.auto_mode, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = _serializer.float32(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [throttle]
    bufferOffset = _serializer.float32(obj.throttle, buffer, bufferOffset);
    // Serialize message field [brake]
    bufferOffset = _serializer.float32(obj.brake, buffer, bufferOffset);
    // Serialize message field [gear]
    bufferOffset = _serializer.int8(obj.gear, buffer, bufferOffset);
    // Serialize message field [steer_pos]
    bufferOffset = _serializer.float32(obj.steer_pos, buffer, bufferOffset);
    // Serialize message field [wheel_speed]
    bufferOffset = _arraySerializer.float32(obj.wheel_speed, buffer, bufferOffset, null);
    // Serialize message field [engine_rpm]
    bufferOffset = _serializer.float32(obj.engine_rpm, buffer, bufferOffset);
    // Serialize message field [odometer]
    bufferOffset = _serializer.float32(obj.odometer, buffer, bufferOffset);
    // Serialize message field [fuel_level]
    bufferOffset = _serializer.float32(obj.fuel_level, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LeadgenChassis
    let len;
    let data = new LeadgenChassis(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [auto_mode]
    data.auto_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [throttle]
    data.throttle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [brake]
    data.brake = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gear]
    data.gear = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [steer_pos]
    data.steer_pos = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wheel_speed]
    data.wheel_speed = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [engine_rpm]
    data.engine_rpm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [odometer]
    data.odometer = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fuel_level]
    data.fuel_level = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.wheel_speed.length;
    return length + 38;
  }

  static datatype() {
    // Returns string type for a message object
    return 'leadgen_msgs/LeadgenChassis';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6e7786948abd184365b7821561378998';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message is to describe the chassis status of the vehicle
    # The information usually comes from CAN bus of the vehicle interface
    
    # Header
    std_msgs/Header header
    
    # constant definitions
    # auto_mode is bit-wise marker
    # +-------------------+-------------------+
    # | H3 | H2 | H1 | H0 | L3 | L2 | L1 | L0 |
    # +-------------------+-------------------+
    # |  Steering modes   |   speed modes     |
    # +-------------------+-------------------+
    uint8 AUTO_MODE_OFF = 0
    uint8 AUTO_MODE_SYSTEM_ON = 1 # bit L0
    uint8 AUTO_MODE_BRAKE_ON = 2 # bit L1
    uint8 AUTO_MODE_THROTTLE_ON = 4  # bit L2
    uint8 AUTO_MODE_SPEED_ON = 8  # bit L3
    
    uint8 AUTO_MODE_STEER_ON = 16 # bit H0, 0x10
    uint8 AUTO_MODE_STEER_POS = 32 # bit H1, 0x20
    uint8 AUTO_MODE_STEER_VEL = 64 # bit H2, 0x40
    uint8 AUTO_MODE_STEER_TOR = 128 # bit H3, 0x80
    
    # vehicle current mode
    uint8 auto_mode
    
    # vehicle current longitude status
    float32 speed # in signed [m/s]
    float32 acceleration # in signed [m/s^2]
    float32 throttle # in [percentage]
    float32 brake # brake pressure [MPa]
    
    # gear control is bit-wise marker
    # +-------------------+-------------------+
    # | H3 | H2 | H1 | H0 | L3 | L2 | L1 | L0 |
    # +-------------------+-------------------+
    uint8 GEAR_INVALID = 0
    uint8 GEAR_P = 1
    uint8 GEAR_R = 2
    uint8 GEAR_N = 4
    uint8 GEAR_D = 8
    
    int8 gear # gear position
    
    # vehicle current steering status
    float32 steer_pos # in signed [percentage], positive to left
    
    # other operational status(optional)
    float32[] wheel_speed
    float32 engine_rpm
    float32 odometer
    float32 fuel_level
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LeadgenChassis(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.auto_mode !== undefined) {
      resolved.auto_mode = msg.auto_mode;
    }
    else {
      resolved.auto_mode = 0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = msg.acceleration;
    }
    else {
      resolved.acceleration = 0.0
    }

    if (msg.throttle !== undefined) {
      resolved.throttle = msg.throttle;
    }
    else {
      resolved.throttle = 0.0
    }

    if (msg.brake !== undefined) {
      resolved.brake = msg.brake;
    }
    else {
      resolved.brake = 0.0
    }

    if (msg.gear !== undefined) {
      resolved.gear = msg.gear;
    }
    else {
      resolved.gear = 0
    }

    if (msg.steer_pos !== undefined) {
      resolved.steer_pos = msg.steer_pos;
    }
    else {
      resolved.steer_pos = 0.0
    }

    if (msg.wheel_speed !== undefined) {
      resolved.wheel_speed = msg.wheel_speed;
    }
    else {
      resolved.wheel_speed = []
    }

    if (msg.engine_rpm !== undefined) {
      resolved.engine_rpm = msg.engine_rpm;
    }
    else {
      resolved.engine_rpm = 0.0
    }

    if (msg.odometer !== undefined) {
      resolved.odometer = msg.odometer;
    }
    else {
      resolved.odometer = 0.0
    }

    if (msg.fuel_level !== undefined) {
      resolved.fuel_level = msg.fuel_level;
    }
    else {
      resolved.fuel_level = 0.0
    }

    return resolved;
    }
};

// Constants for message
LeadgenChassis.Constants = {
  AUTO_MODE_OFF: 0,
  AUTO_MODE_SYSTEM_ON: 1,
  AUTO_MODE_BRAKE_ON: 2,
  AUTO_MODE_THROTTLE_ON: 4,
  AUTO_MODE_SPEED_ON: 8,
  AUTO_MODE_STEER_ON: 16,
  AUTO_MODE_STEER_POS: 32,
  AUTO_MODE_STEER_VEL: 64,
  AUTO_MODE_STEER_TOR: 128,
  GEAR_INVALID: 0,
  GEAR_P: 1,
  GEAR_R: 2,
  GEAR_N: 4,
  GEAR_D: 8,
}

module.exports = LeadgenChassis;
