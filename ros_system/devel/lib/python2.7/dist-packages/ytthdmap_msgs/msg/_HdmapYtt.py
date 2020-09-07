# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ytthdmap_msgs/HdmapYtt.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import ytthdmap_msgs.msg
import std_msgs.msg

class HdmapYtt(genpy.Message):
  _md5sum = "965fc75ddac5682aff9e25ac32f36524"
  _type = "ytthdmap_msgs/HdmapYtt"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header
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
"""
  __slots__ = ['header','time','isValidlane','positionstate','curlane','laneinfo','speedlim','stopline','istunnel','nextlaneCH']
  _slot_types = ['std_msgs/Header','int16','int16','int16','int16','ytthdmap_msgs/S_LANEINFO[5]','float32','ytthdmap_msgs/S_STOPLINE','bool','int16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,time,isValidlane,positionstate,curlane,laneinfo,speedlim,stopline,istunnel,nextlaneCH

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(HdmapYtt, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.time is None:
        self.time = 0
      if self.isValidlane is None:
        self.isValidlane = 0
      if self.positionstate is None:
        self.positionstate = 0
      if self.curlane is None:
        self.curlane = 0
      if self.laneinfo is None:
        self.laneinfo = [ytthdmap_msgs.msg.S_LANEINFO() for _ in range(5)]
      if self.speedlim is None:
        self.speedlim = 0.
      if self.stopline is None:
        self.stopline = ytthdmap_msgs.msg.S_STOPLINE()
      if self.istunnel is None:
        self.istunnel = False
      if self.nextlaneCH is None:
        self.nextlaneCH = 0
    else:
      self.header = std_msgs.msg.Header()
      self.time = 0
      self.isValidlane = 0
      self.positionstate = 0
      self.curlane = 0
      self.laneinfo = [ytthdmap_msgs.msg.S_LANEINFO() for _ in range(5)]
      self.speedlim = 0.
      self.stopline = ytthdmap_msgs.msg.S_STOPLINE()
      self.istunnel = False
      self.nextlaneCH = 0

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
      buff.write(_get_struct_4h().pack(_x.time, _x.isValidlane, _x.positionstate, _x.curlane))
      for val1 in self.laneinfo:
        _v1 = val1.centerline
        _x = _v1
        buff.write(_get_struct_2h().pack(_x.type, _x.linetype))
        for val3 in _v1.point:
          _x = val3
          buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
        buff.write(_get_struct_h().pack(_v1.pointnum))
        _v2 = val1.leftboundry
        _x = _v2
        buff.write(_get_struct_2h().pack(_x.type, _x.linetype))
        for val3 in _v2.point:
          _x = val3
          buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
        buff.write(_get_struct_h().pack(_v2.pointnum))
        _v3 = val1.rightboundry
        _x = _v3
        buff.write(_get_struct_2h().pack(_x.type, _x.linetype))
        for val3 in _v3.point:
          _x = val3
          buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
        buff.write(_get_struct_h().pack(_v3.pointnum))
        _x = val1
        buff.write(_get_struct_fB3hf().pack(_x.width, _x.IsPartofRouting, _x.type, _x.direction, _x.id, _x.length))
      _x = self
      buff.write(_get_struct_f4h().pack(_x.speedlim, _x.stopline.offset, _x.stopline.latOffset, _x.stopline.type, _x.stopline.validnum))
      for val1 in self.stopline.point:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_get_struct_Bh().pack(_x.istunnel, _x.nextlaneCH))
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
      if self.laneinfo is None:
        self.laneinfo = None
      if self.stopline is None:
        self.stopline = ytthdmap_msgs.msg.S_STOPLINE()
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
      end += 8
      (_x.time, _x.isValidlane, _x.positionstate, _x.curlane,) = _get_struct_4h().unpack(str[start:end])
      self.laneinfo = []
      for i in range(0, 5):
        val1 = ytthdmap_msgs.msg.S_LANEINFO()
        _v4 = val1.centerline
        _x = _v4
        start = end
        end += 4
        (_x.type, _x.linetype,) = _get_struct_2h().unpack(str[start:end])
        _v4.point = []
        for i in range(0, 100):
          val3 = ytthdmap_msgs.msg.S_POINT()
          _x = val3
          start = end
          end += 12
          (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
          _v4.point.append(val3)
        start = end
        end += 2
        (_v4.pointnum,) = _get_struct_h().unpack(str[start:end])
        _v5 = val1.leftboundry
        _x = _v5
        start = end
        end += 4
        (_x.type, _x.linetype,) = _get_struct_2h().unpack(str[start:end])
        _v5.point = []
        for i in range(0, 100):
          val3 = ytthdmap_msgs.msg.S_POINT()
          _x = val3
          start = end
          end += 12
          (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
          _v5.point.append(val3)
        start = end
        end += 2
        (_v5.pointnum,) = _get_struct_h().unpack(str[start:end])
        _v6 = val1.rightboundry
        _x = _v6
        start = end
        end += 4
        (_x.type, _x.linetype,) = _get_struct_2h().unpack(str[start:end])
        _v6.point = []
        for i in range(0, 100):
          val3 = ytthdmap_msgs.msg.S_POINT()
          _x = val3
          start = end
          end += 12
          (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
          _v6.point.append(val3)
        start = end
        end += 2
        (_v6.pointnum,) = _get_struct_h().unpack(str[start:end])
        _x = val1
        start = end
        end += 15
        (_x.width, _x.IsPartofRouting, _x.type, _x.direction, _x.id, _x.length,) = _get_struct_fB3hf().unpack(str[start:end])
        val1.IsPartofRouting = bool(val1.IsPartofRouting)
        self.laneinfo.append(val1)
      _x = self
      start = end
      end += 12
      (_x.speedlim, _x.stopline.offset, _x.stopline.latOffset, _x.stopline.type, _x.stopline.validnum,) = _get_struct_f4h().unpack(str[start:end])
      self.stopline.point = []
      for i in range(0, 100):
        val1 = ytthdmap_msgs.msg.S_POINT()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.stopline.point.append(val1)
      _x = self
      start = end
      end += 3
      (_x.istunnel, _x.nextlaneCH,) = _get_struct_Bh().unpack(str[start:end])
      self.istunnel = bool(self.istunnel)
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
      buff.write(_get_struct_4h().pack(_x.time, _x.isValidlane, _x.positionstate, _x.curlane))
      for val1 in self.laneinfo:
        _v7 = val1.centerline
        _x = _v7
        buff.write(_get_struct_2h().pack(_x.type, _x.linetype))
        for val3 in _v7.point:
          _x = val3
          buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
        buff.write(_get_struct_h().pack(_v7.pointnum))
        _v8 = val1.leftboundry
        _x = _v8
        buff.write(_get_struct_2h().pack(_x.type, _x.linetype))
        for val3 in _v8.point:
          _x = val3
          buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
        buff.write(_get_struct_h().pack(_v8.pointnum))
        _v9 = val1.rightboundry
        _x = _v9
        buff.write(_get_struct_2h().pack(_x.type, _x.linetype))
        for val3 in _v9.point:
          _x = val3
          buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
        buff.write(_get_struct_h().pack(_v9.pointnum))
        _x = val1
        buff.write(_get_struct_fB3hf().pack(_x.width, _x.IsPartofRouting, _x.type, _x.direction, _x.id, _x.length))
      _x = self
      buff.write(_get_struct_f4h().pack(_x.speedlim, _x.stopline.offset, _x.stopline.latOffset, _x.stopline.type, _x.stopline.validnum))
      for val1 in self.stopline.point:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_get_struct_Bh().pack(_x.istunnel, _x.nextlaneCH))
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
      if self.laneinfo is None:
        self.laneinfo = None
      if self.stopline is None:
        self.stopline = ytthdmap_msgs.msg.S_STOPLINE()
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
      end += 8
      (_x.time, _x.isValidlane, _x.positionstate, _x.curlane,) = _get_struct_4h().unpack(str[start:end])
      self.laneinfo = []
      for i in range(0, 5):
        val1 = ytthdmap_msgs.msg.S_LANEINFO()
        _v10 = val1.centerline
        _x = _v10
        start = end
        end += 4
        (_x.type, _x.linetype,) = _get_struct_2h().unpack(str[start:end])
        _v10.point = []
        for i in range(0, 100):
          val3 = ytthdmap_msgs.msg.S_POINT()
          _x = val3
          start = end
          end += 12
          (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
          _v10.point.append(val3)
        start = end
        end += 2
        (_v10.pointnum,) = _get_struct_h().unpack(str[start:end])
        _v11 = val1.leftboundry
        _x = _v11
        start = end
        end += 4
        (_x.type, _x.linetype,) = _get_struct_2h().unpack(str[start:end])
        _v11.point = []
        for i in range(0, 100):
          val3 = ytthdmap_msgs.msg.S_POINT()
          _x = val3
          start = end
          end += 12
          (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
          _v11.point.append(val3)
        start = end
        end += 2
        (_v11.pointnum,) = _get_struct_h().unpack(str[start:end])
        _v12 = val1.rightboundry
        _x = _v12
        start = end
        end += 4
        (_x.type, _x.linetype,) = _get_struct_2h().unpack(str[start:end])
        _v12.point = []
        for i in range(0, 100):
          val3 = ytthdmap_msgs.msg.S_POINT()
          _x = val3
          start = end
          end += 12
          (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
          _v12.point.append(val3)
        start = end
        end += 2
        (_v12.pointnum,) = _get_struct_h().unpack(str[start:end])
        _x = val1
        start = end
        end += 15
        (_x.width, _x.IsPartofRouting, _x.type, _x.direction, _x.id, _x.length,) = _get_struct_fB3hf().unpack(str[start:end])
        val1.IsPartofRouting = bool(val1.IsPartofRouting)
        self.laneinfo.append(val1)
      _x = self
      start = end
      end += 12
      (_x.speedlim, _x.stopline.offset, _x.stopline.latOffset, _x.stopline.type, _x.stopline.validnum,) = _get_struct_f4h().unpack(str[start:end])
      self.stopline.point = []
      for i in range(0, 100):
        val1 = ytthdmap_msgs.msg.S_POINT()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.stopline.point.append(val1)
      _x = self
      start = end
      end += 3
      (_x.istunnel, _x.nextlaneCH,) = _get_struct_Bh().unpack(str[start:end])
      self.istunnel = bool(self.istunnel)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_fB3hf = None
def _get_struct_fB3hf():
    global _struct_fB3hf
    if _struct_fB3hf is None:
        _struct_fB3hf = struct.Struct("<fB3hf")
    return _struct_fB3hf
_struct_h = None
def _get_struct_h():
    global _struct_h
    if _struct_h is None:
        _struct_h = struct.Struct("<h")
    return _struct_h
_struct_Bh = None
def _get_struct_Bh():
    global _struct_Bh
    if _struct_Bh is None:
        _struct_Bh = struct.Struct("<Bh")
    return _struct_Bh
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_4h = None
def _get_struct_4h():
    global _struct_4h
    if _struct_4h is None:
        _struct_4h = struct.Struct("<4h")
    return _struct_4h
_struct_f4h = None
def _get_struct_f4h():
    global _struct_f4h
    if _struct_f4h is None:
        _struct_f4h = struct.Struct("<f4h")
    return _struct_f4h
_struct_2h = None
def _get_struct_2h():
    global _struct_2h
    if _struct_2h is None:
        _struct_2h = struct.Struct("<2h")
    return _struct_2h
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f