; Auto-generated. Do not edit!


(cl:in-package leadgen_msgs-msg)


;//! \htmlinclude LeadgenChassis.msg.html

(cl:defclass <LeadgenChassis> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (auto_mode
    :reader auto_mode
    :initarg :auto_mode
    :type cl:fixnum
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type cl:float
    :initform 0.0)
   (throttle
    :reader throttle
    :initarg :throttle
    :type cl:float
    :initform 0.0)
   (brake
    :reader brake
    :initarg :brake
    :type cl:float
    :initform 0.0)
   (gear
    :reader gear
    :initarg :gear
    :type cl:fixnum
    :initform 0)
   (steer_pos
    :reader steer_pos
    :initarg :steer_pos
    :type cl:float
    :initform 0.0)
   (wheel_speed
    :reader wheel_speed
    :initarg :wheel_speed
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (engine_rpm
    :reader engine_rpm
    :initarg :engine_rpm
    :type cl:float
    :initform 0.0)
   (odometer
    :reader odometer
    :initarg :odometer
    :type cl:float
    :initform 0.0)
   (fuel_level
    :reader fuel_level
    :initarg :fuel_level
    :type cl:float
    :initform 0.0))
)

(cl:defclass LeadgenChassis (<LeadgenChassis>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LeadgenChassis>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LeadgenChassis)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leadgen_msgs-msg:<LeadgenChassis> is deprecated: use leadgen_msgs-msg:LeadgenChassis instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LeadgenChassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:header-val is deprecated.  Use leadgen_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'auto_mode-val :lambda-list '(m))
(cl:defmethod auto_mode-val ((m <LeadgenChassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:auto_mode-val is deprecated.  Use leadgen_msgs-msg:auto_mode instead.")
  (auto_mode m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <LeadgenChassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:speed-val is deprecated.  Use leadgen_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <LeadgenChassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:acceleration-val is deprecated.  Use leadgen_msgs-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'throttle-val :lambda-list '(m))
(cl:defmethod throttle-val ((m <LeadgenChassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:throttle-val is deprecated.  Use leadgen_msgs-msg:throttle instead.")
  (throttle m))

(cl:ensure-generic-function 'brake-val :lambda-list '(m))
(cl:defmethod brake-val ((m <LeadgenChassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:brake-val is deprecated.  Use leadgen_msgs-msg:brake instead.")
  (brake m))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <LeadgenChassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:gear-val is deprecated.  Use leadgen_msgs-msg:gear instead.")
  (gear m))

(cl:ensure-generic-function 'steer_pos-val :lambda-list '(m))
(cl:defmethod steer_pos-val ((m <LeadgenChassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:steer_pos-val is deprecated.  Use leadgen_msgs-msg:steer_pos instead.")
  (steer_pos m))

(cl:ensure-generic-function 'wheel_speed-val :lambda-list '(m))
(cl:defmethod wheel_speed-val ((m <LeadgenChassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:wheel_speed-val is deprecated.  Use leadgen_msgs-msg:wheel_speed instead.")
  (wheel_speed m))

(cl:ensure-generic-function 'engine_rpm-val :lambda-list '(m))
(cl:defmethod engine_rpm-val ((m <LeadgenChassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:engine_rpm-val is deprecated.  Use leadgen_msgs-msg:engine_rpm instead.")
  (engine_rpm m))

(cl:ensure-generic-function 'odometer-val :lambda-list '(m))
(cl:defmethod odometer-val ((m <LeadgenChassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:odometer-val is deprecated.  Use leadgen_msgs-msg:odometer instead.")
  (odometer m))

(cl:ensure-generic-function 'fuel_level-val :lambda-list '(m))
(cl:defmethod fuel_level-val ((m <LeadgenChassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:fuel_level-val is deprecated.  Use leadgen_msgs-msg:fuel_level instead.")
  (fuel_level m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LeadgenChassis>)))
    "Constants for message type '<LeadgenChassis>"
  '((:AUTO_MODE_OFF . 0)
    (:AUTO_MODE_SYSTEM_ON . 1)
    (:AUTO_MODE_BRAKE_ON . 2)
    (:AUTO_MODE_THROTTLE_ON . 4)
    (:AUTO_MODE_SPEED_ON . 8)
    (:AUTO_MODE_STEER_ON . 16)
    (:AUTO_MODE_STEER_POS . 32)
    (:AUTO_MODE_STEER_VEL . 64)
    (:AUTO_MODE_STEER_TOR . 128)
    (:GEAR_INVALID . 0)
    (:GEAR_P . 1)
    (:GEAR_R . 2)
    (:GEAR_N . 4)
    (:GEAR_D . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LeadgenChassis)))
    "Constants for message type 'LeadgenChassis"
  '((:AUTO_MODE_OFF . 0)
    (:AUTO_MODE_SYSTEM_ON . 1)
    (:AUTO_MODE_BRAKE_ON . 2)
    (:AUTO_MODE_THROTTLE_ON . 4)
    (:AUTO_MODE_SPEED_ON . 8)
    (:AUTO_MODE_STEER_ON . 16)
    (:AUTO_MODE_STEER_POS . 32)
    (:AUTO_MODE_STEER_VEL . 64)
    (:AUTO_MODE_STEER_TOR . 128)
    (:GEAR_INVALID . 0)
    (:GEAR_P . 1)
    (:GEAR_R . 2)
    (:GEAR_N . 4)
    (:GEAR_D . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LeadgenChassis>) ostream)
  "Serializes a message object of type '<LeadgenChassis>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_mode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'acceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'throttle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brake))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'gear)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steer_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wheel_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'wheel_speed))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'engine_rpm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'odometer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fuel_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LeadgenChassis>) istream)
  "Deserializes a message object of type '<LeadgenChassis>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_mode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acceleration) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gear) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steer_pos) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wheel_speed) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wheel_speed)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'engine_rpm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'odometer) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fuel_level) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LeadgenChassis>)))
  "Returns string type for a message object of type '<LeadgenChassis>"
  "leadgen_msgs/LeadgenChassis")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LeadgenChassis)))
  "Returns string type for a message object of type 'LeadgenChassis"
  "leadgen_msgs/LeadgenChassis")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LeadgenChassis>)))
  "Returns md5sum for a message object of type '<LeadgenChassis>"
  "6e7786948abd184365b7821561378998")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LeadgenChassis)))
  "Returns md5sum for a message object of type 'LeadgenChassis"
  "6e7786948abd184365b7821561378998")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LeadgenChassis>)))
  "Returns full string definition for message of type '<LeadgenChassis>"
  (cl:format cl:nil "# This message is to describe the chassis status of the vehicle~%# The information usually comes from CAN bus of the vehicle interface~%~%# Header~%std_msgs/Header header~%~%# constant definitions~%# auto_mode is bit-wise marker~%# +-------------------+-------------------+~%# | H3 | H2 | H1 | H0 | L3 | L2 | L1 | L0 |~%# +-------------------+-------------------+~%# |  Steering modes   |   speed modes     |~%# +-------------------+-------------------+~%uint8 AUTO_MODE_OFF = 0~%uint8 AUTO_MODE_SYSTEM_ON = 1 # bit L0~%uint8 AUTO_MODE_BRAKE_ON = 2 # bit L1~%uint8 AUTO_MODE_THROTTLE_ON = 4  # bit L2~%uint8 AUTO_MODE_SPEED_ON = 8  # bit L3~%~%uint8 AUTO_MODE_STEER_ON = 16 # bit H0, 0x10~%uint8 AUTO_MODE_STEER_POS = 32 # bit H1, 0x20~%uint8 AUTO_MODE_STEER_VEL = 64 # bit H2, 0x40~%uint8 AUTO_MODE_STEER_TOR = 128 # bit H3, 0x80~%~%# vehicle current mode~%uint8 auto_mode~%~%# vehicle current longitude status~%float32 speed # in signed [m/s]~%float32 acceleration # in signed [m/s^2]~%float32 throttle # in [percentage]~%float32 brake # brake pressure [MPa]~%~%# gear control is bit-wise marker~%# +-------------------+-------------------+~%# | H3 | H2 | H1 | H0 | L3 | L2 | L1 | L0 |~%# +-------------------+-------------------+~%uint8 GEAR_INVALID = 0~%uint8 GEAR_P = 1~%uint8 GEAR_R = 2~%uint8 GEAR_N = 4~%uint8 GEAR_D = 8~%~%int8 gear # gear position~%~%# vehicle current steering status~%float32 steer_pos # in signed [percentage], positive to left~%~%# other operational status(optional)~%float32[] wheel_speed~%float32 engine_rpm~%float32 odometer~%float32 fuel_level~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LeadgenChassis)))
  "Returns full string definition for message of type 'LeadgenChassis"
  (cl:format cl:nil "# This message is to describe the chassis status of the vehicle~%# The information usually comes from CAN bus of the vehicle interface~%~%# Header~%std_msgs/Header header~%~%# constant definitions~%# auto_mode is bit-wise marker~%# +-------------------+-------------------+~%# | H3 | H2 | H1 | H0 | L3 | L2 | L1 | L0 |~%# +-------------------+-------------------+~%# |  Steering modes   |   speed modes     |~%# +-------------------+-------------------+~%uint8 AUTO_MODE_OFF = 0~%uint8 AUTO_MODE_SYSTEM_ON = 1 # bit L0~%uint8 AUTO_MODE_BRAKE_ON = 2 # bit L1~%uint8 AUTO_MODE_THROTTLE_ON = 4  # bit L2~%uint8 AUTO_MODE_SPEED_ON = 8  # bit L3~%~%uint8 AUTO_MODE_STEER_ON = 16 # bit H0, 0x10~%uint8 AUTO_MODE_STEER_POS = 32 # bit H1, 0x20~%uint8 AUTO_MODE_STEER_VEL = 64 # bit H2, 0x40~%uint8 AUTO_MODE_STEER_TOR = 128 # bit H3, 0x80~%~%# vehicle current mode~%uint8 auto_mode~%~%# vehicle current longitude status~%float32 speed # in signed [m/s]~%float32 acceleration # in signed [m/s^2]~%float32 throttle # in [percentage]~%float32 brake # brake pressure [MPa]~%~%# gear control is bit-wise marker~%# +-------------------+-------------------+~%# | H3 | H2 | H1 | H0 | L3 | L2 | L1 | L0 |~%# +-------------------+-------------------+~%uint8 GEAR_INVALID = 0~%uint8 GEAR_P = 1~%uint8 GEAR_R = 2~%uint8 GEAR_N = 4~%uint8 GEAR_D = 8~%~%int8 gear # gear position~%~%# vehicle current steering status~%float32 steer_pos # in signed [percentage], positive to left~%~%# other operational status(optional)~%float32[] wheel_speed~%float32 engine_rpm~%float32 odometer~%float32 fuel_level~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LeadgenChassis>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     4
     4
     4
     1
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wheel_speed) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LeadgenChassis>))
  "Converts a ROS message object to a list"
  (cl:list 'LeadgenChassis
    (cl:cons ':header (header msg))
    (cl:cons ':auto_mode (auto_mode msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':throttle (throttle msg))
    (cl:cons ':brake (brake msg))
    (cl:cons ':gear (gear msg))
    (cl:cons ':steer_pos (steer_pos msg))
    (cl:cons ':wheel_speed (wheel_speed msg))
    (cl:cons ':engine_rpm (engine_rpm msg))
    (cl:cons ':odometer (odometer msg))
    (cl:cons ':fuel_level (fuel_level msg))
))
