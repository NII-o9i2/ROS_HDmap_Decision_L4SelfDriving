// Generated by gencpp from file locationsim_msgs/LOCATIONSIM.msg
// DO NOT EDIT!


#ifndef LOCATIONSIM_MSGS_MESSAGE_LOCATIONSIM_H
#define LOCATIONSIM_MSGS_MESSAGE_LOCATIONSIM_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace locationsim_msgs
{
template <class ContainerAllocator>
struct LOCATIONSIM_
{
  typedef LOCATIONSIM_<ContainerAllocator> Type;

  LOCATIONSIM_()
    : header()
    , position_x(0.0)
    , position_y(0.0)
    , positon_yaw(0.0)
    , velocity(0.0)  {
    }
  LOCATIONSIM_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , position_x(0.0)
    , position_y(0.0)
    , positon_yaw(0.0)
    , velocity(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _position_x_type;
  _position_x_type position_x;

   typedef float _position_y_type;
  _position_y_type position_y;

   typedef float _positon_yaw_type;
  _positon_yaw_type positon_yaw;

   typedef float _velocity_type;
  _velocity_type velocity;





  typedef boost::shared_ptr< ::locationsim_msgs::LOCATIONSIM_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::locationsim_msgs::LOCATIONSIM_<ContainerAllocator> const> ConstPtr;

}; // struct LOCATIONSIM_

typedef ::locationsim_msgs::LOCATIONSIM_<std::allocator<void> > LOCATIONSIM;

typedef boost::shared_ptr< ::locationsim_msgs::LOCATIONSIM > LOCATIONSIMPtr;
typedef boost::shared_ptr< ::locationsim_msgs::LOCATIONSIM const> LOCATIONSIMConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::locationsim_msgs::LOCATIONSIM_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::locationsim_msgs::LOCATIONSIM_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace locationsim_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'locationsim_msgs': ['/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/ytthdmap/locationsim_msgs/./']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::locationsim_msgs::LOCATIONSIM_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::locationsim_msgs::LOCATIONSIM_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::locationsim_msgs::LOCATIONSIM_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::locationsim_msgs::LOCATIONSIM_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::locationsim_msgs::LOCATIONSIM_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::locationsim_msgs::LOCATIONSIM_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::locationsim_msgs::LOCATIONSIM_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ba3599f0c405e73c0a26e3890c35dc16";
  }

  static const char* value(const ::locationsim_msgs::LOCATIONSIM_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xba3599f0c405e73cULL;
  static const uint64_t static_value2 = 0x0a26e3890c35dc16ULL;
};

template<class ContainerAllocator>
struct DataType< ::locationsim_msgs::LOCATIONSIM_<ContainerAllocator> >
{
  static const char* value()
  {
    return "locationsim_msgs/LOCATIONSIM";
  }

  static const char* value(const ::locationsim_msgs::LOCATIONSIM_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::locationsim_msgs::LOCATIONSIM_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n\
float32 position_x\n\
float32 position_y\n\
float32 positon_yaw\n\
float32 velocity\n\
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
";
  }

  static const char* value(const ::locationsim_msgs::LOCATIONSIM_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::locationsim_msgs::LOCATIONSIM_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.position_x);
      stream.next(m.position_y);
      stream.next(m.positon_yaw);
      stream.next(m.velocity);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LOCATIONSIM_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::locationsim_msgs::LOCATIONSIM_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::locationsim_msgs::LOCATIONSIM_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "position_x: ";
    Printer<float>::stream(s, indent + "  ", v.position_x);
    s << indent << "position_y: ";
    Printer<float>::stream(s, indent + "  ", v.position_y);
    s << indent << "positon_yaw: ";
    Printer<float>::stream(s, indent + "  ", v.positon_yaw);
    s << indent << "velocity: ";
    Printer<float>::stream(s, indent + "  ", v.velocity);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LOCATIONSIM_MSGS_MESSAGE_LOCATIONSIM_H