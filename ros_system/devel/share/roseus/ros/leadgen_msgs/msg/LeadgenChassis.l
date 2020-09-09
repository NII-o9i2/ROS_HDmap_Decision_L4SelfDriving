;; Auto-generated. Do not edit!


(when (boundp 'leadgen_msgs::LeadgenChassis)
  (if (not (find-package "LEADGEN_MSGS"))
    (make-package "LEADGEN_MSGS"))
  (shadow 'LeadgenChassis (find-package "LEADGEN_MSGS")))
(unless (find-package "LEADGEN_MSGS::LEADGENCHASSIS")
  (make-package "LEADGEN_MSGS::LEADGENCHASSIS"))

(in-package "ROS")
;;//! \htmlinclude LeadgenChassis.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*AUTO_MODE_OFF*" (find-package "LEADGEN_MSGS::LEADGENCHASSIS"))
(shadow '*AUTO_MODE_OFF* (find-package "LEADGEN_MSGS::LEADGENCHASSIS"))
(defconstant leadgen_msgs::LeadgenChassis::*AUTO_MODE_OFF* 0)
(intern "*AUTO_MODE_SYSTEM_ON*" (find-package "LEADGEN_MSGS::LEADGENCHASSIS"))
(shadow '*AUTO_MODE_SYSTEM_ON* (find-package "LEADGEN_MSGS::LEADGENCHASSIS"))
(defconstant leadgen_msgs::LeadgenChassis::*AUTO_MODE_SYSTEM_ON* 1)
(intern "*AUTO_MODE_BRAKE_ON*" (find-package "LEADGEN_MSGS::LEADGENCHASSIS"))
(shadow '*AUTO_MODE_BRAKE_ON* (find-package "LEADGEN_MSGS::LEADGENCHASSIS"))
(defconstant leadgen_msgs::LeadgenChassis::*AUTO_MODE_BRAKE_ON* 2)
(intern "*AUTO_MODE_THROTTLE_ON*" (find-package "LEADGEN_MSGS::LEADGENCHASSIS"))
(shadow '*AUTO_MODE_THROTTLE_ON* (find-package "LEADGEN_MSGS::LEADGENCHASSIS"))
(defconstant leadgen_msgs::LeadgenChassis::*AUTO_MODE_THROTTLE_ON* 4)
(intern "*AUTO_MODE_SPEED_ON*" (find-package "LEADGEN_MSGS::LEADGENCHASSIS"))
(shadow '*AUTO_MODE_SPEED_ON* (find-package "LEADGEN_MSGS::LEADGENCHASSIS"))
(defconstant leadgen_msgs::LeadgenChassis::*AUTO_MODE_SPEED_ON* 8)
(intern "*AUTO_MODE_STEER_ON*" (find-package "LEADGEN_MSGS::LEADGENCHASSIS"))
(shadow '*AUTO_MODE_STEER_ON* (find-package "LEADGEN_MSGS::LEADGENCHASSIS"))
(defconstant leadgen_msgs::LeadgenChassis::*AUTO_MODE_STEER_ON* 16)
(intern "*AUTO_MODE_STEER_POS*" (find-package "LEADGEN_MSGS::LEADGENCHASSIS"))
(shadow '*AUTO_MODE_STEER_POS* (find-package "LEADGEN_MSGS::LEADGENCHASSIS"))
(defconstant leadgen_msgs::LeadgenChassis::*AUTO_MODE_STEER_POS* 32)
(intern "*AUTO_MODE_STEER_VEL*" (find-package "LEADGEN_MSGS::LEADGENCHASSIS"))
(shadow '*AUTO_MODE_STEER_VEL* (find-package "LEADGEN_MSGS::LEADGENCHASSIS"))
(defconstant leadgen_msgs::LeadgenChassis::*AUTO_MODE_STEER_VEL* 64)
(intern "*AUTO_MODE_STEER_TOR*" (find-package "LEADGEN_MSGS::LEADGENCHASSIS"))
(shadow '*AUTO_MODE_STEER_TOR* (find-package "LEADGEN_MSGS::LEADGENCHASSIS"))
(defconstant leadgen_msgs::LeadgenChassis::*AUTO_MODE_STEER_TOR* 128)
(intern "*GEAR_INVALID*" (find-package "LEADGEN_MSGS::LEADGENCHASSIS"))
(shadow '*GEAR_INVALID* (find-package "LEADGEN_MSGS::LEADGENCHASSIS"))
(defconstant leadgen_msgs::LeadgenChassis::*GEAR_INVALID* 0)
(intern "*GEAR_P*" (find-package "LEADGEN_MSGS::LEADGENCHASSIS"))
(shadow '*GEAR_P* (find-package "LEADGEN_MSGS::LEADGENCHASSIS"))
(defconstant leadgen_msgs::LeadgenChassis::*GEAR_P* 1)
(intern "*GEAR_R*" (find-package "LEADGEN_MSGS::LEADGENCHASSIS"))
(shadow '*GEAR_R* (find-package "LEADGEN_MSGS::LEADGENCHASSIS"))
(defconstant leadgen_msgs::LeadgenChassis::*GEAR_R* 2)
(intern "*GEAR_N*" (find-package "LEADGEN_MSGS::LEADGENCHASSIS"))
(shadow '*GEAR_N* (find-package "LEADGEN_MSGS::LEADGENCHASSIS"))
(defconstant leadgen_msgs::LeadgenChassis::*GEAR_N* 4)
(intern "*GEAR_D*" (find-package "LEADGEN_MSGS::LEADGENCHASSIS"))
(shadow '*GEAR_D* (find-package "LEADGEN_MSGS::LEADGENCHASSIS"))
(defconstant leadgen_msgs::LeadgenChassis::*GEAR_D* 8)
(defclass leadgen_msgs::LeadgenChassis
  :super ros::object
  :slots (_header _auto_mode _speed _acceleration _throttle _brake _gear _steer_pos _wheel_speed _engine_rpm _odometer _fuel_level ))

(defmethod leadgen_msgs::LeadgenChassis
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:auto_mode __auto_mode) 0)
    ((:speed __speed) 0.0)
    ((:acceleration __acceleration) 0.0)
    ((:throttle __throttle) 0.0)
    ((:brake __brake) 0.0)
    ((:gear __gear) 0)
    ((:steer_pos __steer_pos) 0.0)
    ((:wheel_speed __wheel_speed) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:engine_rpm __engine_rpm) 0.0)
    ((:odometer __odometer) 0.0)
    ((:fuel_level __fuel_level) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _auto_mode (round __auto_mode))
   (setq _speed (float __speed))
   (setq _acceleration (float __acceleration))
   (setq _throttle (float __throttle))
   (setq _brake (float __brake))
   (setq _gear (round __gear))
   (setq _steer_pos (float __steer_pos))
   (setq _wheel_speed __wheel_speed)
   (setq _engine_rpm (float __engine_rpm))
   (setq _odometer (float __odometer))
   (setq _fuel_level (float __fuel_level))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:auto_mode
   (&optional __auto_mode)
   (if __auto_mode (setq _auto_mode __auto_mode)) _auto_mode)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:brake
   (&optional __brake)
   (if __brake (setq _brake __brake)) _brake)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:steer_pos
   (&optional __steer_pos)
   (if __steer_pos (setq _steer_pos __steer_pos)) _steer_pos)
  (:wheel_speed
   (&optional __wheel_speed)
   (if __wheel_speed (setq _wheel_speed __wheel_speed)) _wheel_speed)
  (:engine_rpm
   (&optional __engine_rpm)
   (if __engine_rpm (setq _engine_rpm __engine_rpm)) _engine_rpm)
  (:odometer
   (&optional __odometer)
   (if __odometer (setq _odometer __odometer)) _odometer)
  (:fuel_level
   (&optional __fuel_level)
   (if __fuel_level (setq _fuel_level __fuel_level)) _fuel_level)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _auto_mode
    1
    ;; float32 _speed
    4
    ;; float32 _acceleration
    4
    ;; float32 _throttle
    4
    ;; float32 _brake
    4
    ;; int8 _gear
    1
    ;; float32 _steer_pos
    4
    ;; float32[] _wheel_speed
    (* 4    (length _wheel_speed)) 4
    ;; float32 _engine_rpm
    4
    ;; float32 _odometer
    4
    ;; float32 _fuel_level
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _auto_mode
       (write-byte _auto_mode s)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acceleration
       (sys::poke _acceleration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _brake
       (sys::poke _brake (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _gear
       (write-byte _gear s)
     ;; float32 _steer_pos
       (sys::poke _steer_pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _wheel_speed
     (write-long (length _wheel_speed) s)
     (dotimes (i (length _wheel_speed))
       (sys::poke (elt _wheel_speed i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _engine_rpm
       (sys::poke _engine_rpm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _odometer
       (sys::poke _odometer (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _fuel_level
       (sys::poke _fuel_level (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _auto_mode
     (setq _auto_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acceleration
     (setq _acceleration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _throttle
     (setq _throttle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _brake
     (setq _brake (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _gear
     (setq _gear (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _gear 127) (setq _gear (- _gear 256)))
   ;; float32 _steer_pos
     (setq _steer_pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _wheel_speed
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wheel_speed (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _wheel_speed i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _engine_rpm
     (setq _engine_rpm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _odometer
     (setq _odometer (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _fuel_level
     (setq _fuel_level (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get leadgen_msgs::LeadgenChassis :md5sum-) "6e7786948abd184365b7821561378998")
(setf (get leadgen_msgs::LeadgenChassis :datatype-) "leadgen_msgs/LeadgenChassis")
(setf (get leadgen_msgs::LeadgenChassis :definition-)
      "# This message is to describe the chassis status of the vehicle
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

")



(provide :leadgen_msgs/LeadgenChassis "6e7786948abd184365b7821561378998")


