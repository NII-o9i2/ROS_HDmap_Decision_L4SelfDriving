;; Auto-generated. Do not edit!


(when (boundp 'leadgen_msgs::LeadgenTrajectory)
  (if (not (find-package "LEADGEN_MSGS"))
    (make-package "LEADGEN_MSGS"))
  (shadow 'LeadgenTrajectory (find-package "LEADGEN_MSGS")))
(unless (find-package "LEADGEN_MSGS::LEADGENTRAJECTORY")
  (make-package "LEADGEN_MSGS::LEADGENTRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude LeadgenTrajectory.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*NO_TURN_LIGHT*" (find-package "LEADGEN_MSGS::LEADGENTRAJECTORY"))
(shadow '*NO_TURN_LIGHT* (find-package "LEADGEN_MSGS::LEADGENTRAJECTORY"))
(defconstant leadgen_msgs::LeadgenTrajectory::*NO_TURN_LIGHT* 0)
(intern "*LEFT_TURN_LIGHT*" (find-package "LEADGEN_MSGS::LEADGENTRAJECTORY"))
(shadow '*LEFT_TURN_LIGHT* (find-package "LEADGEN_MSGS::LEADGENTRAJECTORY"))
(defconstant leadgen_msgs::LeadgenTrajectory::*LEFT_TURN_LIGHT* 1)
(intern "*RIGHT_TURN_LIGHT*" (find-package "LEADGEN_MSGS::LEADGENTRAJECTORY"))
(shadow '*RIGHT_TURN_LIGHT* (find-package "LEADGEN_MSGS::LEADGENTRAJECTORY"))
(defconstant leadgen_msgs::LeadgenTrajectory::*RIGHT_TURN_LIGHT* 2)
(defclass leadgen_msgs::LeadgenTrajectory
  :super ros::object
  :slots (_header _waypoints _estop _turn_light ))

(defmethod leadgen_msgs::LeadgenTrajectory
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:waypoints __waypoints) (let (r) (dotimes (i 0) (push (instance leadgen_msgs::LeadgenWaypoint :init) r)) r))
    ((:estop __estop) nil)
    ((:turn_light __turn_light) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _waypoints __waypoints)
   (setq _estop __estop)
   (setq _turn_light (round __turn_light))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:estop
   (&optional __estop)
   (if __estop (setq _estop __estop)) _estop)
  (:turn_light
   (&optional __turn_light)
   (if __turn_light (setq _turn_light __turn_light)) _turn_light)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; leadgen_msgs/LeadgenWaypoint[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ;; bool _estop
    1
    ;; uint8 _turn_light
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; leadgen_msgs/LeadgenWaypoint[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;; bool _estop
       (if _estop (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _turn_light
       (write-byte _turn_light s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; leadgen_msgs/LeadgenWaypoint[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance leadgen_msgs::LeadgenWaypoint :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _estop
     (setq _estop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _turn_light
     (setq _turn_light (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get leadgen_msgs::LeadgenTrajectory :md5sum-) "403d372ec69806b29a42abeb4348e3f0")
(setf (get leadgen_msgs::LeadgenTrajectory :datatype-) "leadgen_msgs/LeadgenTrajectory")
(setf (get leadgen_msgs::LeadgenTrajectory :definition-)
      "# This message is to describe the target trajectory for the vehicle
# The message is usually sent by planning module and followed by control module

# Header
std_msgs/Header header

# The target trajectory
LeadgenWaypoint[] waypoints

# emergency stop marker
bool estop

# turn light
uint8 turn_light

uint8 NO_TURN_LIGHT = 0
uint8 LEFT_TURN_LIGHT = 1
uint8 RIGHT_TURN_LIGHT = 2

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



================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :leadgen_msgs/LeadgenTrajectory "403d372ec69806b29a42abeb4348e3f0")


