; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude GlobalObstacle.msg.html

(cl:defclass <GlobalObstacle> (roslisp-msg-protocol:ros-message)
  ((enu_x
    :reader enu_x
    :initarg :enu_x
    :type cl:float
    :initform 0.0)
   (enu_y
    :reader enu_y
    :initarg :enu_y
    :type cl:float
    :initform 0.0)
   (enu_theta
    :reader enu_theta
    :initarg :enu_theta
    :type cl:float
    :initform 0.0)
   (enu_vx
    :reader enu_vx
    :initarg :enu_vx
    :type cl:float
    :initform 0.0)
   (enu_vy
    :reader enu_vy
    :initarg :enu_vy
    :type cl:float
    :initform 0.0)
   (enu_ax
    :reader enu_ax
    :initarg :enu_ax
    :type cl:float
    :initform 0.0)
   (enu_ay
    :reader enu_ay
    :initarg :enu_ay
    :type cl:float
    :initform 0.0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0))
)

(cl:defclass GlobalObstacle (<GlobalObstacle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GlobalObstacle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GlobalObstacle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<GlobalObstacle> is deprecated: use planning_msgs-msg:GlobalObstacle instead.")))

(cl:ensure-generic-function 'enu_x-val :lambda-list '(m))
(cl:defmethod enu_x-val ((m <GlobalObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:enu_x-val is deprecated.  Use planning_msgs-msg:enu_x instead.")
  (enu_x m))

(cl:ensure-generic-function 'enu_y-val :lambda-list '(m))
(cl:defmethod enu_y-val ((m <GlobalObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:enu_y-val is deprecated.  Use planning_msgs-msg:enu_y instead.")
  (enu_y m))

(cl:ensure-generic-function 'enu_theta-val :lambda-list '(m))
(cl:defmethod enu_theta-val ((m <GlobalObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:enu_theta-val is deprecated.  Use planning_msgs-msg:enu_theta instead.")
  (enu_theta m))

(cl:ensure-generic-function 'enu_vx-val :lambda-list '(m))
(cl:defmethod enu_vx-val ((m <GlobalObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:enu_vx-val is deprecated.  Use planning_msgs-msg:enu_vx instead.")
  (enu_vx m))

(cl:ensure-generic-function 'enu_vy-val :lambda-list '(m))
(cl:defmethod enu_vy-val ((m <GlobalObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:enu_vy-val is deprecated.  Use planning_msgs-msg:enu_vy instead.")
  (enu_vy m))

(cl:ensure-generic-function 'enu_ax-val :lambda-list '(m))
(cl:defmethod enu_ax-val ((m <GlobalObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:enu_ax-val is deprecated.  Use planning_msgs-msg:enu_ax instead.")
  (enu_ax m))

(cl:ensure-generic-function 'enu_ay-val :lambda-list '(m))
(cl:defmethod enu_ay-val ((m <GlobalObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:enu_ay-val is deprecated.  Use planning_msgs-msg:enu_ay instead.")
  (enu_ay m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <GlobalObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:confidence-val is deprecated.  Use planning_msgs-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <GlobalObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:type-val is deprecated.  Use planning_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <GlobalObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:velocity-val is deprecated.  Use planning_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <GlobalObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:length-val is deprecated.  Use planning_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <GlobalObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:width-val is deprecated.  Use planning_msgs-msg:width instead.")
  (width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GlobalObstacle>) ostream)
  "Serializes a message object of type '<GlobalObstacle>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'enu_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'enu_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'enu_theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'enu_vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'enu_vy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'enu_ax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'enu_ay))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GlobalObstacle>) istream)
  "Deserializes a message object of type '<GlobalObstacle>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'enu_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'enu_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'enu_theta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'enu_vx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'enu_vy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'enu_ax) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'enu_ay) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GlobalObstacle>)))
  "Returns string type for a message object of type '<GlobalObstacle>"
  "planning_msgs/GlobalObstacle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalObstacle)))
  "Returns string type for a message object of type 'GlobalObstacle"
  "planning_msgs/GlobalObstacle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GlobalObstacle>)))
  "Returns md5sum for a message object of type '<GlobalObstacle>"
  "b7d3afddcf69de81cf0f9f41ad80e5fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GlobalObstacle)))
  "Returns md5sum for a message object of type 'GlobalObstacle"
  "b7d3afddcf69de81cf0f9f41ad80e5fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GlobalObstacle>)))
  "Returns full string definition for message of type '<GlobalObstacle>"
  (cl:format cl:nil "float32 enu_x~%float32 enu_y~%float32 enu_theta~%float32 enu_vx~%float32 enu_vy~%float32 enu_ax~%float32 enu_ay~%float32 confidence~%int8 type~%float32 velocity~%float32 length~%float32 width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GlobalObstacle)))
  "Returns full string definition for message of type 'GlobalObstacle"
  (cl:format cl:nil "float32 enu_x~%float32 enu_y~%float32 enu_theta~%float32 enu_vx~%float32 enu_vy~%float32 enu_ax~%float32 enu_ay~%float32 confidence~%int8 type~%float32 velocity~%float32 length~%float32 width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GlobalObstacle>))
  (cl:+ 0
     4
     4
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
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GlobalObstacle>))
  "Converts a ROS message object to a list"
  (cl:list 'GlobalObstacle
    (cl:cons ':enu_x (enu_x msg))
    (cl:cons ':enu_y (enu_y msg))
    (cl:cons ':enu_theta (enu_theta msg))
    (cl:cons ':enu_vx (enu_vx msg))
    (cl:cons ':enu_vy (enu_vy msg))
    (cl:cons ':enu_ax (enu_ax msg))
    (cl:cons ':enu_ay (enu_ay msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':type (type msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':length (length msg))
    (cl:cons ':width (width msg))
))
