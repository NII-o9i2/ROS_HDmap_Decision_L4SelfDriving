// Generated by gencpp from file planning_msgs/PlanningDebug.msg
// DO NOT EDIT!


#ifndef PLANNING_MSGS_MESSAGE_PLANNINGDEBUG_H
#define PLANNING_MSGS_MESSAGE_PLANNINGDEBUG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <planning_msgs/StitchDebug.h>
#include <planning_msgs/DecisionDebug.h>

namespace planning_msgs
{
template <class ContainerAllocator>
struct PlanningDebug_
{
  typedef PlanningDebug_<ContainerAllocator> Type;

  PlanningDebug_()
    : lon_objective_cost(0.0)
    , lon_jerk_cost(0.0)
    , lon_collision_cost(0.0)
    , lat_offset_cost(0.0)
    , centripental_acc_cost(0.0)
    , lat_comfort_cost(0.0)
    , constraint_check_failure_count(0.0)
    , collision_failure_count(0.0)
    , distance_planning(0.0)
    , id_shown(0)
    , flag_path_time_obstacle_sample_shown(0)
    , max_t(0.0)
    , max_d(0.0)
    , stitch_trajectory_x(0.0)
    , stitch_trajectory_y(0.0)
    , stitch_trajectory_z(0.0)
    , stitch_trajectory_theta(0.0)
    , stitch_trajectory_kappa(0.0)
    , stitch_trajectory_v(0.0)
    , stitch_trajectory_a(0.0)
    , stitch_trajectory_relative_time(0.0)
    , stitch_debug()
    , decision_debug()  {
    }
  PlanningDebug_(const ContainerAllocator& _alloc)
    : lon_objective_cost(0.0)
    , lon_jerk_cost(0.0)
    , lon_collision_cost(0.0)
    , lat_offset_cost(0.0)
    , centripental_acc_cost(0.0)
    , lat_comfort_cost(0.0)
    , constraint_check_failure_count(0.0)
    , collision_failure_count(0.0)
    , distance_planning(0.0)
    , id_shown(0)
    , flag_path_time_obstacle_sample_shown(0)
    , max_t(0.0)
    , max_d(0.0)
    , stitch_trajectory_x(0.0)
    , stitch_trajectory_y(0.0)
    , stitch_trajectory_z(0.0)
    , stitch_trajectory_theta(0.0)
    , stitch_trajectory_kappa(0.0)
    , stitch_trajectory_v(0.0)
    , stitch_trajectory_a(0.0)
    , stitch_trajectory_relative_time(0.0)
    , stitch_debug(_alloc)
    , decision_debug(_alloc)  {
  (void)_alloc;
    }



   typedef float _lon_objective_cost_type;
  _lon_objective_cost_type lon_objective_cost;

   typedef float _lon_jerk_cost_type;
  _lon_jerk_cost_type lon_jerk_cost;

   typedef float _lon_collision_cost_type;
  _lon_collision_cost_type lon_collision_cost;

   typedef float _lat_offset_cost_type;
  _lat_offset_cost_type lat_offset_cost;

   typedef float _centripental_acc_cost_type;
  _centripental_acc_cost_type centripental_acc_cost;

   typedef float _lat_comfort_cost_type;
  _lat_comfort_cost_type lat_comfort_cost;

   typedef float _constraint_check_failure_count_type;
  _constraint_check_failure_count_type constraint_check_failure_count;

   typedef float _collision_failure_count_type;
  _collision_failure_count_type collision_failure_count;

   typedef float _distance_planning_type;
  _distance_planning_type distance_planning;

   typedef uint32_t _id_shown_type;
  _id_shown_type id_shown;

   typedef uint32_t _flag_path_time_obstacle_sample_shown_type;
  _flag_path_time_obstacle_sample_shown_type flag_path_time_obstacle_sample_shown;

   typedef float _max_t_type;
  _max_t_type max_t;

   typedef float _max_d_type;
  _max_d_type max_d;

   typedef float _stitch_trajectory_x_type;
  _stitch_trajectory_x_type stitch_trajectory_x;

   typedef float _stitch_trajectory_y_type;
  _stitch_trajectory_y_type stitch_trajectory_y;

   typedef float _stitch_trajectory_z_type;
  _stitch_trajectory_z_type stitch_trajectory_z;

   typedef float _stitch_trajectory_theta_type;
  _stitch_trajectory_theta_type stitch_trajectory_theta;

