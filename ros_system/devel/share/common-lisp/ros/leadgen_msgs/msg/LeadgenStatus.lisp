; Auto-generated. Do not edit!


(cl:in-package leadgen_msgs-msg)


;//! \htmlinclude LeadgenStatus.msg.html

(cl:defclass <LeadgenStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (linear_velocity
    :reader linear_velocity
    :initarg :linear_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (linear_acceleration
    :reader linear_acceleration
    :initarg :linear_acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (chassis_status
    :reader chassis_status
    :initarg :chassis_status
    :type leadgen_msgs-msg:LeadgenChassis
    :initform (cl:make-instance 'leadgen_msgs-msg:LeadgenChassis)))
)

(cl:defclass LeadgenStatus (<LeadgenStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LeadgenStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LeadgenStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leadgen_msgs-msg:<LeadgenStatus> is deprecated: use leadgen_msgs-msg:LeadgenStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LeadgenStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:header-val is deprecated.  Use leadgen_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <LeadgenStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:pose-val is deprecated.  Use leadgen_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'linear_velocity-val :lambda-list '(m))
(cl:defmethod linear_velocity-val ((m <LeadgenStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:linear_velocity-val is deprecated.  Use leadgen_msgs-msg:linear_velocity instead.")
  (linear_velocity m))

(cl:ensure-generic-function 'linear_acceleration-val :lambda-list '(m))
(cl:defmethod linear_acceleration-val ((m <LeadgenStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:linear_acceleration-val is deprecated.  Use leadgen_msgs-msg:linear_acceleration instead.")
  (linear_acceleration m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <LeadgenStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:angular_velocity-val is deprecated.  Use leadgen_msgs-msg:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'chassis_status-val :lambda-list '(m))
(cl:defmethod chassis_status-val ((m <LeadgenStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:chassis_status-val is deprecated.  Use leadgen_msgs-msg:chassis_status instead.")
  (chassis_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LeadgenStatus>) ostream)
  "Serializes a message object of type '<LeadgenStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'chassis_status) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LeadgenStatus>) istream)
  "Deserializes a message object of type '<LeadgenStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'chassis_status) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LeadgenStatus>)))
  "Returns string type for a message object of type '<LeadgenStatus>"
  "leadgen_msgs/LeadgenStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LeadgenStatus)))
  "Returns string type for a message object of type 'LeadgenStatus"
  "leadgen_msgs/LeadgenStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LeadgenStatus>)))
  "Returns md5sum for a message object of type '<LeadgenStatus>"
  "56b823ded06f347e2acd96e136b79bac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LeadgenStatus)))
  "Returns md5sum for a message object of type 'LeadgenStatus"
  "56b823ded06f347e2acd96e136b79bac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LeadgenStatus>)))
  "Returns full string definition for message of type '<LeadgenStatus>"
  (cl:format cl:nil "# This message is to describe the overall vehicle status~%# The message includes both vehicle positioning info and Chassis info~%~%# Header~%std_msgs/Header header~%~%# vehicle position~%geometry_msgs/Pose pose~%geometry_msgs/Vector3 linear_velocity~%geometry_msgs/Vector3 linear_acceleration~%geometry_msgs/Vector3 angular_velocity~%~%# vehicle chassis status~%LeadgenChassis chassis_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: leadgen_msgs/LeadgenChassis~%# This message is to describe the chassis status of the vehicle~%# The information usually comes from CAN bus of the vehicle interface~%~%# Header~%std_msgs/Header header~%~%# constant definitions~%# auto_mode is bit-wise marker~%# +-------------------+-------------------+~%# | H3 | H2 | H1 | H0 | L3 | L2 | L1 | L0 |~%# +-------------------+-------------------+~%# |  Steering modes   |   speed modes     |~%# +-------------------+-------------------+~%uint8 AUTO_MODE_OFF = 0~%uint8 AUTO_MODE_SYSTEM_ON = 1 # bit L0~%uint8 AUTO_MODE_BRAKE_ON = 2 # bit L1~%uint8 AUTO_MODE_THROTTLE_ON = 4  # bit L2~%uint8 AUTO_MODE_SPEED_ON = 8  # bit L3~%~%uint8 AUTO_MODE_STEER_ON = 16 # bit H0, 0x10~%uint8 AUTO_MODE_STEER_POS = 32 # bit H1, 0x20~%uint8 AUTO_MODE_STEER_VEL = 64 # bit H2, 0x40~%uint8 AUTO_MODE_STEER_TOR = 128 # bit H3, 0x80~%~%# vehicle current mode~%uint8 auto_mode~%~%# vehicle current longitude status~%float32 speed # in signed [m/s]~%float32 acceleration # in signed [m/s^2]~%float32 throttle # in [percentage]~%float32 brake # brake pressure [MPa]~%~%# gear control is bit-wise marker~%# +-------------------+-------------------+~%# | H3 | H2 | H1 | H0 | L3 | L2 | L1 | L0 |~%# +-------------------+-------------------+~%uint8 GEAR_INVALID = 0~%uint8 GEAR_P = 1~%uint8 GEAR_R = 2~%uint8 GEAR_N = 4~%uint8 GEAR_D = 8~%~%int8 gear # gear position~%~%# vehicle current steering status~%float32 steer_pos # in signed [percentage], positive to left~%~%# other operational status(optional)~%float32[] wheel_speed~%float32 engine_rpm~%float32 odometer~%float32 fuel_level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LeadgenStatus)))
  "Returns full string definition for message of type 'LeadgenStatus"
  (cl:format cl:nil "# This message is to describe the overall vehicle status~%# The message includes both vehicle positioning info and Chassis info~%~%# Header~%std_msgs/Header header~%~%# vehicle position~%geometry_msgs/Pose pose~%geometry_msgs/Vector3 linear_velocity~%geometry_msgs/Vector3 linear_acceleration~%geometry_msgs/Vector3 angular_velocity~%~%# vehicle chassis status~%LeadgenChassis chassis_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: leadgen_msgs/LeadgenChassis~%# This message is to describe the chassis status of the vehicle~%# The information usually comes from CAN bus of the vehicle interface~%~%# Header~%std_msgs/Header header~%~%# constant definitions~%# auto_mode is bit-wise marker~%# +-------------------+-------------------+~%# | H3 | H2 | H1 | H0 | L3 | L2 | L1 | L0 |~%# +-------------------+-------------------+~%# |  Steering modes   |   speed modes     |~%# +-------------------+-------------------+~%uint8 AUTO_MODE_OFF = 0~%uint8 AUTO_MODE_SYSTEM_ON = 1 # bit L0~%uint8 AUTO_MODE_BRAKE_ON = 2 # bit L1~%uint8 AUTO_MODE_THROTTLE_ON = 4  # bit L2~%uint8 AUTO_MODE_SPEED_ON = 8  # bit L3~%~%uint8 AUTO_MODE_STEER_ON = 16 # bit H0, 0x10~%uint8 AUTO_MODE_STEER_POS = 32 # bit H1, 0x20~%uint8 AUTO_MODE_STEER_VEL = 64 # bit H2, 0x40~%uint8 AUTO_MODE_STEER_TOR = 128 # bit H3, 0x80~%~%# vehicle current mode~%uint8 auto_mode~%~%# vehicle current longitude status~%float32 speed # in signed [m/s]~%float32 acceleration # in signed [m/s^2]~%float32 throttle # in [percentage]~%float32 brake # brake pressure [MPa]~%~%# gear control is bit-wise marker~%# +-------------------+-------------------+~%# | H3 | H2 | H1 | H0 | L3 | L2 | L1 | L0 |~%# +-------------------+-------------------+~%uint8 GEAR_INVALID = 0~%uint8 GEAR_P = 1~%uint8 GEAR_R = 2~%uint8 GEAR_N = 4~%uint8 GEAR_D = 8~%~%int8 gear # gear position~%~%# vehicle current steering status~%float32 steer_pos # in signed [percentage], positive to left~%~%# other operational status(optional)~%float32[] wheel_speed~%float32 engine_rpm~%float32 odometer~%float32 fuel_level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LeadgenStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'chassis_status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LeadgenStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'LeadgenStatus
    (cl:cons ':header (header msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':linear_velocity (linear_velocity msg))
    (cl:cons ':linear_acceleration (linear_acceleration msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
    (cl:cons ':chassis_status (chassis_status msg))
))
