; Auto-generated. Do not edit!


(cl:in-package ytthdmap_msgs-msg)


;//! \htmlinclude S_LINE.msg.html

(cl:defclass <S_LINE> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (linetype
    :reader linetype
    :initarg :linetype
    :type cl:fixnum
    :initform 0)
   (point
    :reader point
    :initarg :point
    :type (cl:vector ytthdmap_msgs-msg:S_POINT)
   :initform (cl:make-array 100 :element-type 'ytthdmap_msgs-msg:S_POINT :initial-element (cl:make-instance 'ytthdmap_msgs-msg:S_POINT)))
   (pointnum
    :reader pointnum
    :initarg :pointnum
    :type cl:fixnum
    :initform 0))
)

(cl:defclass S_LINE (<S_LINE>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <S_LINE>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'S_LINE)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ytthdmap_msgs-msg:<S_LINE> is deprecated: use ytthdmap_msgs-msg:S_LINE instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <S_LINE>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ytthdmap_msgs-msg:type-val is deprecated.  Use ytthdmap_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'linetype-val :lambda-list '(m))
(cl:defmethod linetype-val ((m <S_LINE>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ytthdmap_msgs-msg:linetype-val is deprecated.  Use ytthdmap_msgs-msg:linetype instead.")
  (linetype m))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <S_LINE>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ytthdmap_msgs-msg:point-val is deprecated.  Use ytthdmap_msgs-msg:point instead.")
  (point m))

(cl:ensure-generic-function 'pointnum-val :lambda-list '(m))
(cl:defmethod pointnum-val ((m <S_LINE>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ytthdmap_msgs-msg:pointnum-val is deprecated.  Use ytthdmap_msgs-msg:pointnum instead.")
  (pointnum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <S_LINE>) ostream)
  "Serializes a message object of type '<S_LINE>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'linetype)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'point))
  (cl:let* ((signed (cl:slot-value msg 'pointnum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <S_LINE>) istream)
  "Deserializes a message object of type '<S_LINE>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'linetype) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:setf (cl:slot-value msg 'point) (cl:make-array 100))
  (cl:let ((vals (cl:slot-value msg 'point)))
    (cl:dotimes (i 100)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ytthdmap_msgs-msg:S_POINT))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pointnum) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<S_LINE>)))
  "Returns string type for a message object of type '<S_LINE>"
  "ytthdmap_msgs/S_LINE")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'S_LINE)))
  "Returns string type for a message object of type 'S_LINE"
  "ytthdmap_msgs/S_LINE")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<S_LINE>)))
  "Returns md5sum for a message object of type '<S_LINE>"
  "49366bc67b2f179a0d236b700e094625")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'S_LINE)))
  "Returns md5sum for a message object of type 'S_LINE"
  "49366bc67b2f179a0d236b700e094625")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<S_LINE>)))
  "Returns full string definition for message of type '<S_LINE>"
  (cl:format cl:nil "int16 type~%int16 linetype~%S_POINT[100] point~%int16 pointnum~%~%================================================================================~%MSG: ytthdmap_msgs/S_POINT~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'S_LINE)))
  "Returns full string definition for message of type 'S_LINE"
  (cl:format cl:nil "int16 type~%int16 linetype~%S_POINT[100] point~%int16 pointnum~%~%================================================================================~%MSG: ytthdmap_msgs/S_POINT~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <S_LINE>))
  (cl:+ 0
     2
     2
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'point) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <S_LINE>))
  "Converts a ROS message object to a list"
  (cl:list 'S_LINE
    (cl:cons ':type (type msg))
    (cl:cons ':linetype (linetype msg))
    (cl:cons ':point (point msg))
    (cl:cons ':pointnum (pointnum msg))
))
