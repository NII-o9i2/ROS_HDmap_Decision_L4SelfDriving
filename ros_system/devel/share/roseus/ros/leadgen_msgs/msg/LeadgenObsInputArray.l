;; Auto-generated. Do not edit!


(when (boundp 'leadgen_msgs::LeadgenObsInputArray)
  (if (not (find-package "LEADGEN_MSGS"))
    (make-package "LEADGEN_MSGS"))
  (shadow 'LeadgenObsInputArray (find-package "LEADGEN_MSGS")))
(unless (find-package "LEADGEN_MSGS::LEADGENOBSINPUTARRAY")
  (make-package "LEADGEN_MSGS::LEADGENOBSINPUTARRAY"))

(in-package "ROS")
;;//! \htmlinclude LeadgenObsInputArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass leadgen_msgs::LeadgenObsInputArray
  :super ros::object
  :slots (_header _obstacle_list ))

(defmethod leadgen_msgs::LeadgenObsInputArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:obstacle_list __obstacle_list) (let (r) (dotimes (i 0) (push (instance leadgen_msgs::LeadgenObstacleInput :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _obstacle_list __obstacle_list)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:obstacle_list
   (&rest __obstacle_list)
   (if (keywordp (car __obstacle_list))
       (send* _obstacle_list __obstacle_list)
     (progn
       (if __obstacle_list (setq _obstacle_list (car __obstacle_list)))
       _obstacle_list)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; leadgen_msgs/LeadgenObstacleInput[] _obstacle_list
    (apply #'+ (send-all _obstacle_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; leadgen_msgs/LeadgenObstacleInput[] _obstacle_list
     (write-long (length _obstacle_list) s)
     (dolist (elem _obstacle_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; leadgen_msgs/LeadgenObstacleInput[] _obstacle_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacle_list (let (r) (dotimes (i n) (push (instance leadgen_msgs::LeadgenObstacleInput :init) r)) r))
     (dolist (elem- _obstacle_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get leadgen_msgs::LeadgenObsInputArray :md5sum-) "a30eed43d9c6adce92d7eff55e32efee")
(setf (get leadgen_msgs::LeadgenObsInputArray :datatype-) "leadgen_msgs/LeadgenObsInputArray")
(setf (get leadgen_msgs::LeadgenObsInputArray :definition-)
      "# This message is to describe a list of obstacles

# Header
std_msgs/Header header

# Obstacle list
LeadgenObstacleInput[] obstacle_list

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
MSG: leadgen_msgs/LeadgenObstacleInput
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






================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

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
")



(provide :leadgen_msgs/LeadgenObsInputArray "a30eed43d9c6adce92d7eff55e32efee")


