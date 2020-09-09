// Generated by gencpp from file leadgen_msgs/LeadgenTrajectory.msg
// DO NOT EDIT!


#ifndef LEADGEN_MSGS_MESSAGE_LEADGENTRAJECTORY_H
#define LEADGEN_MSGS_MESSAGE_LEADGENTRAJECTORY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <leadgen_msgs/LeadgenWaypoint.h>

namespace leadgen_msgs
{
template <class ContainerAllocator>
struct LeadgenTrajectory_
{
  typedef LeadgenTrajectory_<ContainerAllocator> Type;

  LeadgenTrajectory_()
    : header()
    , waypoints()
    , estop(false)
    , turn_light(0)  {
    }
  LeadgenTrajectory_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , waypoints(_alloc)
    , estop(false)
    , turn_light(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::leadgen_msgs::LeadgenWaypoint_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::leadgen_msgs::LeadgenWaypoint_<ContainerAllocator> >::other >  _waypoints_type;
  _waypoints_type waypoints;

   typedef uint8_t _estop_type;
  _estop_type estop;

   typedef uint8_t _turn_light_type;
  _turn_light_type turn_light;



  enum {
    NO_TURN_LIGHT = 0u,
    LEFT_TURN_LIGHT = 1u,
    RIGHT_TURN_LIGHT = 2u,
  };


  typedef boost::shared_ptr< ::leadgen_msgs::LeadgenTrajectory_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::leadgen_msgs::LeadgenTrajectory_<ContainerAllocator> const> ConstPtr;

}; // struct LeadgenTrajectory_

typedef ::leadgen_msgs::LeadgenTrajectory_<std::allocator<void> > LeadgenTrajectory;

typedef boost::shared_ptr< ::leadgen_msgs::LeadgenTrajectory > LeadgenTrajectoryPtr;
typedef boost::shared_ptr< ::leadgen_msgs::LeadgenTrajectory const> LeadgenTrajectoryConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::leadgen_msgs::LeadgenTrajectory_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::leadgen_msgs::LeadgenTrajectory_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace leadgen_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'leadgen_msgs': ['/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/leadgen_msgs/./'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::leadgen_msgs::LeadgenTrajectory_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::leadgen_msgs::LeadgenTrajectory_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::leadgen_msgs::LeadgenTrajectory_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::leadgen_msgs::LeadgenTrajectory_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::leadgen_msgs::LeadgenTrajectory_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::leadgen_msgs::LeadgenTrajectory_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::leadgen_msgs::LeadgenTrajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "403d372ec69806b29a42abeb4348e3f0";
  }

  static const char* value(const ::leadgen_msgs::LeadgenTrajectory_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x403d372ec69806b2ULL;
  static const uint64_t static_value2 = 0x9a42abeb4348e3f0ULL;
};

template<class ContainerAllocator>
struct DataType< ::leadgen_msgs::LeadgenTrajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "leadgen_msgs/LeadgenTrajectory";
  }

  static const char* value(const ::leadgen_msgs::LeadgenTrajectory_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::leadgen_msgs::LeadgenTrajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message is to describe the target trajectory for the vehicle\n\
# The message is usually sent by planning module and followed by control module\n\
\n\
# Header\n\
std_msgs/Header header\n\
\n\
# The target trajectory\n\
LeadgenWaypoint[] waypoints\n\
\n\
# emergency stop marker\n\
bool estop\n\
\n\
# turn light\n\
uint8 turn_light\n\
\n\
uint8 NO_TURN_LIGHT = 0\n\
uint8 LEFT_TURN_LIGHT = 1\n\
uint8 RIGHT_TURN_LIGHT = 2\n\
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
MSG: leadgen_msgs/LeadgenWaypoint\n\
# This message is to describe a WAYPOINT in the target trajectory\n\
\n\
# header\n\
# std_msgs/Header header\n\
\n\
# 3D position\n\
geometry_msgs/Point point\n\
\n\
# trace info\n\
float64 theta # the heading of the trace at this point\n\
float64 kappa # the curvature of the trace at this point\n\
\n\
# SL info\n\
float64 station\n\
float64 lateral\n\
\n\
# speed info\n\
float32 speed # in [m/s]\n\
float32 accel # in [m/s^2],(optional)\n\
\n\
time time_arrival # the expected arrival time of this point\n\
\n\
\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::leadgen_msgs::LeadgenTrajectory_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::leadgen_msgs::LeadgenTrajectory_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.waypoints);
      stream.next(m.estop);
      stream.next(m.turn_light);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LeadgenTrajectory_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::leadgen_msgs::LeadgenTrajectory_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::leadgen_msgs::LeadgenTrajectory_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "waypoints[]" << std::endl;
    for (size_t i = 0; i < v.waypoints.size(); ++i)
    {
      s << indent << "  waypoints[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::leadgen_msgs::LeadgenWaypoint_<ContainerAllocator> >::stream(s, indent + "    ", v.waypoints[i]);
    }
    s << indent << "estop: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.estop);
    s << indent << "turn_light: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.turn_light);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LEADGEN_MSGS_MESSAGE_LEADGENTRAJECTORY_H