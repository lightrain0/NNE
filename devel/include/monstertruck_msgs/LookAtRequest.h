// Generated by gencpp from file monstertruck_msgs/LookAtRequest.msg
// DO NOT EDIT!


#ifndef MONSTERTRUCK_MSGS_MESSAGE_LOOKATREQUEST_H
#define MONSTERTRUCK_MSGS_MESSAGE_LOOKATREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PointStamped.h>

namespace monstertruck_msgs
{
template <class ContainerAllocator>
struct LookAtRequest_
{
  typedef LookAtRequest_<ContainerAllocator> Type;

  LookAtRequest_()
    : point()
    , duration()  {
    }
  LookAtRequest_(const ContainerAllocator& _alloc)
    : point(_alloc)
    , duration()  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::PointStamped_<ContainerAllocator>  _point_type;
  _point_type point;

   typedef ros::Duration _duration_type;
  _duration_type duration;




  typedef boost::shared_ptr< ::monstertruck_msgs::LookAtRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::monstertruck_msgs::LookAtRequest_<ContainerAllocator> const> ConstPtr;

}; // struct LookAtRequest_

typedef ::monstertruck_msgs::LookAtRequest_<std::allocator<void> > LookAtRequest;

typedef boost::shared_ptr< ::monstertruck_msgs::LookAtRequest > LookAtRequestPtr;
typedef boost::shared_ptr< ::monstertruck_msgs::LookAtRequest const> LookAtRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::monstertruck_msgs::LookAtRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::monstertruck_msgs::LookAtRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace monstertruck_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'monstertruck_msgs': ['/home/evan/share/coverage_path_ws/src/monstertruck_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::monstertruck_msgs::LookAtRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::monstertruck_msgs::LookAtRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::monstertruck_msgs::LookAtRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::monstertruck_msgs::LookAtRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::monstertruck_msgs::LookAtRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::monstertruck_msgs::LookAtRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::monstertruck_msgs::LookAtRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "574e46e9b1544de88826572f80572960";
  }

  static const char* value(const ::monstertruck_msgs::LookAtRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x574e46e9b1544de8ULL;
  static const uint64_t static_value2 = 0x8826572f80572960ULL;
};

template<class ContainerAllocator>
struct DataType< ::monstertruck_msgs::LookAtRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "monstertruck_msgs/LookAtRequest";
  }

  static const char* value(const ::monstertruck_msgs::LookAtRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::monstertruck_msgs::LookAtRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
geometry_msgs/PointStamped point\n\
\n\
\n\
\n\
duration duration\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PointStamped\n\
# This represents a Point with reference coordinate frame and timestamp\n\
Header header\n\
Point point\n\
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
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::monstertruck_msgs::LookAtRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::monstertruck_msgs::LookAtRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.point);
      stream.next(m.duration);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LookAtRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::monstertruck_msgs::LookAtRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::monstertruck_msgs::LookAtRequest_<ContainerAllocator>& v)
  {
    s << indent << "point: ";
    s << std::endl;
    Printer< ::geometry_msgs::PointStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.point);
    s << indent << "duration: ";
    Printer<ros::Duration>::stream(s, indent + "  ", v.duration);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MONSTERTRUCK_MSGS_MESSAGE_LOOKATREQUEST_H
