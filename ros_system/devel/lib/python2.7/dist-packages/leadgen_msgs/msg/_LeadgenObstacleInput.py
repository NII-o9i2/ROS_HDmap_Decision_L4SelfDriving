# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from leadgen_msgs/LeadgenObstacleInput.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class LeadgenObstacleInput(genpy.Message):
  _md5sum = "f46fbbe4b1176a98fdda809f434653f1"
  _type = "leadgen_msgs/LeadgenObstacleInput"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """# This message is to describe the information of an obstacle

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
float64 z"""
  # Pseudo-constants
  SENSOR_LIDAR = 1
  SENSOR_VISION = 2
  SENSOR_RADAR = 4
  OBSTACLE_TYPE_UNKNOWN = 0
  OBSTACLE_TYPE_SMALL = 1
  OBSTACLE_TYPE_BIG = 2
  OBSTACLE_TYPE_CAR = 3
  OBSTACLE_TYPE_BUS = 4
  OBSTACLE_TYPE_TRUCK = 5
  OBSTACLE_TYPE_CYCLER = 6
  OBSTACLE_TYPE_PEDESTRIAN = 7
  OBSTACLE_TYPE_PLANT = 8
  OBSTACLE_TYPE_FENCE = 9
  OBSTACLE_STATUS_UNDEFINED = 0
  OBSTACLE_STATUS_STANDING = 1
  OBSTACLE_STATUS_STOPPED = 2
  OBSTACLE_STATUS_MOVING = 3
  OBSTACLE_STATUS_ONCOMING = 4
  OBSTACLE_STATUS_PARKED = 5
  OBSTACLE_STATUS_UNUSED = 6
  OBSTACLE_CUTTING_UNDEFINED = 0
  OBSTACLE_IN_HOST_LANE = 1
  OBSTACLE_OUT_HOST_LANE = 2
  OBSTACLE_CUTTING_IN = 3
  OBSTACLE_CUTTING_OUT = 4

  __slots__ = ['header','id','source_sensor','type','status','cutting','length','width','height','velocity_heading','rlt_valid','rlt_position','rlt_theta','rlt_velocity','abs_valid','abs_position','abs_theta','abs_velocity']
  _slot_types = ['std_msgs/Header','int32','uint16','uint8','uint8','uint8','float32','float32','float32','float32','bool','geometry_msgs/Point','float32','geometry_msgs/Vector3','bool','geometry_msgs/Point','float32','geometry_msgs/Vector3']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,id,source_sensor,type,status,cutting,length,width,height,velocity_heading,rlt_valid,rlt_position,rlt_theta,rlt_velocity,abs_valid,abs_position,abs_theta,abs_velocity

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LeadgenObstacleInput, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.id is None:
        self.id = 0
      if self.source_sensor is None:
        self.source_sensor = 0
      if self.type is None:
        self.type = 0
      if self.status is None:
        self.status = 0
      if self.cutting is None:
        self.cutting = 0
      if self.length is None:
        self.length = 0.
      if self.width is None:
        self.width = 0.
      if self.height is None:
        self.height = 0.
      if self.velocity_heading is None:
        self.velocity_heading = 0.
      if self.rlt_valid is None:
        self.rlt_valid = False
      if self.rlt_position is None:
        self.rlt_position = geometry_msgs.msg.Point()
      if self.rlt_theta is None:
        self.rlt_theta = 0.
      if self.rlt_velocity is None:
        self.rlt_velocity = geometry_msgs.msg.Vector3()
      if self.abs_valid is None:
        self.abs_valid = False
      if self.abs_position is None:
        self.abs_position = geometry_msgs.msg.Point()
      if self.abs_theta is None:
        self.abs_theta = 0.
      if self.abs_velocity is None:
        self.abs_velocity = geometry_msgs.msg.Vector3()
    else:
      self.header = std_msgs.msg.Header()
      self.id = 0
      self.source_sensor = 0
      self.type = 0
      self.status = 0
      self.cutting = 0
      self.length = 0.
      self.width = 0.
      self.height = 0.
      self.velocity_heading = 0.
      self.rlt_valid = False
      self.rlt_position = geometry_msgs.msg.Point()
      self.rlt_theta = 0.
      self.rlt_velocity = geometry_msgs.msg.Vector3()
      self.abs_valid = False
      self.abs_position = geometry_msgs.msg.Point()
      self.abs_theta = 0.
      self.abs_velocity = geometry_msgs.msg.Vector3()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_iH3B4fB3df3dB3df3d().pack(_x.id, _x.source_sensor, _x.type, _x.status, _x.cutting, _x.length, _x.width, _x.height, _x.velocity_heading, _x.rlt_valid, _x.rlt_position.x, _x.rlt_position.y, _x.rlt_position.z, _x.rlt_theta, _x.rlt_velocity.x, _x.rlt_velocity.y, _x.rlt_velocity.z, _x.abs_valid, _x.abs_position.x, _x.abs_position.y, _x.abs_position.z, _x.abs_theta, _x.abs_velocity.x, _x.abs_velocity.y, _x.abs_velocity.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.rlt_position is None:
        self.rlt_position = geometry_msgs.msg.Point()
      if self.rlt_velocity is None:
        self.rlt_velocity = geometry_msgs.msg.Vector3()
      if self.abs_position is None:
        self.abs_position = geometry_msgs.msg.Point()
      if self.abs_velocity is None:
        self.abs_velocity = geometry_msgs.msg.Vector3()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 131
      (_x.id, _x.source_sensor, _x.type, _x.status, _x.cutting, _x.length, _x.width, _x.height, _x.velocity_heading, _x.rlt_valid, _x.rlt_position.x, _x.rlt_position.y, _x.rlt_position.z, _x.rlt_theta, _x.rlt_velocity.x, _x.rlt_velocity.y, _x.rlt_velocity.z, _x.abs_valid, _x.abs_position.x, _x.abs_position.y, _x.abs_position.z, _x.abs_theta, _x.abs_velocity.x, _x.abs_velocity.y, _x.abs_velocity.z,) = _get_struct_iH3B4fB3df3dB3df3d().unpack(str[start:end])
      self.rlt_valid = bool(self.rlt_valid)
      self.abs_valid = bool(self.abs_valid)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_iH3B4fB3df3dB3df3d().pack(_x.id, _x.source_sensor, _x.type, _x.status, _x.cutting, _x.length, _x.width, _x.height, _x.velocity_heading, _x.rlt_valid, _x.rlt_position.x, _x.rlt_position.y, _x.rlt_position.z, _x.rlt_theta, _x.rlt_velocity.x, _x.rlt_velocity.y, _x.rlt_velocity.z, _x.abs_valid, _x.abs_position.x, _x.abs_position.y, _x.abs_position.z, _x.abs_theta, _x.abs_velocity.x, _x.abs_velocity.y, _x.abs_velocity.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.rlt_position is None:
        self.rlt_position = geometry_msgs.msg.Point()
      if self.rlt_velocity is None:
        self.rlt_velocity = geometry_msgs.msg.Vector3()
      if self.abs_position is None:
        self.abs_position = geometry_msgs.msg.Point()
      if self.abs_velocity is None:
        self.abs_velocity = geometry_msgs.msg.Vector3()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 131
      (_x.id, _x.source_sensor, _x.type, _x.status, _x.cutting, _x.length, _x.width, _x.height, _x.velocity_heading, _x.rlt_valid, _x.rlt_position.x, _x.rlt_position.y, _x.rlt_position.z, _x.rlt_theta, _x.rlt_velocity.x, _x.rlt_velocity.y, _x.rlt_velocity.z, _x.abs_valid, _x.abs_position.x, _x.abs_position.y, _x.abs_position.z, _x.abs_theta, _x.abs_velocity.x, _x.abs_velocity.y, _x.abs_velocity.z,) = _get_struct_iH3B4fB3df3dB3df3d().unpack(str[start:end])
      self.rlt_valid = bool(self.rlt_valid)
      self.abs_valid = bool(self.abs_valid)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_iH3B4fB3df3dB3df3d = None
def _get_struct_iH3B4fB3df3dB3df3d():
    global _struct_iH3B4fB3df3dB3df3d
    if _struct_iH3B4fB3df3dB3df3d is None:
        _struct_iH3B4fB3df3dB3df3d = struct.Struct("<iH3B4fB3df3dB3df3d")
    return _struct_iH3B4fB3df3dB3df3d
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
