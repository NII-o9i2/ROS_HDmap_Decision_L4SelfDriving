; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude ObstaclePred.msg.html

(cl:defclass <ObstaclePred> (roslisp-msg-protocol:ros-message)
  ((prediction_x
    :reader prediction_x
    :initarg :prediction_x
    :type (cl:vector cl:float)
   :initform (cl:make-array 10 :element-type 'cl:float :initial-element 0.0))
   (prediction_y
    :reader prediction_y
    :initarg :prediction_y
    :type (cl:vector cl:float)
   :initform (cl:make-array 10 :element-type 'cl:float :initial-element 0.0))
   (predict_method
    :reader predict_method
    :initarg :predict_method
    :type cl:integer
    :initform 0)
   (is_valid
    :reader is_valid
    :initarg :is_valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ObstaclePred (<ObstaclePred>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstaclePred>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstaclePred)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<ObstaclePred> is deprecated: use planning_msgs-msg:ObstaclePred instead.")))

(cl:ensure-generic-function 'prediction_x-val :lambda-list '(m))
(cl:defmethod prediction_x-val ((m <ObstaclePred>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:prediction_x-val is deprecated.  Use planning_msgs-msg:prediction_x instead.")
  (prediction_x m))

(cl:ensure-generic-function 'prediction_y-val :lambda-list '(m))
(cl:defmethod prediction_y-val ((m <ObstaclePred>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:prediction_y-val is deprecated.  Use planning_msgs-msg:prediction_y instead.")
  (prediction_y m))

(cl:ensure-generic-function 'predict_method-val :lambda-list '(m))
(cl:defmethod predict_method-val ((m <ObstaclePred>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:predict_method-val is deprecated.  Use planning_msgs-msg:predict_method instead.")
  (predict_method m))

(cl:ensure-generic-function 'is_valid-val :lambda-list '(m))
(cl:defmethod is_valid-val ((m <ObstaclePred>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:is_valid-val is deprecated.  Use planning_msgs-msg:is_valid instead.")
  (is_valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstaclePred>) ostream)
  "Serializes a message object of type '<ObstaclePred>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'prediction_x))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'prediction_y))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'predict_method)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'predict_method)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'predict_method)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'predict_method)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstaclePred>) istream)
  "Deserializes a message object of type '<ObstaclePred>"
  (cl:setf (cl:slot-value msg 'prediction_x) (cl:make-array 10))
  (cl:let ((vals (cl:slot-value msg 'prediction_x)))
    (cl:dotimes (i 10)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'prediction_y) (cl:make-array 10))
  (cl:let ((vals (cl:slot-value msg 'prediction_y)))
    (cl:dotimes (i 10)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'predict_method)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'predict_method)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'predict_method)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'predict_method)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstaclePred>)))
  "Returns string type for a message object of type '<ObstaclePred>"
  "planning_msgs/ObstaclePred")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstaclePred)))
  "Returns string type for a message object of type 'ObstaclePred"
  "planning_msgs/ObstaclePred")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstaclePred>)))
  "Returns md5sum for a message object of type '<ObstaclePred>"
  "ff9d8c9ace78f2e23a2505b10de19eaa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstaclePred)))
  "Returns md5sum for a message object of type 'ObstaclePred"
  "ff9d8c9ace78f2e23a2505b10de19eaa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstaclePred>)))
  "Returns full string definition for message of type '<ObstaclePred>"
  (cl:format cl:nil "float32[10] prediction_x~%float32[10] prediction_y~%uint32 predict_method~%bool is_valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstaclePred)))
  "Returns full string definition for message of type 'ObstaclePred"
  (cl:format cl:nil "float32[10] prediction_x~%float32[10] prediction_y~%uint32 predict_method~%bool is_valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstaclePred>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'prediction_x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'prediction_y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstaclePred>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstaclePred
    (cl:cons ':prediction_x (prediction_x msg))
    (cl:cons ':prediction_y (prediction_y msg))
    (cl:cons ':predict_method (predict_method msg))
    (cl:cons ':is_valid (is_valid msg))
))
