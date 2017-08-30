// Generated by gencpp from file hector_move_base_msgs/MoveBaseExplore.msg
// DO NOT EDIT!


#ifndef HECTOR_MOVE_BASE_MSGS_MESSAGE_MOVEBASEEXPLORE_H
#define HECTOR_MOVE_BASE_MSGS_MESSAGE_MOVEBASEEXPLORE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hector_move_base_msgs
{
template <class ContainerAllocator>
struct MoveBaseExplore_
{
  typedef MoveBaseExplore_<ContainerAllocator> Type;

  MoveBaseExplore_()
    : speed(0.0)  {
    }
  MoveBaseExplore_(const ContainerAllocator& _alloc)
    : speed(0.0)  {
  (void)_alloc;
    }



   typedef float _speed_type;
  _speed_type speed;




  typedef boost::shared_ptr< ::hector_move_base_msgs::MoveBaseExplore_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hector_move_base_msgs::MoveBaseExplore_<ContainerAllocator> const> ConstPtr;

}; // struct MoveBaseExplore_

typedef ::hector_move_base_msgs::MoveBaseExplore_<std::allocator<void> > MoveBaseExplore;

typedef boost::shared_ptr< ::hector_move_base_msgs::MoveBaseExplore > MoveBaseExplorePtr;
typedef boost::shared_ptr< ::hector_move_base_msgs::MoveBaseExplore const> MoveBaseExploreConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hector_move_base_msgs::MoveBaseExplore_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hector_move_base_msgs::MoveBaseExplore_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hector_move_base_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/indigo/share/nav_msgs/cmake/../msg'], 'hector_move_base_msgs': ['/home/evan/share/coverage_path_ws/src/hector_move_base_msgs/msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hector_move_base_msgs::MoveBaseExplore_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hector_move_base_msgs::MoveBaseExplore_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hector_move_base_msgs::MoveBaseExplore_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hector_move_base_msgs::MoveBaseExplore_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hector_move_base_msgs::MoveBaseExplore_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hector_move_base_msgs::MoveBaseExplore_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hector_move_base_msgs::MoveBaseExplore_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ca65bba734a79b4a6707341d829f4d5c";
  }

  static const char* value(const ::hector_move_base_msgs::MoveBaseExplore_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xca65bba734a79b4aULL;
  static const uint64_t static_value2 = 0x6707341d829f4d5cULL;
};

template<class ContainerAllocator>
struct DataType< ::hector_move_base_msgs::MoveBaseExplore_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hector_move_base_msgs/MoveBaseExplore";
  }

  static const char* value(const ::hector_move_base_msgs::MoveBaseExplore_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hector_move_base_msgs::MoveBaseExplore_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 speed\n\
";
  }

  static const char* value(const ::hector_move_base_msgs::MoveBaseExplore_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hector_move_base_msgs::MoveBaseExplore_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.speed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MoveBaseExplore_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hector_move_base_msgs::MoveBaseExplore_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hector_move_base_msgs::MoveBaseExplore_<ContainerAllocator>& v)
  {
    s << indent << "speed: ";
    Printer<float>::stream(s, indent + "  ", v.speed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HECTOR_MOVE_BASE_MSGS_MESSAGE_MOVEBASEEXPLORE_H
