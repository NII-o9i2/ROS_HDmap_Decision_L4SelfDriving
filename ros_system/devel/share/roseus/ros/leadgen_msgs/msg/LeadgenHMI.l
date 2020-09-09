;; Auto-generated. Do not edit!


(when (boundp 'leadgen_msgs::LeadgenHMI)
  (if (not (find-package "LEADGEN_MSGS"))
    (make-package "LEADGEN_MSGS"))
  (shadow 'LeadgenHMI (find-package "LEADGEN_MSGS")))
(unless (find-package "LEADGEN_MSGS::LEADGENHMI")
  (make-package "LEADGEN_MSGS::LEADGENHMI"))

(in-package "ROS")
;;//! \htmlinclude LeadgenHMI.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*KEEP_IN_LANE*" (find-package "LEADGEN_MSGS::LEADGENHMI"))
(shadow '*KEEP_IN_LANE* (find-package "LEADGEN_MSGS::LEADGENHMI"))
(defconstant leadgen_msgs::LeadgenHMI::*KEEP_IN_LANE* 0)
(intern "*MERGE_LEFT_LANE*" (find-package "LEADGEN_MSGS::LEADGENHMI"))
(shadow '*MERGE_LEFT_LANE* (find-package "LEADGEN_MSGS::LEADGENHMI"))
(defconstant leadgen_msgs::LeadgenHMI::*MERGE_LEFT_LANE* 1)
(intern "*MERGE_RIGHT_LANE*" (find-package "LEADGEN_MSGS::LEADGENHMI"))
(shadow '*MERGE_RIGHT_LANE* (find-package "LEADGEN_MSGS::LEADGENHMI"))
(defconstant leadgen_msgs::LeadgenHMI::*MERGE_RIGHT_LANE* 2)
(intern "*TRAFFIC_LIGHT_NA*" (find-package "LEADGEN_MSGS::LEADGENHMI"))
(shadow '*TRAFFIC_LIGHT_NA* (find-package "LEADGEN_MSGS::LEADGENHMI"))
(defconstant leadgen_msgs::LeadgenHMI::*TRAFFIC_LIGHT_NA* 0)
(intern "*TRAFFIC_LIGHT_RED*" (find-package "LEADGEN_MSGS::LEADGENHMI"))
(shadow '*TRAFFIC_LIGHT_RED* (find-package "LEADGEN_MSGS::LEADGENHMI"))
(defconstant leadgen_msgs::LeadgenHMI::*TRAFFIC_LIGHT_RED* 1)
(intern "*TRAFFIC_LIGHT_GREEN*" (find-package "LEADGEN_MSGS::LEADGENHMI"))
(shadow '*TRAFFIC_LIGHT_GREEN* (find-package "LEADGEN_MSGS::LEADGENHMI"))
(defconstant leadgen_msgs::LeadgenHMI::*TRAFFIC_LIGHT_GREEN* 2)
(defclass leadgen_msgs::LeadgenHMI
  :super ros::object
  :slots (_header _lane_decision _traffic_light_result _lane_speed_limit _lane_borders _obs_decision_result ))

(defmethod leadgen_msgs::LeadgenHMI
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lane_decision __lane_decision) 0)
    ((:traffic_light_result __traffic_light_result) 0)
    ((:lane_speed_limit __lane_speed_limit) 0.0)
    ((:lane_borders __lane_borders) (let (r) (dotimes (i 0) (push (instance leadgen_msgs::LeadgenPointArray :init) r)) r))
    ((:obs_decision_result __obs_decision_result) (let (r) (dotimes (i 0) (push (instance leadgen_msgs::LeadgenObstacleOutput :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _lane_decision (round __lane_decision))
   (setq _traffic_light_result (round __traffic_light_result))
   (setq _lane_speed_limit (float __lane_speed_limit))
   (setq _lane_borders __lane_borders)
   (setq _obs_decision_result __obs_decision_result)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lane_decision
   (&optional __lane_decision)
   (if __lane_decision (setq _lane_decision __lane_decision)) _lane_decision)
  (:traffic_light_result
   (&optional __traffic_light_result)
   (if __traffic_light_result (setq _traffic_light_result __traffic_light_result)) _traffic_light_result)
  (:lane_speed_limit
   (&optional __lane_speed_limit)
   (if __lane_speed_limit (setq _lane_speed_limit __lane_speed_limit)) _lane_speed_limit)
  (:lane_borders
   (&rest __lane_borders)
   (if (keywordp (car __lane_borders))
       (send* _lane_borders __lane_borders)
     (progn
       (if __lane_borders (setq _lane_borders (car __lane_borders)))
       _lane_borders)))
  (:obs_decision_result
   (&rest __obs_decision_result)
   (if (keywordp (car __obs_decision_result))
       (send* _obs_decision_result __obs_decision_result)
     (progn
       (if __obs_decision_result (setq _obs_decision_result (car __obs_decision_result)))
       _obs_decision_result)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _lane_decision
    1
    ;; uint8 _traffic_light_result
    1
    ;; float32 _lane_speed_limit
    4
    ;; leadgen_msgs/LeadgenPointArray[] _lane_borders
    (apply #'+ (send-all _lane_borders :serialization-length)) 4
    ;; leadgen_msgs/LeadgenObstacleOutput[] _obs_decision_result
    (apply #'+ (send-all _obs_decision_result :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _lane_decision
       (write-byte _lane_decision s)
     ;; uint8 _traffic_light_result
       (write-byte _traffic_light_result s)
     ;; float32 _lane_speed_limit
       (sys::poke _lane_speed_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; leadgen_msgs/LeadgenPointArray[] _lane_borders
     (write-long (length _lane_borders) s)
     (dolist (elem _lane_borders)
       (send elem :serialize s)
       )
     ;; leadgen_msgs/LeadgenObstacleOutput[] _obs_decision_result
     (write-long (length _obs_decision_result) s)
     (dolist (elem _obs_decision_result)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _lane_decision
     (setq _lane_decision (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _traffic_light_result
     (setq _traffic_light_result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _lane_speed_limit
     (setq _lane_speed_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; leadgen_msgs/LeadgenPointArray[] _lane_borders
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_borders (let (r) (dotimes (i n) (push (instance leadgen_msgs::LeadgenPointArray :init) r)) r))
     (dolist (elem- _lane_borders)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; leadgen_msgs/LeadgenObstacleOutput[] _obs_decision_result
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obs_decision_result (let (r) (dotimes (i n) (push (instance leadgen_msgs::LeadgenObstacleOutput :init) r)) r))
     (dolist (elem- _obs_decision_result)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get leadgen_msgs::LeadgenHMI :md5sum-) "0d84c81bb319da0c42ae894c7b0cac72")
(setf (get leadgen_msgs::LeadgenHMI :datatype-) "leadgen_msgs/LeadgenHMI")
(setf (get leadgen_msgs::LeadgenHMI :definition-)
      "# This message is to describe decistion and planning message for HMI

# Header
std_msgs/Header header

# lane changing decisions
uint8 lane_decision

# enum for lane decisions
uint8 KEEP_IN_LANE = 0
uint8 MERGE_LEFT_LANE = 1
uint8 MERGE_RIGHT_LANE = 2

# traffic light result
uint8 traffic_light_result

# enum for traffic light result
uint8 TRAFFIC_LIGHT_NA = 0
uint8 TRAFFIC_LIGHT_RED = 1
uint8 TRAFFIC_LIGHT_GREEN = 2

# current lane limit speed
float32 lane_speed_limit # km/h

# lane borders
LeadgenPointArray[] lane_borders

# obstacle output
LeadgenObstacleOutput[] obs_decision_result




================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: leadgen_msgs/LeadgenPointArray
# This message is to describe an array of geometry_msgs/Point

geometry_msgs/Point[] points

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: leadgen_msgs/LeadgenObstacleOutput
# This message is to describe the information of an obstacle

# Header
std_msgs/Header header

# obstacle ID number
int32 id

# obstacle detection sources(optional)
uint16 source_sensor

# obstacle source sensor definition, using bit-wise operations
# A single obstacle can be detected by multiple sensors, and use OR operation as the result
uint16 SENSOR_LIDAR = 1
uint16 SENSOR_VISION = 2
uint16 SENSOR_RADAR = 4

# obstacle type(optional)
uint8 type

# obstacle type definitions
# subject to change

uint8 OBSTACLE_TYPE_UNKNOWN = 0
uint8 OBSTACLE_TYPE_SMALL = 1
uint8 OBSTACLE_TYPE_BIG = 2
uint8 OBSTACLE_TYPE_CAR = 3
uint8 OBSTACLE_TYPE_BUS = 4
uint8 OBSTACLE_TYPE_TRUCK = 5
uint8 OBSTACLE_TYPE_CYCLER = 6
uint8 OBSTACLE_TYPE_PEDESTRIAN = 7
uint8 OBSTACLE_TYPE_PLANT = 8
uint8 OBSTACLE_TYPE_FENCE = 9

# obstacle status(optional)
uint8 status

# obstacle status definitions
# according to Mobileye specs
uint8 OBSTACLE_STATUS_UNDEFINED = 0
uint8 OBSTACLE_STATUS_STANDING = 1
uint8 OBSTACLE_STATUS_STOPPED = 2
uint8 OBSTACLE_STATUS_MOVING = 3
uint8 OBSTACLE_STATUS_ONCOMING = 4
uint8 OBSTACLE_STATUS_PARKED = 5
uint8 OBSTACLE_STATUS_UNUSED = 6

# obstacle cutting(optional)
uint8 cutting

# obstacle cutting definitions
# according to Mobileye specs
uint8 OBSTACLE_CUTTING_UNDEFINED = 0
uint8 OBSTACLE_IN_HOST_LANE = 1
uint8 OBSTACLE_OUT_HOST_LANE = 2
uint8 OBSTACLE_CUTTING_IN = 3
uint8 OBSTACLE_CUTTING_OUT = 4

# obstacle size
float32 length  # along obstacle's +x direction, in [m] meter
float32 width   # along obstacle's +y direction, in [m]
float32 height  # along obstacle's +z direction, in [m]

float32 velocity_heading # the velocity heading in the world frame

# obstacle pose in body frame
bool rlt_valid  # relative information valid
geometry_msgs/Point rlt_position    # relative position to body frame
float32 rlt_theta   # relative theta angle, to body frame along z axis

# obstacle velocity in body frame
geometry_msgs/Vector3 rlt_velocity  # relative velocity to body frame 

# obstacle pose in world frame
bool abs_valid  # absolute information valid
geometry_msgs/Point abs_position    # absolute position in world frame
float32 abs_theta   # absolute yaw angle in world frame

# obstacle velocity in world frame
geometry_msgs/Vector3 abs_velocity  # absolute velocity in world frame

# decision tags
uint8 longitude_tag
uint8 lateral_tag

# decision tag definitions
uint8 IGNORE = 0 
uint8 STAY_BEHIND = 1

uint8 NUDGE_LEFT = 2   
uint8 NUDGE_RIGHT = 3 
uint8 NOT_AVAILABLE = 4 

LeadgenWaypoint[] predicted_traj
float32 predicted_period


================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: leadgen_msgs/LeadgenWaypoint
# This message is to describe a WAYPOINT in the target trajectory

# header
# std_msgs/Header header

# 3D position
geometry_msgs/Point point

# trace info
float64 theta # the heading of the trace at this point
float64 kappa # the curvature of the trace at this point

# SL info
float64 station
float64 lateral

# speed info
float32 speed # in [m/s]
float32 accel # in [m/s^2],(optional)

time time_arrival # the expected arrival time of this point



")



(provide :leadgen_msgs/LeadgenHMI "0d84c81bb319da0c42ae894c7b0cac72")