   typedef float _stitch_trajectory_kappa_type;
  _stitch_trajectory_kappa_type stitch_trajectory_kappa;

   typedef float _stitch_trajectory_v_type;
  _stitch_trajectory_v_type stitch_trajectory_v;

   typedef float _stitch_trajectory_a_type;
  _stitch_trajectory_a_type stitch_trajectory_a;

   typedef float _stitch_trajectory_relative_time_type;
  _stitch_trajectory_relative_time_type stitch_trajectory_relative_time;

   typedef  ::planning_msgs::StitchDebug_<ContainerAllocator>  _stitch_debug_type;
  _stitch_debug_type stitch_debug;

   typedef  ::planning_msgs::DecisionDebug_<ContainerAllocator>  _decision_debug_type;
  _decision_debug_type decision_debug;





  typedef boost::shared_ptr< ::planning_msgs::PlanningDebug_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::planning_msgs::PlanningDebug_<ContainerAllocator> const> ConstPtr;

}; // struct PlanningDebug_

typedef ::planning_msgs::PlanningDebug_<std::allocator<void> > PlanningDebug;

typedef boost::shared_ptr< ::planning_msgs::PlanningDebug > PlanningDebugPtr;
typedef boost::shared_ptr< ::planning_msgs::PlanningDebug const> PlanningDebugConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::planning_msgs::PlanningDebug_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::planning_msgs::PlanningDebug_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace planning_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'planning_msgs': ['/home/xiaotongfeng/Desktop/ROS_HDmap_Decision_L4/ros_system/src/planning/planning_msgs/./'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::planning_msgs::PlanningDebug_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::planning_msgs::PlanningDebug_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::planning_msgs::PlanningDebug_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::planning_msgs::PlanningDebug_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::planning_msgs::PlanningDebug_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::planning_msgs::PlanningDebug_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::planning_msgs::PlanningDebug_<ContainerAllocator> >
{
  static const char* value()
  {
    return "423e0926173cb1c4e4e0d32a68ecf81f";
  }

  static const char* value(const ::planning_msgs::PlanningDebug_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x423e0926173cb1c4ULL;
  static const uint64_t static_value2 = 0xe4e0d32a68ecf81fULL;
};

template<class ContainerAllocator>
struct DataType< ::planning_msgs::PlanningDebug_<ContainerAllocator> >
{
  static const char* value()
  {
    return "planning_msgs/PlanningDebug";
  }

  static const char* value(const ::planning_msgs::PlanningDebug_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::planning_msgs::PlanningDebug_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 lon_objective_cost\n\
float32 lon_jerk_cost\n\
float32 lon_collision_cost\n\
float32 lat_offset_cost\n\
float32 centripental_acc_cost\n\
float32 lat_comfort_cost\n\
float32 constraint_check_failure_count\n\
float32 collision_failure_count\n\
float32 distance_planning\n\
uint32 id_shown\n\
uint32 flag_path_time_obstacle_sample_shown\n\
float32 max_t\n\
float32 max_d\n\
float32 stitch_trajectory_x\n\
float32 stitch_trajectory_y\n\
float32 stitch_trajectory_z\n\
float32 stitch_trajectory_theta\n\
float32 stitch_trajectory_kappa\n\
float32 stitch_trajectory_v\n\
float32 stitch_trajectory_a\n\
float32 stitch_trajectory_relative_time\n\
StitchDebug stitch_debug\n\
DecisionDebug decision_debug\n\
================================================================================\n\
MSG: planning_msgs/StitchDebug\n\
  bool prev_traj_is_not_ok\n\
  bool driver_mode_is_not_auto\n\
  bool prev_traj_size_is_zero\n\
  bool smaller_than_prev_traj_time\n\
  bool beyond_prev_traj_time\n\
  bool dist_too_large\n\
  float32 lon_diff\n\
  float32 lat_diff\n\
================================================================================\n\
MSG: planning_msgs/DecisionDebug\n\
  ObstacleIn[50] obstacle\n\
  int8 lanechange_id\n\
  int8 lane_id\n\
  float32[3] ego_cost\n\
  int8[3] onlane_obs_num\n\
  int8 lanechange_process\n\
\n\
================================================================================\n\
MSG: planning_msgs/ObstacleIn\n\
int8 id\n\
float32 s\n\
float32 l\n\
float32 vs\n\
float32 as\n\
float32 vl\n\
float32 al\n\
int8 lane_no\n\
float32 time_cost\n\
float32 des_cost\n\
float32 decision_cost\n\
int8 decision_tag\n\
";
  }

  static const char* value(const ::planning_msgs::PlanningDebug_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::planning_msgs::PlanningDebug_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.lon_objective_cost);
      stream.next(m.lon_jerk_cost);
      stream.next(m.lon_collision_cost);
      stream.next(m.lat_offset_cost);
      stream.next(m.centripental_acc_cost);
      stream.next(m.lat_comfort_cost);
      stream.next(m.constraint_check_failure_count);
      stream.next(m.collision_failure_count);
      stream.next(m.distance_planning);
      stream.next(m.id_shown);
      stream.next(m.flag_path_time_obstacle_sample_shown);
      stream.next(m.max_t);
      stream.next(m.max_d);
      stream.next(m.stitch_trajectory_x);
      stream.next(m.stitch_trajectory_y);
      stream.next(m.stitch_trajectory_z);
      stream.next(m.stitch_trajectory_theta);
      stream.next(m.stitch_trajectory_kappa);
      stream.next(m.stitch_trajectory_v);
      stream.next(m.stitch_trajectory_a);
      stream.next(m.stitch_trajectory_relative_time);
      stream.next(m.stitch_debug);
      stream.next(m.decision_debug);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PlanningDebug_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::planning_msgs::PlanningDebug_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::planning_msgs::PlanningDebug_<ContainerAllocator>& v)
  {
    s << indent << "lon_objective_cost: ";
    Printer<float>::stream(s, indent + "  ", v.lon_objective_cost);
    s << indent << "lon_jerk_cost: ";
    Printer<float>::stream(s, indent + "  ", v.lon_jerk_cost);
    s << indent << "lon_collision_cost: ";
    Printer<float>::stream(s, indent + "  ", v.lon_collision_cost);
    s << indent << "lat_offset_cost: ";
    Printer<float>::stream(s, indent + "  ", v.lat_offset_cost);
    s << indent << "centripental_acc_cost: ";
    Printer<float>::stream(s, indent + "  ", v.centripental_acc_cost);
    s << indent << "lat_comfort_cost: ";
    Printer<float>::stream(s, indent + "  ", v.lat_comfort_cost);
    s << indent << "constraint_check_failure_count: ";
    Printer<float>::stream(s, indent + "  ", v.constraint_check_failure_count);
    s << indent << "collision_failure_count: ";
    Printer<float>::stream(s, indent + "  ", v.collision_failure_count);
    s << indent << "distance_planning: ";
    Printer<float>::stream(s, indent + "  ", v.distance_planning);
    s << indent << "id_shown: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.id_shown);
    s << indent << "flag_path_time_obstacle_sample_shown: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.flag_path_time_obstacle_sample_shown);
    s << indent << "max_t: ";
    Printer<float>::stream(s, indent + "  ", v.max_t);
    s << indent << "max_d: ";
    Printer<float>::stream(s, indent + "  ", v.max_d);
    s << indent << "stitch_trajectory_x: ";
    Printer<float>::stream(s, indent + "  ", v.stitch_trajectory_x);
    s << indent << "stitch_trajectory_y: ";
    Printer<float>::stream(s, indent + "  ", v.stitch_trajectory_y);
    s << indent << "stitch_trajectory_z: ";
    Printer<float>::stream(s, indent + "  ", v.stitch_trajectory_z);
    s << indent << "stitch_trajectory_theta: ";
    Printer<float>::stream(s, indent + "  ", v.stitch_trajectory_theta);
    s << indent << "stitch_trajectory_kappa: ";
    Printer<float>::stream(s, indent + "  ", v.stitch_trajectory_kappa);
    s << indent << "stitch_trajectory_v: ";
    Printer<float>::stream(s, indent + "  ", v.stitch_trajectory_v);
    s << indent << "stitch_trajectory_a: ";
    Printer<float>::stream(s, indent + "  ", v.stitch_trajectory_a);
    s << indent << "stitch_trajectory_relative_time: ";
    Printer<float>::stream(s, indent + "  ", v.stitch_trajectory_relative_time);
    s << indent << "stitch_debug: ";
    s << std::endl;
    Printer< ::planning_msgs::StitchDebug_<ContainerAllocator> >::stream(s, indent + "  ", v.stitch_debug);
    s << indent << "decision_debug: ";
    s << std::endl;
    Printer< ::planning_msgs::DecisionDebug_<ContainerAllocator> >::stream(s, indent + "  ", v.decision_debug);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PLANNING_MSGS_MESSAGE_PLANNINGDEBUG_H