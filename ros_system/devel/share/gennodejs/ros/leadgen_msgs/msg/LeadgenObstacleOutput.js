// Auto-generated. Do not edit!

// (in-package leadgen_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LeadgenWaypoint = require('./LeadgenWaypoint.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LeadgenObstacleOutput {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.source_sensor = null;
      this.type = null;
      this.status = null;
      this.cutting = null;
      this.length = null;
      this.width = null;
      this.height = null;
      this.velocity_heading = null;
      this.rlt_valid = null;
      this.rlt_position = null;
      this.rlt_theta = null;
      this.rlt_velocity = null;
      this.abs_valid = null;
      this.abs_position = null;
      this.abs_theta = null;
      this.abs_velocity = null;
      this.longitude_tag = null;
      this.lateral_tag = null;
      this.predicted_traj = null;
      this.predicted_period = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('source_sensor')) {
        this.source_sensor = initObj.source_sensor
      }
      else {
        this.source_sensor = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('cutting')) {
        this.cutting = initObj.cutting
      }
      else {
        this.cutting = 0;
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
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_heading')) {
        this.velocity_heading = initObj.velocity_heading
      }
      else {
        this.velocity_heading = 0.0;
      }
      if (initObj.hasOwnProperty('rlt_valid')) {
        this.rlt_valid = initObj.rlt_valid
      }
      else {
        this.rlt_valid = false;
      }
      if (initObj.hasOwnProperty('rlt_position')) {
        this.rlt_position = initObj.rlt_position
      }
      else {
        this.rlt_position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('rlt_theta')) {
        this.rlt_theta = initObj.rlt_theta
      }
      else {
        this.rlt_theta = 0.0;
      }
      if (initObj.hasOwnProperty('rlt_velocity')) {
        this.rlt_velocity = initObj.rlt_velocity
      }
      else {
        this.rlt_velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('abs_valid')) {
        this.abs_valid = initObj.abs_valid
      }
      else {
        this.abs_valid = false;
      }
      if (initObj.hasOwnProperty('abs_position')) {
        this.abs_position = initObj.abs_position
      }
      else {
        this.abs_position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('abs_theta')) {
        this.abs_theta = initObj.abs_theta
      }
      else {
        this.abs_theta = 0.0;
      }
      if (initObj.hasOwnProperty('abs_velocity')) {
        this.abs_velocity = initObj.abs_velocity
      }
      else {
        this.abs_velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('longitude_tag')) {
        this.longitude_tag = initObj.longitude_tag
      }
      else {
        this.longitude_tag = 0;
      }
      if (initObj.hasOwnProperty('lateral_tag')) {
        this.lateral_tag = initObj.lateral_tag
      }
      else {
        this.lateral_tag = 0;
      }
      if (initObj.hasOwnProperty('predicted_traj')) {
        this.predicted_traj = initObj.predicted_traj
      }
      else {
        this.predicted_traj = [];
      }
      if (initObj.hasOwnProperty('predicted_period')) {
        this.predicted_period = initObj.predicted_period
      }
      else {
        this.predicted_period = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LeadgenObstacleOutput
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [source_sensor]
    bufferOffset = _serializer.uint16(obj.source_sensor, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [cutting]
    bufferOffset = _serializer.uint8(obj.cutting, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float32(obj.height, buffer, bufferOffset);
    // Serialize message field [velocity_heading]
    bufferOffset = _serializer.float32(obj.velocity_heading, buffer, bufferOffset);
    // Serialize message field [rlt_valid]
    bufferOffset = _serializer.bool(obj.rlt_valid, buffer, bufferOffset);
    // Serialize message field [rlt_position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.rlt_position, buffer, bufferOffset);
    // Serialize message field [rlt_theta]
    bufferOffset = _serializer.float32(obj.rlt_theta, buffer, bufferOffset);
    // Serialize message field [rlt_velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.rlt_velocity, buffer, bufferOffset);
    // Serialize message field [abs_valid]
    bufferOffset = _serializer.bool(obj.abs_valid, buffer, bufferOffset);
    // Serialize message field [abs_position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.abs_position, buffer, bufferOffset);
    // Serialize message field [abs_theta]
    bufferOffset = _serializer.float32(obj.abs_theta, buffer, bufferOffset);
    // Serialize message field [abs_velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.abs_velocity, buffer, bufferOffset);
    // Serialize message field [longitude_tag]
    bufferOffset = _serializer.uint8(obj.longitude_tag, buffer, bufferOffset);
    // Serialize message field [lateral_tag]
    bufferOffset = _serializer.uint8(obj.lateral_tag, buffer, bufferOffset);
    // Serialize message field [predicted_traj]
    // Serialize the length for message field [predicted_traj]
    bufferOffset = _serializer.uint32(obj.predicted_traj.length, buffer, bufferOffset);
    obj.predicted_traj.forEach((val) => {
      bufferOffset = LeadgenWaypoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [predicted_period]
    bufferOffset = _serializer.float32(obj.predicted_period, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LeadgenObstacleOutput
    let len;
    let data = new LeadgenObstacleOutput(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [source_sensor]
    data.source_sensor = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cutting]
    data.cutting = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity_heading]
    data.velocity_heading = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rlt_valid]
    data.rlt_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rlt_position]
    data.rlt_position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [rlt_theta]
    data.rlt_theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rlt_velocity]
    data.rlt_velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [abs_valid]
    data.abs_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [abs_position]
    data.abs_position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [abs_theta]
    data.abs_theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [abs_velocity]
    data.abs_velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [longitude_tag]
    data.longitude_tag = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lateral_tag]
    data.lateral_tag = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [predicted_traj]
    // Deserialize array length for message field [predicted_traj]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.predicted_traj = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.predicted_traj[i] = LeadgenWaypoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [predicted_period]
    data.predicted_period = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 72 * object.predicted_traj.length;
    return length + 141;
  }

  static datatype() {
    // Returns string type for a message object
    return 'leadgen_msgs/LeadgenObstacleOutput';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9d60182ab72336c69a9994033628ca2b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    # decision tags
    uint8 longitude_tag
    uint8 lateral_tag
    
    # decision tag definitions
    uint8 IGNORE = 0 
    uint8 STAY_BEHIND = 1
    
    uint8 NUDGE_LEFT = 2   
    uint8 NUDGE_RIGHT = 3 
    uint8 NOT_AVAILABLE = 4 
    
    LeadgenWaypoint[] predicted_traj
    float32 predicted_period
    
    
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
    ================================================================================
    MSG: leadgen_msgs/LeadgenWaypoint
    # This message is to describe a WAYPOINT in the target trajectory
    
    # header
    # std_msgs/Header header
    
    # 3D position
    geometry_msgs/Point point
    
    # trace info
    float64 theta # the heading of the trace at this point
    float64 kappa # the curvature of the trace at this point
    
    # SL info
    float64 station
    float64 lateral
    
    # speed info
    float32 speed # in [m/s]
    float32 accel # in [m/s^2],(optional)
    
    time time_arrival # the expected arrival time of this point
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LeadgenObstacleOutput(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.source_sensor !== undefined) {
      resolved.source_sensor = msg.source_sensor;
    }
    else {
      resolved.source_sensor = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.cutting !== undefined) {
      resolved.cutting = msg.cutting;
    }
    else {
      resolved.cutting = 0
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

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.velocity_heading !== undefined) {
      resolved.velocity_heading = msg.velocity_heading;
    }
    else {
      resolved.velocity_heading = 0.0
    }

    if (msg.rlt_valid !== undefined) {
      resolved.rlt_valid = msg.rlt_valid;
    }
    else {
      resolved.rlt_valid = false
    }

    if (msg.rlt_position !== undefined) {
      resolved.rlt_position = geometry_msgs.msg.Point.Resolve(msg.rlt_position)
    }
    else {
      resolved.rlt_position = new geometry_msgs.msg.Point()
    }

    if (msg.rlt_theta !== undefined) {
      resolved.rlt_theta = msg.rlt_theta;
    }
    else {
      resolved.rlt_theta = 0.0
    }

    if (msg.rlt_velocity !== undefined) {
      resolved.rlt_velocity = geometry_msgs.msg.Vector3.Resolve(msg.rlt_velocity)
    }
    else {
      resolved.rlt_velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.abs_valid !== undefined) {
      resolved.abs_valid = msg.abs_valid;
    }
    else {
      resolved.abs_valid = false
    }

    if (msg.abs_position !== undefined) {
      resolved.abs_position = geometry_msgs.msg.Point.Resolve(msg.abs_position)
    }
    else {
      resolved.abs_position = new geometry_msgs.msg.Point()
    }

    if (msg.abs_theta !== undefined) {
      resolved.abs_theta = msg.abs_theta;
    }
    else {
      resolved.abs_theta = 0.0
    }

    if (msg.abs_velocity !== undefined) {
      resolved.abs_velocity = geometry_msgs.msg.Vector3.Resolve(msg.abs_velocity)
    }
    else {
      resolved.abs_velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.longitude_tag !== undefined) {
      resolved.longitude_tag = msg.longitude_tag;
    }
    else {
      resolved.longitude_tag = 0
    }

    if (msg.lateral_tag !== undefined) {
      resolved.lateral_tag = msg.lateral_tag;
    }
    else {
      resolved.lateral_tag = 0
    }

    if (msg.predicted_traj !== undefined) {
      resolved.predicted_traj = new Array(msg.predicted_traj.length);
      for (let i = 0; i < resolved.predicted_traj.length; ++i) {
        resolved.predicted_traj[i] = LeadgenWaypoint.Resolve(msg.predicted_traj[i]);
      }
    }
    else {
      resolved.predicted_traj = []
    }

    if (msg.predicted_period !== undefined) {
      resolved.predicted_period = msg.predicted_period;
    }
    else {
      resolved.predicted_period = 0.0
    }

    return resolved;
    }
};

