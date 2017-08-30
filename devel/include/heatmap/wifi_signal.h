// Generated by gencpp from file heatmap/wifi_signal.msg
// DO NOT EDIT!


#ifndef HEATMAP_MESSAGE_WIFI_SIGNAL_H
#define HEATMAP_MESSAGE_WIFI_SIGNAL_H


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
struct wifi_signal_
{
  typedef wifi_signal_<ContainerAllocator> Type;

  wifi_signal_()
    : essid()
    , link_quality(0)
    , link_quality_max(0)
    , bitrate(0)  {
    }
  wifi_signal_(const ContainerAllocator& _alloc)
    : essid(_alloc)
    , link_quality(0)
    , link_quality_max(0)
    , bitrate(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _essid_type;
  _essid_type essid;

   typedef uint8_t _link_quality_type;
  _link_quality_type link_quality;

   typedef uint8_t _link_quality_max_type;
  _link_quality_max_type link_quality_max;

   typedef int32_t _bitrate_type;
  _bitrate_type bitrate;




  typedef boost::shared_ptr< ::heatmap::wifi_signal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::heatmap::wifi_signal_<ContainerAllocator> const> ConstPtr;

}; // struct wifi_signal_

typedef ::heatmap::wifi_signal_<std::allocator<void> > wifi_signal;

typedef boost::shared_ptr< ::heatmap::wifi_signal > wifi_signalPtr;
typedef boost::shared_ptr< ::heatmap::wifi_signal const> wifi_signalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::heatmap::wifi_signal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::heatmap::wifi_signal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace heatmap

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'heatmap': ['/home/evan/share/coverage_path_ws/src/heatmap/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::heatmap::wifi_signal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::heatmap::wifi_signal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::heatmap::wifi_signal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::heatmap::wifi_signal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::heatmap::wifi_signal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::heatmap::wifi_signal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::heatmap::wifi_signal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b1bcb6a0e5568de595abd530de98b7d6";
  }

  static const char* value(const ::heatmap::wifi_signal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb1bcb6a0e5568de5ULL;
  static const uint64_t static_value2 = 0x95abd530de98b7d6ULL;
};

template<class ContainerAllocator>
struct DataType< ::heatmap::wifi_signal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "heatmap/wifi_signal";
  }

  static const char* value(const ::heatmap::wifi_signal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::heatmap::wifi_signal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string essid\n\
uint8 link_quality\n\
uint8 link_quality_max\n\
int32 bitrate\n\
";
  }

  static const char* value(const ::heatmap::wifi_signal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::heatmap::wifi_signal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.essid);
      stream.next(m.link_quality);
      stream.next(m.link_quality_max);
      stream.next(m.bitrate);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct wifi_signal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::heatmap::wifi_signal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::heatmap::wifi_signal_<ContainerAllocator>& v)
  {
    s << indent << "essid: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.essid);
    s << indent << "link_quality: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.link_quality);
    s << indent << "link_quality_max: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.link_quality_max);
    s << indent << "bitrate: ";
    Printer<int32_t>::stream(s, indent + "  ", v.bitrate);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HEATMAP_MESSAGE_WIFI_SIGNAL_H
