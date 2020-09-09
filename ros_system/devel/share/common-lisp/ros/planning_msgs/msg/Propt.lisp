; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude Propt.msg.html

(cl:defclass <Propt> (roslisp-msg-protocol:ros-message)
  ((frenet_l
    :reader frenet_l
    :initarg :frenet_l
    :type cl:float
    :initform 0.0)
   (frenet_s
    :reader frenet_s
    :initarg :frenet_s
    :type cl:float
    :initform 0.0)
   (angle_diff
    :reader angle_diff
    :initarg :angle_diff
    :type cl:float
    :initform 0.0))
)

(cl:defclass Propt (<Propt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Propt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Propt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<Propt> is deprecated: use planning_msgs-msg:Propt instead.")))

(cl:ensure-generic-function 'frenet_l-val :lambda-list '(m))
(cl:defmethod frenet_l-val ((m <Propt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:frenet_l-val is deprecated.  Use planning_msgs-msg:frenet_l instead.")
  (frenet_l m))

(cl:ensure-generic-function 'frenet_s-val :lambda-list '(m))
(cl:defmethod frenet_s-val ((m <Propt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:frenet_s-val is deprecated.  Use planning_msgs-msg:frenet_s instead.")
  (frenet_s m))

(cl:ensure-generic-function 'angle_diff-val :lambda-list '(m))
(cl:defmethod angle_diff-val ((m <Propt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:angle_diff-val is deprecated.  Use planning_msgs-msg:angle_diff instead.")
  (angle_diff m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Propt>) ostream)
  "Serializes a message object of type '<Propt>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frenet_l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frenet_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle_diff))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Propt>) istream)
  "Deserializes a message object of type '<Propt>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frenet_l) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frenet_s) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_diff) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Propt>)))
  "Returns string type for a message object of type '<Propt>"
  "planning_msgs/Propt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Propt)))
  "Returns string type for a message object of type 'Propt"
  "planning_msgs/Propt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Propt>)))
  "Returns md5sum for a message object of type '<Propt>"
  "36e7dfcccde17a7b4086abce8e13aa97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Propt)))
  "Returns md5sum for a message object of type 'Propt"
  "36e7dfcccde17a7b4086abce8e13aa97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Propt>)))
  "Returns full string definition for message of type '<Propt>"
  (cl:format cl:nil "float32 frenet_l~%float32 frenet_s~%float32 angle_diff~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Propt)))
  "Returns full string definition for message of type 'Propt"
  (cl:format cl:nil "float32 frenet_l~%float32 frenet_s~%float32 angle_diff~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Propt>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Propt>))
  "Converts a ROS message object to a list"
  (cl:list 'Propt
    (cl:cons ':frenet_l (frenet_l msg))
    (cl:cons ':frenet_s (frenet_s msg))
    (cl:cons ':angle_diff (angle_diff msg))
))
