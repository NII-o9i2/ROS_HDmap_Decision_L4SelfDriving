// Auto-generated. Do not edit!

// (in-package leadgen_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LeadgenObstacleInput = require('./LeadgenObstacleInput.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LeadgenObsInputArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.obstacle_list = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('obstacle_list')) {
        this.obstacle_list = initObj.obstacle_list
      }
      else {
        this.obstacle_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LeadgenObsInputArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [obstacle_list]
    // Serialize the length for message field [obstacle_list]
    bufferOffset = _serializer.uint32(obj.obstacle_list.length, buffer, bufferOffset);
    obj.obstacle_list.forEach((val) => {
      bufferOffset = LeadgenObstacleInput.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LeadgenObsInputArray
    let len;
    let data = new LeadgenObsInputArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [obstacle_list]
    // Deserialize array length for message field [obstacle_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obstacle_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacle_list[i] = LeadgenObstacleInput.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.obstacle_list.forEach((val) => {
      length += LeadgenObstacleInput.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'leadgen_msgs/LeadgenObsInputArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a30eed43d9c6adce92d7eff55e32efee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message is to describe a list of obstacles
    
    # Header
    std_msgs/Header header
    
    # Obstacle list
    LeadgenObstacleInput[] obstacle_list
    
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
    MSG: leadgen_msgs/LeadgenObstacleInput
    # This message is to describe the information of an obstacle
    
    # Header
    std_msgs/Header header
    
    # obstacle ID number
    int32 id
    
    # obstacle detection sources(optional)
    uint16 source_sensor
    
    # obstacle source sensor definition, using bit-wise operations
    # A single obstacle can be detected by multiple sensors, and use OR operation as the result
    uint16 SENSOR_LIDAR = 1
    uint16 SENSOR_VISION = 2
    uint16 SENSOR_RADAR = 4
    
    # obstacle type(optional)
    uint8 type
    
    # obstacle type definitions
    # subject to change
    
    uint8 OBSTACLE_TYPE_UNKNOWN = 0
    uint8 OBSTACLE_TYPE_SMALL = 1
    uint8 OBSTACLE_TYPE_BIG = 2
    uint8 OBSTACLE_TYPE_CAR = 3
    uint8 OBSTACLE_TYPE_BUS = 4
    uint8 OBSTACLE_TYPE_TRUCK = 5
    uint8 OBSTACLE_TYPE_CYCLER = 6
    uint8 OBSTACLE_TYPE_PEDESTRIAN = 7
    uint8 OBSTACLE_TYPE_PLANT = 8
    uint8 OBSTACLE_TYPE_FENCE = 9
    
    # obstacle status(optional)
    uint8 status
    
    # obstacle status definitions
    # according to Mobileye specs
    uint8 OBSTACLE_STATUS_UNDEFINED = 0
    uint8 OBSTACLE_STATUS_STANDING = 1
    uint8 OBSTACLE_STATUS_STOPPED = 2
    uint8 OBSTACLE_STATUS_MOVING = 3
    uint8 OBSTACLE_STATUS_ONCOMING = 4
    uint8 OBSTACLE_STATUS_PARKED = 5
    uint8 OBSTACLE_STATUS_UNUSED = 6
    
    # obstacle cutting(optional)
    uint8 cutting
    
    # obstacle cutting definitions
    # according to Mobileye specs
    uint8 OBSTACLE_CUTTING_UNDEFINED = 0
    uint8 OBSTACLE_IN_HOST_LANE = 1
    uint8 OBSTACLE_OUT_HOST_LANE = 2
    uint8 OBSTACLE_CUTTING_IN = 3
    uint8 OBSTACLE_CUTTING_OUT = 4
    
    # obstacle size
    float32 length  # along obstacle's +x direction, in [m] meter
    float32 width   # along obstacle's +y direction, in [m]
    float32 height  # along obstacle's +z direction, in [m]
    
    float32 velocity_heading # the velocity heading in the world frame
    
    # obstacle pose in body frame
    bool rlt_valid  # relative information valid
    geometry_msgs/Point rlt_position    # relative position to body frame
    float32 rlt_theta   # relative theta angle, to body frame along z axis
    
    # obstacle velocity in body frame
    geometry_msgs/Vector3 rlt_velocity  # relative velocity to body frame 
    
    # obstacle pose in world frame
    bool abs_valid  # absolute information valid
    geometry_msgs/Point abs_position    # absolute position in world frame
    float32 abs_theta   # absolute yaw angle in world frame
    
    # obstacle velocity in world frame
    geometry_msgs/Vector3 abs_velocity  # absolute velocity in world frame
    
    
    
    
    
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LeadgenObsInputArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.obstacle_list !== undefined) {
      resolved.obstacle_list = new Array(msg.obstacle_list.length);
      for (let i = 0; i < resolved.obstacle_list.length; ++i) {
        resolved.obstacle_list[i] = LeadgenObstacleInput.Resolve(msg.obstacle_list[i]);
      }
    }
    else {
      resolved.obstacle_list = []
    }

    return resolved;
    }
};

module.exports = LeadgenObsInputArray;
