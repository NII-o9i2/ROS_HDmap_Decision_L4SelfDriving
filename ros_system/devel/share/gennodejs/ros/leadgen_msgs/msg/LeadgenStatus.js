// Auto-generated. Do not edit!

// (in-package leadgen_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LeadgenChassis = require('./LeadgenChassis.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LeadgenStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pose = null;
      this.linear_velocity = null;
      this.linear_acceleration = null;
      this.angular_velocity = null;
      this.chassis_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('linear_velocity')) {
        this.linear_velocity = initObj.linear_velocity
      }
      else {
        this.linear_velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('linear_acceleration')) {
        this.linear_acceleration = initObj.linear_acceleration
      }
      else {
        this.linear_acceleration = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('chassis_status')) {
        this.chassis_status = initObj.chassis_status
      }
      else {
        this.chassis_status = new LeadgenChassis();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LeadgenStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [linear_velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.linear_velocity, buffer, bufferOffset);
    // Serialize message field [linear_acceleration]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.linear_acceleration, buffer, bufferOffset);
    // Serialize message field [angular_velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.angular_velocity, buffer, bufferOffset);
    // Serialize message field [chassis_status]
    bufferOffset = LeadgenChassis.serialize(obj.chassis_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LeadgenStatus
    let len;
    let data = new LeadgenStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_velocity]
    data.linear_velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration]
    data.linear_acceleration = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [chassis_status]
    data.chassis_status = LeadgenChassis.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += LeadgenChassis.getMessageSize(object.chassis_status);
    return length + 128;
  }

  static datatype() {
    // Returns string type for a message object
    return 'leadgen_msgs/LeadgenStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '56b823ded06f347e2acd96e136b79bac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message is to describe the overall vehicle status
    # The message includes both vehicle positioning info and Chassis info
    
    # Header
    std_msgs/Header header
    
    # vehicle position
    geometry_msgs/Pose pose
    geometry_msgs/Vector3 linear_velocity
    geometry_msgs/Vector3 linear_acceleration
    geometry_msgs/Vector3 angular_velocity
    
    # vehicle chassis status
    LeadgenChassis chassis_status
    
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
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: leadgen_msgs/LeadgenChassis
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LeadgenStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.linear_velocity !== undefined) {
      resolved.linear_velocity = geometry_msgs.msg.Vector3.Resolve(msg.linear_velocity)
    }
    else {
      resolved.linear_velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.linear_acceleration !== undefined) {
      resolved.linear_acceleration = geometry_msgs.msg.Vector3.Resolve(msg.linear_acceleration)
    }
    else {
      resolved.linear_acceleration = new geometry_msgs.msg.Vector3()
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = geometry_msgs.msg.Vector3.Resolve(msg.angular_velocity)
    }
    else {
      resolved.angular_velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.chassis_status !== undefined) {
      resolved.chassis_status = LeadgenChassis.Resolve(msg.chassis_status)
    }
    else {
      resolved.chassis_status = new LeadgenChassis()
    }

    return resolved;
    }
};

module.exports = LeadgenStatus;
