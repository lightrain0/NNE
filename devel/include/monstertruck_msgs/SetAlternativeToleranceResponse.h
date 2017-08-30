// Generated by gencpp from file monstertruck_msgs/SetAlternativeToleranceResponse.msg
// DO NOT EDIT!


#ifndef MONSTERTRUCK_MSGS_MESSAGE_SETALTERNATIVETOLERANCERESPONSE_H
#define MONSTERTRUCK_MSGS_MESSAGE_SETALTERNATIVETOLERANCERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace monstertruck_msgs
{
template <class ContainerAllocator>
struct SetAlternativeToleranceResponse_
{
  typedef SetAlternativeToleranceResponse_<ContainerAllocator> Type;

  SetAlternativeToleranceResponse_()
    {
    }
  SetAlternativeToleranceResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }






  typedef boost::shared_ptr< ::monstertruck_msgs::SetAlternativeToleranceResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::monstertruck_msgs::SetAlternativeToleranceResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetAlternativeToleranceResponse_

typedef ::monstertruck_msgs::SetAlternativeToleranceResponse_<std::allocator<void> > SetAlternativeToleranceResponse;

typedef boost::shared_ptr< ::monstertruck_msgs::SetAlternativeToleranceResponse > SetAlternativeToleranceResponsePtr;
typedef boost::shared_ptr< ::monstertruck_msgs::SetAlternativeToleranceResponse const> SetAlternativeToleranceResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::monstertruck_msgs::SetAlternativeToleranceResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::monstertruck_msgs::SetAlternativeToleranceResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace monstertruck_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'monstertruck_msgs': ['/home/evan/share/coverage_path_ws/src/monstertruck_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::monstertruck_msgs::SetAlternativeToleranceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::monstertruck_msgs::SetAlternativeToleranceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::monstertruck_msgs::SetAlternativeToleranceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::monstertruck_msgs::SetAlternativeToleranceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::monstertruck_msgs::SetAlternativeToleranceResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::monstertruck_msgs::SetAlternativeToleranceResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::monstertruck_msgs::SetAlternativeToleranceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::monstertruck_msgs::SetAlternativeToleranceResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::monstertruck_msgs::SetAlternativeToleranceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "monstertruck_msgs/SetAlternativeToleranceResponse";
  }

  static const char* value(const ::monstertruck_msgs::SetAlternativeToleranceResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::monstertruck_msgs::SetAlternativeToleranceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::monstertruck_msgs::SetAlternativeToleranceResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::monstertruck_msgs::SetAlternativeToleranceResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetAlternativeToleranceResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::monstertruck_msgs::SetAlternativeToleranceResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::monstertruck_msgs::SetAlternativeToleranceResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // MONSTERTRUCK_MSGS_MESSAGE_SETALTERNATIVETOLERANCERESPONSE_H
