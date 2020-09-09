; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude LatencyStats.msg.html

(cl:defclass <LatencyStats> (roslisp-msg-protocol:ros-message)
  ((total_time_ms
    :reader total_time_ms
    :initarg :total_time_ms
    :type cl:float
    :initform 0.0)
   (init_frame_time_ms
    :reader init_frame_time_ms
    :initarg :init_frame_time_ms
    :type cl:float
    :initform 0.0))
)

(cl:defclass LatencyStats (<LatencyStats>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LatencyStats>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LatencyStats)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<LatencyStats> is deprecated: use planning_msgs-msg:LatencyStats instead.")))

(cl:ensure-generic-function 'total_time_ms-val :lambda-list '(m))
(cl:defmethod total_time_ms-val ((m <LatencyStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:total_time_ms-val is deprecated.  Use planning_msgs-msg:total_time_ms instead.")
  (total_time_ms m))

(cl:ensure-generic-function 'init_frame_time_ms-val :lambda-list '(m))
(cl:defmethod init_frame_time_ms-val ((m <LatencyStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:init_frame_time_ms-val is deprecated.  Use planning_msgs-msg:init_frame_time_ms instead.")
  (init_frame_time_ms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LatencyStats>) ostream)
  "Serializes a message object of type '<LatencyStats>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'total_time_ms))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'init_frame_time_ms))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LatencyStats>) istream)
  "Deserializes a message object of type '<LatencyStats>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'total_time_ms) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'init_frame_time_ms) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LatencyStats>)))
  "Returns string type for a message object of type '<LatencyStats>"
  "planning_msgs/LatencyStats")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LatencyStats)))
  "Returns string type for a message object of type 'LatencyStats"
  "planning_msgs/LatencyStats")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LatencyStats>)))
  "Returns md5sum for a message object of type '<LatencyStats>"
  "355dc3828983803a4a3b53991fcab533")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LatencyStats)))
  "Returns md5sum for a message object of type 'LatencyStats"
  "355dc3828983803a4a3b53991fcab533")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LatencyStats>)))
  "Returns full string definition for message of type '<LatencyStats>"
  (cl:format cl:nil "float64 total_time_ms~%float64 init_frame_time_ms~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LatencyStats)))
  "Returns full string definition for message of type 'LatencyStats"
  (cl:format cl:nil "float64 total_time_ms~%float64 init_frame_time_ms~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LatencyStats>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LatencyStats>))
  "Converts a ROS message object to a list"
  (cl:list 'LatencyStats
    (cl:cons ':total_time_ms (total_time_ms msg))
    (cl:cons ':init_frame_time_ms (init_frame_time_ms msg))
))
