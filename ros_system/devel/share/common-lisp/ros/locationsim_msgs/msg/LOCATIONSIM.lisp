; Auto-generated. Do not edit!


(cl:in-package locationsim_msgs-msg)


;//! \htmlinclude LOCATIONSIM.msg.html

(cl:defclass <LOCATIONSIM> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (position_x
    :reader position_x
    :initarg :position_x
    :type cl:float
    :initform 0.0)
   (position_y
    :reader position_y
    :initarg :position_y
    :type cl:float
    :initform 0.0)
   (positon_yaw
    :reader positon_yaw
    :initarg :positon_yaw
    :type cl:float
    :initform 0.0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass LOCATIONSIM (<LOCATIONSIM>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LOCATIONSIM>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LOCATIONSIM)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name locationsim_msgs-msg:<LOCATIONSIM> is deprecated: use locationsim_msgs-msg:LOCATIONSIM instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LOCATIONSIM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locationsim_msgs-msg:header-val is deprecated.  Use locationsim_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'position_x-val :lambda-list '(m))
(cl:defmethod position_x-val ((m <LOCATIONSIM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locationsim_msgs-msg:position_x-val is deprecated.  Use locationsim_msgs-msg:position_x instead.")
  (position_x m))

(cl:ensure-generic-function 'position_y-val :lambda-list '(m))
(cl:defmethod position_y-val ((m <LOCATIONSIM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locationsim_msgs-msg:position_y-val is deprecated.  Use locationsim_msgs-msg:position_y instead.")
  (position_y m))

(cl:ensure-generic-function 'positon_yaw-val :lambda-list '(m))
(cl:defmethod positon_yaw-val ((m <LOCATIONSIM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locationsim_msgs-msg:positon_yaw-val is deprecated.  Use locationsim_msgs-msg:positon_yaw instead.")
  (positon_yaw m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <LOCATIONSIM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader locationsim_msgs-msg:velocity-val is deprecated.  Use locationsim_msgs-msg:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LOCATIONSIM>) ostream)
  "Serializes a message object of type '<LOCATIONSIM>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'positon_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LOCATIONSIM>) istream)
  "Deserializes a message object of type '<LOCATIONSIM>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'positon_yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LOCATIONSIM>)))
  "Returns string type for a message object of type '<LOCATIONSIM>"
  "locationsim_msgs/LOCATIONSIM")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LOCATIONSIM)))
  "Returns string type for a message object of type 'LOCATIONSIM"
  "locationsim_msgs/LOCATIONSIM")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LOCATIONSIM>)))
  "Returns md5sum for a message object of type '<LOCATIONSIM>"
  "ba3599f0c405e73c0a26e3890c35dc16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LOCATIONSIM)))
  "Returns md5sum for a message object of type 'LOCATIONSIM"
  "ba3599f0c405e73c0a26e3890c35dc16")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LOCATIONSIM>)))
  "Returns full string definition for message of type '<LOCATIONSIM>"
  (cl:format cl:nil "std_msgs/Header header~%float32 position_x~%float32 position_y~%float32 positon_yaw~%float32 velocity~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LOCATIONSIM)))
  "Returns full string definition for message of type 'LOCATIONSIM"
  (cl:format cl:nil "std_msgs/Header header~%float32 position_x~%float32 position_y~%float32 positon_yaw~%float32 velocity~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LOCATIONSIM>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LOCATIONSIM>))
  "Converts a ROS message object to a list"
  (cl:list 'LOCATIONSIM
    (cl:cons ':header (header msg))
    (cl:cons ':position_x (position_x msg))
    (cl:cons ':position_y (position_y msg))
    (cl:cons ':positon_yaw (positon_yaw msg))
    (cl:cons ':velocity (velocity msg))
))
