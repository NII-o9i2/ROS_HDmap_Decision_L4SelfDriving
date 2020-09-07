; Auto-generated. Do not edit!


(cl:in-package ytthdmap_msgs-msg)


;//! \htmlinclude S_LANEINFO.msg.html

(cl:defclass <S_LANEINFO> (roslisp-msg-protocol:ros-message)
  ((centerline
    :reader centerline
    :initarg :centerline
    :type ytthdmap_msgs-msg:S_LINE
    :initform (cl:make-instance 'ytthdmap_msgs-msg:S_LINE))
   (leftboundry
    :reader leftboundry
    :initarg :leftboundry
    :type ytthdmap_msgs-msg:S_LINE
    :initform (cl:make-instance 'ytthdmap_msgs-msg:S_LINE))
   (rightboundry
    :reader rightboundry
    :initarg :rightboundry
    :type ytthdmap_msgs-msg:S_LINE
    :initform (cl:make-instance 'ytthdmap_msgs-msg:S_LINE))
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (IsPartofRouting
    :reader IsPartofRouting
    :initarg :IsPartofRouting
    :type cl:boolean
    :initform cl:nil)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:fixnum
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0))
)

(cl:defclass S_LANEINFO (<S_LANEINFO>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <S_LANEINFO>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'S_LANEINFO)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ytthdmap_msgs-msg:<S_LANEINFO> is deprecated: use ytthdmap_msgs-msg:S_LANEINFO instead.")))

(cl:ensure-generic-function 'centerline-val :lambda-list '(m))
(cl:defmethod centerline-val ((m <S_LANEINFO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ytthdmap_msgs-msg:centerline-val is deprecated.  Use ytthdmap_msgs-msg:centerline instead.")
  (centerline m))

(cl:ensure-generic-function 'leftboundry-val :lambda-list '(m))
(cl:defmethod leftboundry-val ((m <S_LANEINFO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ytthdmap_msgs-msg:leftboundry-val is deprecated.  Use ytthdmap_msgs-msg:leftboundry instead.")
  (leftboundry m))

(cl:ensure-generic-function 'rightboundry-val :lambda-list '(m))
(cl:defmethod rightboundry-val ((m <S_LANEINFO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ytthdmap_msgs-msg:rightboundry-val is deprecated.  Use ytthdmap_msgs-msg:rightboundry instead.")
  (rightboundry m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <S_LANEINFO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ytthdmap_msgs-msg:width-val is deprecated.  Use ytthdmap_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'IsPartofRouting-val :lambda-list '(m))
(cl:defmethod IsPartofRouting-val ((m <S_LANEINFO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ytthdmap_msgs-msg:IsPartofRouting-val is deprecated.  Use ytthdmap_msgs-msg:IsPartofRouting instead.")
  (IsPartofRouting m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <S_LANEINFO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ytthdmap_msgs-msg:type-val is deprecated.  Use ytthdmap_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <S_LANEINFO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ytthdmap_msgs-msg:direction-val is deprecated.  Use ytthdmap_msgs-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <S_LANEINFO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ytthdmap_msgs-msg:id-val is deprecated.  Use ytthdmap_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <S_LANEINFO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ytthdmap_msgs-msg:length-val is deprecated.  Use ytthdmap_msgs-msg:length instead.")
  (length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <S_LANEINFO>) ostream)
  "Serializes a message object of type '<S_LANEINFO>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'centerline) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'leftboundry) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rightboundry) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'IsPartofRouting) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'direction)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <S_LANEINFO>) istream)
  "Deserializes a message object of type '<S_LANEINFO>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'centerline) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'leftboundry) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rightboundry) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'IsPartofRouting) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<S_LANEINFO>)))
  "Returns string type for a message object of type '<S_LANEINFO>"
  "ytthdmap_msgs/S_LANEINFO")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'S_LANEINFO)))
  "Returns string type for a message object of type 'S_LANEINFO"
  "ytthdmap_msgs/S_LANEINFO")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<S_LANEINFO>)))
  "Returns md5sum for a message object of type '<S_LANEINFO>"
  "3bc5c9298690fd903b2c404d72e82a3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'S_LANEINFO)))
  "Returns md5sum for a message object of type 'S_LANEINFO"
  "3bc5c9298690fd903b2c404d72e82a3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<S_LANEINFO>)))
  "Returns full string definition for message of type '<S_LANEINFO>"
  (cl:format cl:nil "S_LINE centerline~%S_LINE leftboundry~%S_LINE rightboundry~%float32 width~%bool IsPartofRouting~%int16 type~%int16 direction~%int16 id~%float32 length~%~%================================================================================~%MSG: ytthdmap_msgs/S_LINE~%int16 type~%int16 linetype~%S_POINT[100] point~%int16 pointnum~%~%================================================================================~%MSG: ytthdmap_msgs/S_POINT~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'S_LANEINFO)))
  "Returns full string definition for message of type 'S_LANEINFO"
  (cl:format cl:nil "S_LINE centerline~%S_LINE leftboundry~%S_LINE rightboundry~%float32 width~%bool IsPartofRouting~%int16 type~%int16 direction~%int16 id~%float32 length~%~%================================================================================~%MSG: ytthdmap_msgs/S_LINE~%int16 type~%int16 linetype~%S_POINT[100] point~%int16 pointnum~%~%================================================================================~%MSG: ytthdmap_msgs/S_POINT~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <S_LANEINFO>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'centerline))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'leftboundry))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rightboundry))
     4
     1
     2
     2
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <S_LANEINFO>))
  "Converts a ROS message object to a list"
  (cl:list 'S_LANEINFO
    (cl:cons ':centerline (centerline msg))
    (cl:cons ':leftboundry (leftboundry msg))
    (cl:cons ':rightboundry (rightboundry msg))
    (cl:cons ':width (width msg))
    (cl:cons ':IsPartofRouting (IsPartofRouting msg))
    (cl:cons ':type (type msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':id (id msg))
    (cl:cons ':length (length msg))
))
