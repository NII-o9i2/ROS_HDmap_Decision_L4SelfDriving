; Auto-generated. Do not edit!


(cl:in-package ytthdmap_msgs-msg)


;//! \htmlinclude S_STOPLINE.msg.html

(cl:defclass <S_STOPLINE> (roslisp-msg-protocol:ros-message)
  ((offset
    :reader offset
    :initarg :offset
    :type cl:fixnum
    :initform 0)
   (latOffset
    :reader latOffset
    :initarg :latOffset
    :type cl:fixnum
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (validnum
    :reader validnum
    :initarg :validnum
    :type cl:fixnum
    :initform 0)
   (point
    :reader point
    :initarg :point
    :type (cl:vector ytthdmap_msgs-msg:S_POINT)
   :initform (cl:make-array 100 :element-type 'ytthdmap_msgs-msg:S_POINT :initial-element (cl:make-instance 'ytthdmap_msgs-msg:S_POINT))))
)

(cl:defclass S_STOPLINE (<S_STOPLINE>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <S_STOPLINE>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'S_STOPLINE)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ytthdmap_msgs-msg:<S_STOPLINE> is deprecated: use ytthdmap_msgs-msg:S_STOPLINE instead.")))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <S_STOPLINE>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ytthdmap_msgs-msg:offset-val is deprecated.  Use ytthdmap_msgs-msg:offset instead.")
  (offset m))

(cl:ensure-generic-function 'latOffset-val :lambda-list '(m))
(cl:defmethod latOffset-val ((m <S_STOPLINE>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ytthdmap_msgs-msg:latOffset-val is deprecated.  Use ytthdmap_msgs-msg:latOffset instead.")
  (latOffset m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <S_STOPLINE>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ytthdmap_msgs-msg:type-val is deprecated.  Use ytthdmap_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'validnum-val :lambda-list '(m))
(cl:defmethod validnum-val ((m <S_STOPLINE>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ytthdmap_msgs-msg:validnum-val is deprecated.  Use ytthdmap_msgs-msg:validnum instead.")
  (validnum m))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <S_STOPLINE>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ytthdmap_msgs-msg:point-val is deprecated.  Use ytthdmap_msgs-msg:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <S_STOPLINE>) ostream)
  "Serializes a message object of type '<S_STOPLINE>"
  (cl:let* ((signed (cl:slot-value msg 'offset)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'latOffset)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'validnum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'point))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <S_STOPLINE>) istream)
  "Deserializes a message object of type '<S_STOPLINE>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'offset) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'latOffset) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'validnum) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:setf (cl:slot-value msg 'point) (cl:make-array 100))
  (cl:let ((vals (cl:slot-value msg 'point)))
    (cl:dotimes (i 100)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ytthdmap_msgs-msg:S_POINT))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<S_STOPLINE>)))
  "Returns string type for a message object of type '<S_STOPLINE>"
  "ytthdmap_msgs/S_STOPLINE")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'S_STOPLINE)))
  "Returns string type for a message object of type 'S_STOPLINE"
  "ytthdmap_msgs/S_STOPLINE")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<S_STOPLINE>)))
  "Returns md5sum for a message object of type '<S_STOPLINE>"
  "05414b44a3589a776a4ff3be4a793437")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'S_STOPLINE)))
  "Returns md5sum for a message object of type 'S_STOPLINE"
  "05414b44a3589a776a4ff3be4a793437")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<S_STOPLINE>)))
  "Returns full string definition for message of type '<S_STOPLINE>"
  (cl:format cl:nil "int16 offset~%int16 latOffset~%int16 type~%int16 validnum~%S_POINT[100] point~%~%================================================================================~%MSG: ytthdmap_msgs/S_POINT~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'S_STOPLINE)))
  "Returns full string definition for message of type 'S_STOPLINE"
  (cl:format cl:nil "int16 offset~%int16 latOffset~%int16 type~%int16 validnum~%S_POINT[100] point~%~%================================================================================~%MSG: ytthdmap_msgs/S_POINT~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <S_STOPLINE>))
  (cl:+ 0
     2
     2
     2
     2
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'point) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <S_STOPLINE>))
  "Converts a ROS message object to a list"
  (cl:list 'S_STOPLINE
    (cl:cons ':offset (offset msg))
    (cl:cons ':latOffset (latOffset msg))
    (cl:cons ':type (type msg))
    (cl:cons ':validnum (validnum msg))
    (cl:cons ':point (point msg))
))
