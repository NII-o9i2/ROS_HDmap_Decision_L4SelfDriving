; Auto-generated. Do not edit!


(cl:in-package leadgen_msgs-msg)


;//! \htmlinclude LeadgenTrajectory.msg.html

(cl:defclass <LeadgenTrajectory> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (waypoints
    :reader waypoints
    :initarg :waypoints
    :type (cl:vector leadgen_msgs-msg:LeadgenWaypoint)
   :initform (cl:make-array 0 :element-type 'leadgen_msgs-msg:LeadgenWaypoint :initial-element (cl:make-instance 'leadgen_msgs-msg:LeadgenWaypoint)))
   (estop
    :reader estop
    :initarg :estop
    :type cl:boolean
    :initform cl:nil)
   (turn_light
    :reader turn_light
    :initarg :turn_light
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LeadgenTrajectory (<LeadgenTrajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LeadgenTrajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LeadgenTrajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leadgen_msgs-msg:<LeadgenTrajectory> is deprecated: use leadgen_msgs-msg:LeadgenTrajectory instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LeadgenTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:header-val is deprecated.  Use leadgen_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <LeadgenTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:waypoints-val is deprecated.  Use leadgen_msgs-msg:waypoints instead.")
  (waypoints m))

(cl:ensure-generic-function 'estop-val :lambda-list '(m))
(cl:defmethod estop-val ((m <LeadgenTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:estop-val is deprecated.  Use leadgen_msgs-msg:estop instead.")
  (estop m))

(cl:ensure-generic-function 'turn_light-val :lambda-list '(m))
(cl:defmethod turn_light-val ((m <LeadgenTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:turn_light-val is deprecated.  Use leadgen_msgs-msg:turn_light instead.")
  (turn_light m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LeadgenTrajectory>)))
    "Constants for message type '<LeadgenTrajectory>"
  '((:NO_TURN_LIGHT . 0)
    (:LEFT_TURN_LIGHT . 1)
    (:RIGHT_TURN_LIGHT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LeadgenTrajectory)))
    "Constants for message type 'LeadgenTrajectory"
  '((:NO_TURN_LIGHT . 0)
    (:LEFT_TURN_LIGHT . 1)
    (:RIGHT_TURN_LIGHT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LeadgenTrajectory>) ostream)
  "Serializes a message object of type '<LeadgenTrajectory>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waypoints))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'estop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'turn_light)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LeadgenTrajectory>) istream)
  "Deserializes a message object of type '<LeadgenTrajectory>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'leadgen_msgs-msg:LeadgenWaypoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'estop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'turn_light)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LeadgenTrajectory>)))
  "Returns string type for a message object of type '<LeadgenTrajectory>"
  "leadgen_msgs/LeadgenTrajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LeadgenTrajectory)))
  "Returns string type for a message object of type 'LeadgenTrajectory"
  "leadgen_msgs/LeadgenTrajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LeadgenTrajectory>)))
  "Returns md5sum for a message object of type '<LeadgenTrajectory>"
  "403d372ec69806b29a42abeb4348e3f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LeadgenTrajectory)))
  "Returns md5sum for a message object of type 'LeadgenTrajectory"
  "403d372ec69806b29a42abeb4348e3f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LeadgenTrajectory>)))
  "Returns full string definition for message of type '<LeadgenTrajectory>"
  (cl:format cl:nil "# This message is to describe the target trajectory for the vehicle~%# The message is usually sent by planning module and followed by control module~%~%# Header~%std_msgs/Header header~%~%# The target trajectory~%LeadgenWaypoint[] waypoints~%~%# emergency stop marker~%bool estop~%~%# turn light~%uint8 turn_light~%~%uint8 NO_TURN_LIGHT = 0~%uint8 LEFT_TURN_LIGHT = 1~%uint8 RIGHT_TURN_LIGHT = 2~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: leadgen_msgs/LeadgenWaypoint~%# This message is to describe a WAYPOINT in the target trajectory~%~%# header~%# std_msgs/Header header~%~%# 3D position~%geometry_msgs/Point point~%~%# trace info~%float64 theta # the heading of the trace at this point~%float64 kappa # the curvature of the trace at this point~%~%# SL info~%float64 station~%float64 lateral~%~%# speed info~%float32 speed # in [m/s]~%float32 accel # in [m/s^2],(optional)~%~%time time_arrival # the expected arrival time of this point~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LeadgenTrajectory)))
  "Returns full string definition for message of type 'LeadgenTrajectory"
  (cl:format cl:nil "# This message is to describe the target trajectory for the vehicle~%# The message is usually sent by planning module and followed by control module~%~%# Header~%std_msgs/Header header~%~%# The target trajectory~%LeadgenWaypoint[] waypoints~%~%# emergency stop marker~%bool estop~%~%# turn light~%uint8 turn_light~%~%uint8 NO_TURN_LIGHT = 0~%uint8 LEFT_TURN_LIGHT = 1~%uint8 RIGHT_TURN_LIGHT = 2~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: leadgen_msgs/LeadgenWaypoint~%# This message is to describe a WAYPOINT in the target trajectory~%~%# header~%# std_msgs/Header header~%~%# 3D position~%geometry_msgs/Point point~%~%# trace info~%float64 theta # the heading of the trace at this point~%float64 kappa # the curvature of the trace at this point~%~%# SL info~%float64 station~%float64 lateral~%~%# speed info~%float32 speed # in [m/s]~%float32 accel # in [m/s^2],(optional)~%~%time time_arrival # the expected arrival time of this point~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LeadgenTrajectory>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LeadgenTrajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'LeadgenTrajectory
    (cl:cons ':header (header msg))
    (cl:cons ':waypoints (waypoints msg))
    (cl:cons ':estop (estop msg))
    (cl:cons ':turn_light (turn_light msg))
))
