;; Auto-generated. Do not edit!


(when (boundp 'leadgen_msgs::LeadgenObstacleOutput)
  (if (not (find-package "LEADGEN_MSGS"))
    (make-package "LEADGEN_MSGS"))
  (shadow 'LeadgenObstacleOutput (find-package "LEADGEN_MSGS")))
(unless (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT")
  (make-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))

(in-package "ROS")
;;//! \htmlinclude LeadgenObstacleOutput.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*SENSOR_LIDAR*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*SENSOR_LIDAR* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*SENSOR_LIDAR* 1)
(intern "*SENSOR_VISION*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*SENSOR_VISION* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*SENSOR_VISION* 2)
(intern "*SENSOR_RADAR*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*SENSOR_RADAR* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*SENSOR_RADAR* 4)
(intern "*OBSTACLE_TYPE_UNKNOWN*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*OBSTACLE_TYPE_UNKNOWN* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*OBSTACLE_TYPE_UNKNOWN* 0)
(intern "*OBSTACLE_TYPE_SMALL*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*OBSTACLE_TYPE_SMALL* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*OBSTACLE_TYPE_SMALL* 1)
(intern "*OBSTACLE_TYPE_BIG*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*OBSTACLE_TYPE_BIG* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*OBSTACLE_TYPE_BIG* 2)
(intern "*OBSTACLE_TYPE_CAR*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*OBSTACLE_TYPE_CAR* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*OBSTACLE_TYPE_CAR* 3)
(intern "*OBSTACLE_TYPE_BUS*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*OBSTACLE_TYPE_BUS* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*OBSTACLE_TYPE_BUS* 4)
(intern "*OBSTACLE_TYPE_TRUCK*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*OBSTACLE_TYPE_TRUCK* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*OBSTACLE_TYPE_TRUCK* 5)
(intern "*OBSTACLE_TYPE_CYCLER*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*OBSTACLE_TYPE_CYCLER* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*OBSTACLE_TYPE_CYCLER* 6)
(intern "*OBSTACLE_TYPE_PEDESTRIAN*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*OBSTACLE_TYPE_PEDESTRIAN* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*OBSTACLE_TYPE_PEDESTRIAN* 7)
(intern "*OBSTACLE_TYPE_PLANT*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*OBSTACLE_TYPE_PLANT* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*OBSTACLE_TYPE_PLANT* 8)
(intern "*OBSTACLE_TYPE_FENCE*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*OBSTACLE_TYPE_FENCE* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*OBSTACLE_TYPE_FENCE* 9)
(intern "*OBSTACLE_STATUS_UNDEFINED*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*OBSTACLE_STATUS_UNDEFINED* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*OBSTACLE_STATUS_UNDEFINED* 0)
(intern "*OBSTACLE_STATUS_STANDING*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*OBSTACLE_STATUS_STANDING* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*OBSTACLE_STATUS_STANDING* 1)
(intern "*OBSTACLE_STATUS_STOPPED*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*OBSTACLE_STATUS_STOPPED* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*OBSTACLE_STATUS_STOPPED* 2)
(intern "*OBSTACLE_STATUS_MOVING*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*OBSTACLE_STATUS_MOVING* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*OBSTACLE_STATUS_MOVING* 3)
(intern "*OBSTACLE_STATUS_ONCOMING*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*OBSTACLE_STATUS_ONCOMING* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*OBSTACLE_STATUS_ONCOMING* 4)
(intern "*OBSTACLE_STATUS_PARKED*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*OBSTACLE_STATUS_PARKED* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*OBSTACLE_STATUS_PARKED* 5)
(intern "*OBSTACLE_STATUS_UNUSED*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*OBSTACLE_STATUS_UNUSED* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*OBSTACLE_STATUS_UNUSED* 6)
(intern "*OBSTACLE_CUTTING_UNDEFINED*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*OBSTACLE_CUTTING_UNDEFINED* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*OBSTACLE_CUTTING_UNDEFINED* 0)
(intern "*OBSTACLE_IN_HOST_LANE*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*OBSTACLE_IN_HOST_LANE* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*OBSTACLE_IN_HOST_LANE* 1)
(intern "*OBSTACLE_OUT_HOST_LANE*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*OBSTACLE_OUT_HOST_LANE* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*OBSTACLE_OUT_HOST_LANE* 2)
(intern "*OBSTACLE_CUTTING_IN*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*OBSTACLE_CUTTING_IN* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*OBSTACLE_CUTTING_IN* 3)
(intern "*OBSTACLE_CUTTING_OUT*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*OBSTACLE_CUTTING_OUT* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*OBSTACLE_CUTTING_OUT* 4)
(intern "*IGNORE*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*IGNORE* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*IGNORE* 0)
(intern "*STAY_BEHIND*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*STAY_BEHIND* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*STAY_BEHIND* 1)
(intern "*NUDGE_LEFT*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*NUDGE_LEFT* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*NUDGE_LEFT* 2)
(intern "*NUDGE_RIGHT*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*NUDGE_RIGHT* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*NUDGE_RIGHT* 3)
(intern "*NOT_AVAILABLE*" (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(shadow '*NOT_AVAILABLE* (find-package "LEADGEN_MSGS::LEADGENOBSTACLEOUTPUT"))
(defconstant leadgen_msgs::LeadgenObstacleOutput::*NOT_AVAILABLE* 4)
(defclass leadgen_msgs::LeadgenObstacleOutput
  :super ros::object
  :slots (_header _id _source_sensor _type _status _cutting _length _width _height _velocity_heading _rlt_valid _rlt_position _rlt_theta _rlt_velocity _abs_valid _abs_position _abs_theta _abs_velocity _longitude_tag _lateral_tag _predicted_traj _predicted_period ))

(defmethod leadgen_msgs::LeadgenObstacleOutput
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:source_sensor __source_sensor) 0)
    ((:type __type) 0)
    ((:status __status) 0)
    ((:cutting __cutting) 0)
    ((:length __length) 0.0)
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    ((:velocity_heading __velocity_heading) 0.0)
    ((:rlt_valid __rlt_valid) nil)
    ((:rlt_position __rlt_position) (instance geometry_msgs::Point :init))
    ((:rlt_theta __rlt_theta) 0.0)
    ((:rlt_velocity __rlt_velocity) (instance geometry_msgs::Vector3 :init))
    ((:abs_valid __abs_valid) nil)
    ((:abs_position __abs_position) (instance geometry_msgs::Point :init))
    ((:abs_theta __abs_theta) 0.0)
    ((:abs_velocity __abs_velocity) (instance geometry_msgs::Vector3 :init))
    ((:longitude_tag __longitude_tag) 0)
    ((:lateral_tag __lateral_tag) 0)
    ((:predicted_traj __predicted_traj) (let (r) (dotimes (i 0) (push (instance leadgen_msgs::LeadgenWaypoint :init) r)) r))
    ((:predicted_period __predicted_period) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _source_sensor (round __source_sensor))
   (setq _type (round __type))
   (setq _status (round __status))
   (setq _cutting (round __cutting))
   (setq _length (float __length))
   (setq _width (float __width))
   (setq _height (float __height))
   (setq _velocity_heading (float __velocity_heading))
   (setq _rlt_valid __rlt_valid)
   (setq _rlt_position __rlt_position)
   (setq _rlt_theta (float __rlt_theta))
   (setq _rlt_velocity __rlt_velocity)
   (setq _abs_valid __abs_valid)
   (setq _abs_position __abs_position)
   (setq _abs_theta (float __abs_theta))
   (setq _abs_velocity __abs_velocity)
   (setq _longitude_tag (round __longitude_tag))
   (setq _lateral_tag (round __lateral_tag))
   (setq _predicted_traj __predicted_traj)
   (setq _predicted_period (float __predicted_period))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:source_sensor
   (&optional __source_sensor)
   (if __source_sensor (setq _source_sensor __source_sensor)) _source_sensor)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:cutting
   (&optional __cutting)
   (if __cutting (setq _cutting __cutting)) _cutting)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:velocity_heading
   (&optional __velocity_heading)
   (if __velocity_heading (setq _velocity_heading __velocity_heading)) _velocity_heading)
  (:rlt_valid
   (&optional __rlt_valid)
   (if __rlt_valid (setq _rlt_valid __rlt_valid)) _rlt_valid)
  (:rlt_position
   (&rest __rlt_position)
   (if (keywordp (car __rlt_position))
       (send* _rlt_position __rlt_position)
     (progn
       (if __rlt_position (setq _rlt_position (car __rlt_position)))
       _rlt_position)))
  (:rlt_theta
   (&optional __rlt_theta)
   (if __rlt_theta (setq _rlt_theta __rlt_theta)) _rlt_theta)
  (:rlt_velocity
   (&rest __rlt_velocity)
   (if (keywordp (car __rlt_velocity))
       (send* _rlt_velocity __rlt_velocity)
     (progn
       (if __rlt_velocity (setq _rlt_velocity (car __rlt_velocity)))
       _rlt_velocity)))
  (:abs_valid
   (&optional __abs_valid)
   (if __abs_valid (setq _abs_valid __abs_valid)) _abs_valid)
  (:abs_position
   (&rest __abs_position)
   (if (keywordp (car __abs_position))
       (send* _abs_position __abs_position)
     (progn
       (if __abs_position (setq _abs_position (car __abs_position)))
       _abs_position)))
  (:abs_theta
   (&optional __abs_theta)
   (if __abs_theta (setq _abs_theta __abs_theta)) _abs_theta)
  (:abs_velocity
   (&rest __abs_velocity)
   (if (keywordp (car __abs_velocity))
       (send* _abs_velocity __abs_velocity)
     (progn
       (if __abs_velocity (setq _abs_velocity (car __abs_velocity)))
       _abs_velocity)))
  (:longitude_tag
   (&optional __longitude_tag)
   (if __longitude_tag (setq _longitude_tag __longitude_tag)) _longitude_tag)
  (:lateral_tag
   (&optional __lateral_tag)
   (if __lateral_tag (setq _lateral_tag __lateral_tag)) _lateral_tag)
  (:predicted_traj
   (&rest __predicted_traj)
   (if (keywordp (car __predicted_traj))
       (send* _predicted_traj __predicted_traj)
     (progn
       (if __predicted_traj (setq _predicted_traj (car __predicted_traj)))
       _predicted_traj)))
  (:predicted_period
   (&optional __predicted_period)
   (if __predicted_period (setq _predicted_period __predicted_period)) _predicted_period)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _id
    4
    ;; uint16 _source_sensor
    2
    ;; uint8 _type
    1
    ;; uint8 _status
    1
    ;; uint8 _cutting
    1
    ;; float32 _length
    4
    ;; float32 _width
    4
    ;; float32 _height
    4
    ;; float32 _velocity_heading
    4
    ;; bool _rlt_valid
    1
    ;; geometry_msgs/Point _rlt_position
    (send _rlt_position :serialization-length)
    ;; float32 _rlt_theta
    4
    ;; geometry_msgs/Vector3 _rlt_velocity
    (send _rlt_velocity :serialization-length)
    ;; bool _abs_valid
    1
    ;; geometry_msgs/Point _abs_position
    (send _abs_position :serialization-length)
    ;; float32 _abs_theta
    4
    ;; geometry_msgs/Vector3 _abs_velocity
    (send _abs_velocity :serialization-length)
    ;; uint8 _longitude_tag
    1
    ;; uint8 _lateral_tag
    1
    ;; leadgen_msgs/LeadgenWaypoint[] _predicted_traj
    (apply #'+ (send-all _predicted_traj :serialization-length)) 4
    ;; float32 _predicted_period
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _id
       (write-long _id s)
     ;; uint16 _source_sensor
       (write-word _source_sensor s)
     ;; uint8 _type
       (write-byte _type s)
     ;; uint8 _status
       (write-byte _status s)
     ;; uint8 _cutting
       (write-byte _cutting s)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity_heading
       (sys::poke _velocity_heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _rlt_valid
       (if _rlt_valid (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Point _rlt_position
       (send _rlt_position :serialize s)
     ;; float32 _rlt_theta
       (sys::poke _rlt_theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Vector3 _rlt_velocity
       (send _rlt_velocity :serialize s)
     ;; bool _abs_valid
       (if _abs_valid (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Point _abs_position
       (send _abs_position :serialize s)
     ;; float32 _abs_theta
       (sys::poke _abs_theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Vector3 _abs_velocity
       (send _abs_velocity :serialize s)
     ;; uint8 _longitude_tag
       (write-byte _longitude_tag s)
     ;; uint8 _lateral_tag
       (write-byte _lateral_tag s)
     ;; leadgen_msgs/LeadgenWaypoint[] _predicted_traj
     (write-long (length _predicted_traj) s)
     (dolist (elem _predicted_traj)
       (send elem :serialize s)
       )
     ;; float32 _predicted_period
       (sys::poke _predicted_period (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _source_sensor
     (setq _source_sensor (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cutting
     (setq _cutting (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity_heading
     (setq _velocity_heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _rlt_valid
     (setq _rlt_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Point _rlt_position
     (send _rlt_position :deserialize buf ptr-) (incf ptr- (send _rlt_position :serialization-length))
   ;; float32 _rlt_theta
     (setq _rlt_theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _rlt_velocity
     (send _rlt_velocity :deserialize buf ptr-) (incf ptr- (send _rlt_velocity :serialization-length))
   ;; bool _abs_valid
     (setq _abs_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Point _abs_position
     (send _abs_position :deserialize buf ptr-) (incf ptr- (send _abs_position :serialization-length))
   ;; float32 _abs_theta
     (setq _abs_theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _abs_velocity
     (send _abs_velocity :deserialize buf ptr-) (incf ptr- (send _abs_velocity :serialization-length))
   ;; uint8 _longitude_tag
     (setq _longitude_tag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _lateral_tag
     (setq _lateral_tag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; leadgen_msgs/LeadgenWaypoint[] _predicted_traj
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _predicted_traj (let (r) (dotimes (i n) (push (instance leadgen_msgs::LeadgenWaypoint :init) r)) r))
     (dolist (elem- _predicted_traj)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _predicted_period
     (setq _predicted_period (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get leadgen_msgs::LeadgenObstacleOutput :md5sum-) "9d60182ab72336c69a9994033628ca2b")
(setf (get leadgen_msgs::LeadgenObstacleOutput :datatype-) "leadgen_msgs/LeadgenObstacleOutput")
(setf (get leadgen_msgs::LeadgenObstacleOutput :definition-)
      "# This message is to describe the information of an obstacle

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



(provide :leadgen_msgs/LeadgenObstacleOutput "9d60182ab72336c69a9994033628ca2b")


