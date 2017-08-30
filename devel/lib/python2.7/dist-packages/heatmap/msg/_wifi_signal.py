# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from heatmap/wifi_signal.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class wifi_signal(genpy.Message):
  _md5sum = "b1bcb6a0e5568de595abd530de98b7d6"
  _type = "heatmap/wifi_signal"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """string essid
uint8 link_quality
uint8 link_quality_max
int32 bitrate
"""
  __slots__ = ['essid','link_quality','link_quality_max','bitrate']
  _slot_types = ['string','uint8','uint8','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       essid,link_quality,link_quality_max,bitrate

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(wifi_signal, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.essid is None:
        self.essid = ''
      if self.link_quality is None:
        self.link_quality = 0
      if self.link_quality_max is None:
        self.link_quality_max = 0
      if self.bitrate is None:
        self.bitrate = 0
    else:
      self.essid = ''
      self.link_quality = 0
      self.link_quality_max = 0
      self.bitrate = 0

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
      _x = self.essid
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2Bi.pack(_x.link_quality, _x.link_quality_max, _x.bitrate))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.essid = str[start:end].decode('utf-8')
      else:
        self.essid = str[start:end]
      _x = self
      start = end
      end += 6
      (_x.link_quality, _x.link_quality_max, _x.bitrate,) = _struct_2Bi.unpack(str[start:end])
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
      _x = self.essid
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2Bi.pack(_x.link_quality, _x.link_quality_max, _x.bitrate))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.essid = str[start:end].decode('utf-8')
      else:
        self.essid = str[start:end]
      _x = self
      start = end
      end += 6
      (_x.link_quality, _x.link_quality_max, _x.bitrate,) = _struct_2Bi.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_2Bi = struct.Struct("<2Bi")