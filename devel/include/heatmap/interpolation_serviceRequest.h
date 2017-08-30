// Generated by gencpp from file heatmap/interpolation_serviceRequest.msg
// DO NOT EDIT!


#ifndef HEATMAP_MESSAGE_INTERPOLATION_SERVICEREQUEST_H
#define HEATMAP_MESSAGE_INTERPOLATION_SERVICEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace heatmap
{
template <class ContainerAllocator>
struct interpolation_serviceRequest_
{
  typedef interpolation_serviceRequest_<ContainerAllocator> Type;

  interpolation_serviceRequest_()
    : spacing(0.0)
    , shepard_power(0.0)  {
    }
  interpolation_serviceRequest_(const ContainerAllocator& _alloc)
    : spacing(0.0)
    , shepard_power(0.0)  {
  (void)_alloc;
    }



   typedef float _spacing_type;
  _spacing_type spacing;

   typedef float _shepard_power_type;
  _shepard_power_type shepard_power;




  typedef boost::shared_ptr< ::heatmap::interpolation_serviceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::heatmap::interpolation_serviceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct interpolation_serviceRequest_

typedef ::heatmap::interpolation_serviceRequest_<std::allocator<void> > interpolation_serviceRequest;

typedef boost::shared_ptr< ::heatmap::interpolation_serviceRequest > interpolation_serviceRequestPtr;
typedef boost::shared_ptr< ::heatmap::interpolation_serviceRequest const> interpolation_serviceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::heatmap::interpolation_serviceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::heatmap::interpolation_serviceRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace heatmap

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'heatmap': ['/home/evan/share/coverage_path_ws/src/heatmap/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::heatmap::interpolation_serviceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::heatmap::interpolation_serviceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::heatmap::interpolation_serviceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::heatmap::interpolation_serviceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::heatmap::interpolation_serviceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::heatmap::interpolation_serviceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::heatmap::interpolation_serviceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b66f64912c684c7f11a22da3498c859e";
  }

  static const char* value(const ::heatmap::interpolation_serviceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb66f64912c684c7fULL;
  static const uint64_t static_value2 = 0x11a22da3498c859eULL;
};

template<class ContainerAllocator>
struct DataType< ::heatmap::interpolation_serviceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "heatmap/interpolation_serviceRequest";
  }

  static const char* value(const ::heatmap::interpolation_serviceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::heatmap::interpolation_serviceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 spacing\n\
float32 shepard_power\n\
";
  }

  static const char* value(const ::heatmap::interpolation_serviceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::heatmap::interpolation_serviceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.spacing);
      stream.next(m.shepard_power);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct interpolation_serviceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::heatmap::interpolation_serviceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::heatmap::interpolation_serviceRequest_<ContainerAllocator>& v)
  {
    s << indent << "spacing: ";
    Printer<float>::stream(s, indent + "  ", v.spacing);
    s << indent << "shepard_power: ";
    Printer<float>::stream(s, indent + "  ", v.shepard_power);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HEATMAP_MESSAGE_INTERPOLATION_SERVICEREQUEST_H
