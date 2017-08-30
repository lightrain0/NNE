// Generated by gencpp from file hector_move_base_msgs/MoveBasePath.msg
// DO NOT EDIT!


#ifndef HECTOR_MOVE_BASE_MSGS_MESSAGE_MOVEBASEPATH_H
#define HECTOR_MOVE_BASE_MSGS_MESSAGE_MOVEBASEPATH_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <nav_msgs/Path.h>

namespace hector_move_base_msgs
{
template <class ContainerAllocator>
struct MoveBasePath_
{
  typedef MoveBasePath_<ContainerAllocator> Type;

  MoveBasePath_()
    : target_path()
    , speed(0.0)
    , fixed(false)  {
    }
  MoveBasePath_(const ContainerAllocator& _alloc)
    : target_path(_alloc)
    , speed(0.0)
    , fixed(false)  {
  (void)_alloc;
    }



   typedef  ::nav_msgs::Path_<ContainerAllocator>  _target_path_type;
  _target_path_type target_path;

   typedef float _speed_type;
  _speed_type speed;

   typedef uint8_t _fixed_type;
  _fixed_type fixed;




  typedef boost::shared_ptr< ::hector_move_base_msgs::MoveBasePath_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hector_move_base_msgs::MoveBasePath_<ContainerAllocator> const> ConstPtr;

}; // struct MoveBasePath_

typedef ::hector_move_base_msgs::MoveBasePath_<std::allocator<void> > MoveBasePath;

typedef boost::shared_ptr< ::hector_move_base_msgs::MoveBasePath > MoveBasePathPtr;
typedef boost::shared_ptr< ::hector_move_base_msgs::MoveBasePath const> MoveBasePathConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hector_move_base_msgs::MoveBasePath_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hector_move_base_msgs::MoveBasePath_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hector_move_base_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/indigo/share/nav_msgs/cmake/../msg'], 'hector_move_base_msgs': ['/home/evan/share/coverage_path_ws/src/hector_move_base_msgs/msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hector_move_base_msgs::MoveBasePath_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hector_move_base_msgs::MoveBasePath_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hector_move_base_msgs::MoveBasePath_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hector_move_base_msgs::MoveBasePath_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hector_move_base_msgs::MoveBasePath_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hector_move_base_msgs::MoveBasePath_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hector_move_base_msgs::MoveBasePath_<ContainerAllocator> >
{
  static const char* value()
  {
    return "01d1d8626316462580586d1490b5197c";
  }

  static const char* value(const ::hector_move_base_msgs::MoveBasePath_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x01d1d86263164625ULL;
  static const uint64_t static_value2 = 0x80586d1490b5197cULL;
};

template<class ContainerAllocator>
struct DataType< ::hector_move_base_msgs::MoveBasePath_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hector_move_base_msgs/MoveBasePath";
  }

  static const char* value(const ::hector_move_base_msgs::MoveBasePath_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hector_move_base_msgs::MoveBasePath_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nav_msgs/Path target_path\n\
float32 speed\n\
bool fixed\n\
\n\
================================================================================\n\
MSG: nav_msgs/Path\n\
#An array of poses that represents a Path for a robot to follow\n\
Header header\n\
geometry_msgs/PoseStamped[] poses\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of postion and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::hector_move_base_msgs::MoveBasePath_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hector_move_base_msgs::MoveBasePath_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.target_path);
      stream.next(m.speed);
      stream.next(m.fixed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MoveBasePath_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hector_move_base_msgs::MoveBasePath_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hector_move_base_msgs::MoveBasePath_<ContainerAllocator>& v)
  {
    s << indent << "target_path: ";
    s << std::endl;
    Printer< ::nav_msgs::Path_<ContainerAllocator> >::stream(s, indent + "  ", v.target_path);
    s << indent << "speed: ";
    Printer<float>::stream(s, indent + "  ", v.speed);
    s << indent << "fixed: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.fixed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HECTOR_MOVE_BASE_MSGS_MESSAGE_MOVEBASEPATH_H