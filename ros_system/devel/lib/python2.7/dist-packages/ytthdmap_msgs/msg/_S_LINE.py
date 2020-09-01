# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ytthdmap_msgs/S_LINE.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import ytthdmap_msgs.msg

class S_LINE(genpy.Message):
  _md5sum = "d3328978b048138c7828f4b617f1ca2a"
  _type = "ytthdmap_msgs/S_LINE"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int16 type
int16 linetype
S_POINT[100] point
int16 pointnum
================================================================================
MSG: ytthdmap_msgs/S_POINT
float64 x
float64 y
float64 z"""
  __slots__ = ['type','linetype','point','pointnum']
  _slot_types = ['int16','int16','ytthdmap_msgs/S_POINT[100]','int16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       type,linetype,point,pointnum

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(S_LINE, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.type is None:
        self.type = 0
      if self.linetype is None:
        self.linetype = 0
      if self.point is None:
        self.point = [ytthdmap_msgs.msg.S_POINT() for _ in range(100)]
      if self.pointnum is None:
        self.pointnum = 0
    else:
      self.type = 0
      self.linetype = 0
      self.point = [ytthdmap_msgs.msg.S_POINT() for _ in range(100)]
      self.pointnum = 0

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
      buff.write(_get_struct_2h().pack(_x.type, _x.linetype))
      for val1 in self.point:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      buff.write(_get_struct_h().pack(self.pointnum))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.point is None:
        self.point = None
      end = 0
      _x = self
      start = end
      end += 4
      (_x.type, _x.linetype,) = _get_struct_2h().unpack(str[start:end])
      self.point = []
      for i in range(0, 100):
        val1 = ytthdmap_msgs.msg.S_POINT()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.point.append(val1)
      start = end
      end += 2
      (self.pointnum,) = _get_struct_h().unpack(str[start:end])
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
      buff.write(_get_struct_2h().pack(_x.type, _x.linetype))
      for val1 in self.point:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      buff.write(_get_struct_h().pack(self.pointnum))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.point is None:
        self.point = None
      end = 0
      _x = self
      start = end
      end += 4
      (_x.type, _x.linetype,) = _get_struct_2h().unpack(str[start:end])
      self.point = []
      for i in range(0, 100):
        val1 = ytthdmap_msgs.msg.S_POINT()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.point.append(val1)
      start = end
      end += 2
      (self.pointnum,) = _get_struct_h().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_h = None
def _get_struct_h():
    global _struct_h
    if _struct_h is None:
        _struct_h = struct.Struct("<h")
    return _struct_h
_struct_2h = None
def _get_struct_2h():
    global _struct_2h
    if _struct_2h is None:
        _struct_2h = struct.Struct("<2h")
    return _struct_2h
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
