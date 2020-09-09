;; Auto-generated. Do not edit!


(when (boundp 'leadgen_msgs::LeadgenStatus)
  (if (not (find-package "LEADGEN_MSGS"))
    (make-package "LEADGEN_MSGS"))
  (shadow 'LeadgenStatus (find-package "LEADGEN_MSGS")))
(unless (find-package "LEADGEN_MSGS::LEADGENSTATUS")
  (make-package "LEADGEN_MSGS::LEADGENSTATUS"))

(in-package "ROS")
;;//! \htmlinclude LeadgenStatus.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass leadgen_msgs::LeadgenStatus
  :super ros::object
  :slots (_header _pose _linear_velocity _linear_acceleration _angular_velocity _chassis_status ))

(defmethod leadgen_msgs::LeadgenStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:linear_velocity __linear_velocity) (instance geometry_msgs::Vector3 :init))
    ((:linear_acceleration __linear_acceleration) (instance geometry_msgs::Vector3 :init))
    ((:angular_velocity __angular_velocity) (instance geometry_msgs::Vector3 :init))
    ((:chassis_status __chassis_status) (instance leadgen_msgs::LeadgenChassis :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pose __pose)
   (setq _linear_velocity __linear_velocity)
   (setq _linear_acceleration __linear_acceleration)
   (setq _angular_velocity __angular_velocity)
   (setq _chassis_status __chassis_status)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:linear_velocity
   (&rest __linear_velocity)
   (if (keywordp (car __linear_velocity))
       (send* _linear_velocity __linear_velocity)
     (progn
       (if __linear_velocity (setq _linear_velocity (car __linear_velocity)))
       _linear_velocity)))
  (:linear_acceleration
   (&rest __linear_acceleration)
   (if (keywordp (car __linear_acceleration))
       (send* _linear_acceleration __linear_acceleration)
     (progn
       (if __linear_acceleration (setq _linear_acceleration (car __linear_acceleration)))
       _linear_acceleration)))
  (:angular_velocity
   (&rest __angular_velocity)
   (if (keywordp (car __angular_velocity))
       (send* _angular_velocity __angular_velocity)
     (progn
       (if __angular_velocity (setq _angular_velocity (car __angular_velocity)))
       _angular_velocity)))
  (:chassis_status
   (&rest __chassis_status)
   (if (keywordp (car __chassis_status))
       (send* _chassis_status __chassis_status)
     (progn
       (if __chassis_status (setq _chassis_status (car __chassis_status)))
       _chassis_status)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Vector3 _linear_velocity
    (send _linear_velocity :serialization-length)
    ;; geometry_msgs/Vector3 _linear_acceleration
    (send _linear_acceleration :serialization-length)
    ;; geometry_msgs/Vector3 _angular_velocity
    (send _angular_velocity :serialization-length)
    ;; leadgen_msgs/LeadgenChassis _chassis_status
    (send _chassis_status :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Vector3 _linear_velocity
       (send _linear_velocity :serialize s)
     ;; geometry_msgs/Vector3 _linear_acceleration
       (send _linear_acceleration :serialize s)
     ;; geometry_msgs/Vector3 _angular_velocity
       (send _angular_velocity :serialize s)
     ;; leadgen_msgs/LeadgenChassis _chassis_status
       (send _chassis_status :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Vector3 _linear_velocity
     (send _linear_velocity :deserialize buf ptr-) (incf ptr- (send _linear_velocity :serialization-length))
   ;; geometry_msgs/Vector3 _linear_acceleration
     (send _linear_acceleration :deserialize buf ptr-) (incf ptr- (send _linear_acceleration :serialization-length))
   ;; geometry_msgs/Vector3 _angular_velocity
     (send _angular_velocity :deserialize buf ptr-) (incf ptr- (send _angular_velocity :serialization-length))
   ;; leadgen_msgs/LeadgenChassis _chassis_status
     (send _chassis_status :deserialize buf ptr-) (incf ptr- (send _chassis_status :serialization-length))
   ;;
   self)
  )

(setf (get leadgen_msgs::LeadgenStatus :md5sum-) "56b823ded06f347e2acd96e136b79bac")
(setf (get leadgen_msgs::LeadgenStatus :datatype-) "leadgen_msgs/LeadgenStatus")
(setf (get leadgen_msgs::LeadgenStatus :definition-)
      "# This message is to describe the overall vehicle status
# The message includes both vehicle positioning info and Chassis info

# Header
std_msgs/Header header

# vehicle position
geometry_msgs/Pose pose
geometry_msgs/Vector3 linear_velocity
geometry_msgs/Vector3 linear_acceleration
geometry_msgs/Vector3 angular_velocity

# vehicle chassis status
LeadgenChassis chassis_status

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

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
MSG: leadgen_msgs/LeadgenChassis
# This message is to describe the chassis status of the vehicle
# The information usually comes from CAN bus of the vehicle interface

# Header
std_msgs/Header header

# constant definitions
# auto_mode is bit-wise marker
# +-------------------+-------------------+
# | H3 | H2 | H1 | H0 | L3 | L2 | L1 | L0 |
# +-------------------+-------------------+
# |  Steering modes   |   speed modes     |
# +-------------------+-------------------+
uint8 AUTO_MODE_OFF = 0
uint8 AUTO_MODE_SYSTEM_ON = 1 # bit L0
uint8 AUTO_MODE_BRAKE_ON = 2 # bit L1
uint8 AUTO_MODE_THROTTLE_ON = 4  # bit L2
uint8 AUTO_MODE_SPEED_ON = 8  # bit L3

uint8 AUTO_MODE_STEER_ON = 16 # bit H0, 0x10
uint8 AUTO_MODE_STEER_POS = 32 # bit H1, 0x20
uint8 AUTO_MODE_STEER_VEL = 64 # bit H2, 0x40
uint8 AUTO_MODE_STEER_TOR = 128 # bit H3, 0x80

# vehicle current mode
uint8 auto_mode

# vehicle current longitude status
float32 speed # in signed [m/s]
float32 acceleration # in signed [m/s^2]
float32 throttle # in [percentage]
float32 brake # brake pressure [MPa]

# gear control is bit-wise marker
# +-------------------+-------------------+
# | H3 | H2 | H1 | H0 | L3 | L2 | L1 | L0 |
# +-------------------+-------------------+
uint8 GEAR_INVALID = 0
uint8 GEAR_P = 1
uint8 GEAR_R = 2
uint8 GEAR_N = 4
uint8 GEAR_D = 8

int8 gear # gear position

# vehicle current steering status
float32 steer_pos # in signed [percentage], positive to left

# other operational status(optional)
float32[] wheel_speed
float32 engine_rpm
float32 odometer
float32 fuel_level

")



(provide :leadgen_msgs/LeadgenStatus "56b823ded06f347e2acd96e136b79bac")


