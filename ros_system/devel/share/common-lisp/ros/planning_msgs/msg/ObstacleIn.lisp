; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude ObstacleIn.msg.html

(cl:defclass <ObstacleIn> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (s
    :reader s
    :initarg :s
    :type cl:float
    :initform 0.0)
   (l
    :reader l
    :initarg :l
    :type cl:float
    :initform 0.0)
   (vs
    :reader vs
    :initarg :vs
    :type cl:float
    :initform 0.0)
   (as
    :reader as
    :initarg :as
    :type cl:float
    :initform 0.0)
   (vl
    :reader vl
    :initarg :vl
    :type cl:float
    :initform 0.0)
   (al
    :reader al
    :initarg :al
    :type cl:float
    :initform 0.0)
   (lane_no
    :reader lane_no
    :initarg :lane_no
    :type cl:fixnum
    :initform 0)
   (time_cost
    :reader time_cost
    :initarg :time_cost
    :type cl:float
    :initform 0.0)
   (des_cost
    :reader des_cost
    :initarg :des_cost
    :type cl:float
    :initform 0.0)
   (decision_cost
    :reader decision_cost
    :initarg :decision_cost
    :type cl:float
    :initform 0.0)
   (decision_tag
    :reader decision_tag
    :initarg :decision_tag
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ObstacleIn (<ObstacleIn>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstacleIn>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstacleIn)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<ObstacleIn> is deprecated: use planning_msgs-msg:ObstacleIn instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ObstacleIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:id-val is deprecated.  Use planning_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 's-val :lambda-list '(m))
(cl:defmethod s-val ((m <ObstacleIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:s-val is deprecated.  Use planning_msgs-msg:s instead.")
  (s m))

(cl:ensure-generic-function 'l-val :lambda-list '(m))
(cl:defmethod l-val ((m <ObstacleIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:l-val is deprecated.  Use planning_msgs-msg:l instead.")
  (l m))

(cl:ensure-generic-function 'vs-val :lambda-list '(m))
(cl:defmethod vs-val ((m <ObstacleIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:vs-val is deprecated.  Use planning_msgs-msg:vs instead.")
  (vs m))

(cl:ensure-generic-function 'as-val :lambda-list '(m))
(cl:defmethod as-val ((m <ObstacleIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:as-val is deprecated.  Use planning_msgs-msg:as instead.")
  (as m))

(cl:ensure-generic-function 'vl-val :lambda-list '(m))
(cl:defmethod vl-val ((m <ObstacleIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:vl-val is deprecated.  Use planning_msgs-msg:vl instead.")
  (vl m))

(cl:ensure-generic-function 'al-val :lambda-list '(m))
(cl:defmethod al-val ((m <ObstacleIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:al-val is deprecated.  Use planning_msgs-msg:al instead.")
  (al m))

(cl:ensure-generic-function 'lane_no-val :lambda-list '(m))
(cl:defmethod lane_no-val ((m <ObstacleIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lane_no-val is deprecated.  Use planning_msgs-msg:lane_no instead.")
  (lane_no m))

(cl:ensure-generic-function 'time_cost-val :lambda-list '(m))
(cl:defmethod time_cost-val ((m <ObstacleIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:time_cost-val is deprecated.  Use planning_msgs-msg:time_cost instead.")
  (time_cost m))

(cl:ensure-generic-function 'des_cost-val :lambda-list '(m))
(cl:defmethod des_cost-val ((m <ObstacleIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:des_cost-val is deprecated.  Use planning_msgs-msg:des_cost instead.")
  (des_cost m))

(cl:ensure-generic-function 'decision_cost-val :lambda-list '(m))
(cl:defmethod decision_cost-val ((m <ObstacleIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:decision_cost-val is deprecated.  Use planning_msgs-msg:decision_cost instead.")
  (decision_cost m))

(cl:ensure-generic-function 'decision_tag-val :lambda-list '(m))
(cl:defmethod decision_tag-val ((m <ObstacleIn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:decision_tag-val is deprecated.  Use planning_msgs-msg:decision_tag instead.")
  (decision_tag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstacleIn>) ostream)
  "Serializes a message object of type '<ObstacleIn>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 's))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'as))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'al))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'lane_no)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time_cost))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'des_cost))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'decision_cost))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'decision_tag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstacleIn>) istream)
  "Deserializes a message object of type '<ObstacleIn>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 's) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'l) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vs) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'as) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vl) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'al) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lane_no) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_cost) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'des_cost) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'decision_cost) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'decision_tag) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstacleIn>)))
  "Returns string type for a message object of type '<ObstacleIn>"
  "planning_msgs/ObstacleIn")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstacleIn)))
  "Returns string type for a message object of type 'ObstacleIn"
  "planning_msgs/ObstacleIn")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstacleIn>)))
  "Returns md5sum for a message object of type '<ObstacleIn>"
  "839da740b46a1232ec0479df07f94f66")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstacleIn)))
  "Returns md5sum for a message object of type 'ObstacleIn"
  "839da740b46a1232ec0479df07f94f66")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstacleIn>)))
  "Returns full string definition for message of type '<ObstacleIn>"
  (cl:format cl:nil "int8 id~%float32 s~%float32 l~%float32 vs~%float32 as~%float32 vl~%float32 al~%int8 lane_no~%float32 time_cost~%float32 des_cost~%float32 decision_cost~%int8 decision_tag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstacleIn)))
  "Returns full string definition for message of type 'ObstacleIn"
  (cl:format cl:nil "int8 id~%float32 s~%float32 l~%float32 vs~%float32 as~%float32 vl~%float32 al~%int8 lane_no~%float32 time_cost~%float32 des_cost~%float32 decision_cost~%int8 decision_tag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstacleIn>))
  (cl:+ 0
     1
     4
     4
     4
     4
     4
     4
     1
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstacleIn>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstacleIn
    (cl:cons ':id (id msg))
    (cl:cons ':s (s msg))
    (cl:cons ':l (l msg))
    (cl:cons ':vs (vs msg))
    (cl:cons ':as (as msg))
    (cl:cons ':vl (vl msg))
    (cl:cons ':al (al msg))
    (cl:cons ':lane_no (lane_no msg))
    (cl:cons ':time_cost (time_cost msg))
    (cl:cons ':des_cost (des_cost msg))
    (cl:cons ':decision_cost (decision_cost msg))
    (cl:cons ':decision_tag (decision_tag msg))
))