// Constants for message
LeadgenObstacleOutput.Constants = {
  SENSOR_LIDAR: 1,
  SENSOR_VISION: 2,
  SENSOR_RADAR: 4,
  OBSTACLE_TYPE_UNKNOWN: 0,
  OBSTACLE_TYPE_SMALL: 1,
  OBSTACLE_TYPE_BIG: 2,
  OBSTACLE_TYPE_CAR: 3,
  OBSTACLE_TYPE_BUS: 4,
  OBSTACLE_TYPE_TRUCK: 5,
  OBSTACLE_TYPE_CYCLER: 6,
  OBSTACLE_TYPE_PEDESTRIAN: 7,
  OBSTACLE_TYPE_PLANT: 8,
  OBSTACLE_TYPE_FENCE: 9,
  OBSTACLE_STATUS_UNDEFINED: 0,
  OBSTACLE_STATUS_STANDING: 1,
  OBSTACLE_STATUS_STOPPED: 2,
  OBSTACLE_STATUS_MOVING: 3,
  OBSTACLE_STATUS_ONCOMING: 4,
  OBSTACLE_STATUS_PARKED: 5,
  OBSTACLE_STATUS_UNUSED: 6,
  OBSTACLE_CUTTING_UNDEFINED: 0,
  OBSTACLE_IN_HOST_LANE: 1,
  OBSTACLE_OUT_HOST_LANE: 2,
  OBSTACLE_CUTTING_IN: 3,
  OBSTACLE_CUTTING_OUT: 4,
  IGNORE: 0,
  STAY_BEHIND: 1,
  NUDGE_LEFT: 2,
  NUDGE_RIGHT: 3,
  NOT_AVAILABLE: 4,
}

module.exports = LeadgenObstacleOutput;
