; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude DecisionDebug.msg.html

(cl:defclass <DecisionDebug> (roslisp-msg-protocol:ros-message)
  ((obstacle
    :reader obstacle
    :initarg :obstacle
    :type (cl:vector planning_msgs-msg:ObstacleIn)
   :initform (cl:make-array 50 :element-type 'planning_msgs-msg:ObstacleIn :initial-element (cl:make-instance 'planning_msgs-msg:ObstacleIn)))
   (lanechange_id
    :reader lanechange_id
    :initarg :lanechange_id
    :type cl:fixnum
    :initform 0)
   (lane_id
    :reader lane_id
    :initarg :lane_id
    :type cl:fixnum
    :initform 0)
   (ego_cost
    :reader ego_cost
    :initarg :ego_cost
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (onlane_obs_num
    :reader onlane_obs_num
    :initarg :onlane_obs_num
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 3 :element-type 'cl:fixnum :initial-element 0))
   (lanechange_process
    :reader lanechange_process
    :initarg :lanechange_process
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DecisionDebug (<DecisionDebug>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DecisionDebug>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DecisionDebug)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<DecisionDebug> is deprecated: use planning_msgs-msg:DecisionDebug instead.")))

(cl:ensure-generic-function 'obstacle-val :lambda-list '(m))
(cl:defmethod obstacle-val ((m <DecisionDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:obstacle-val is deprecated.  Use planning_msgs-msg:obstacle instead.")
  (obstacle m))

(cl:ensure-generic-function 'lanechange_id-val :lambda-list '(m))
(cl:defmethod lanechange_id-val ((m <DecisionDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lanechange_id-val is deprecated.  Use planning_msgs-msg:lanechange_id instead.")
  (lanechange_id m))

(cl:ensure-generic-function 'lane_id-val :lambda-list '(m))
(cl:defmethod lane_id-val ((m <DecisionDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lane_id-val is deprecated.  Use planning_msgs-msg:lane_id instead.")
  (lane_id m))

(cl:ensure-generic-function 'ego_cost-val :lambda-list '(m))
(cl:defmethod ego_cost-val ((m <DecisionDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:ego_cost-val is deprecated.  Use planning_msgs-msg:ego_cost instead.")
  (ego_cost m))

(cl:ensure-generic-function 'onlane_obs_num-val :lambda-list '(m))
(cl:defmethod onlane_obs_num-val ((m <DecisionDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:onlane_obs_num-val is deprecated.  Use planning_msgs-msg:onlane_obs_num instead.")
  (onlane_obs_num m))

(cl:ensure-generic-function 'lanechange_process-val :lambda-list '(m))
(cl:defmethod lanechange_process-val ((m <DecisionDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lanechange_process-val is deprecated.  Use planning_msgs-msg:lanechange_process instead.")
  (lanechange_process m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DecisionDebug>) ostream)
  "Serializes a message object of type '<DecisionDebug>"
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacle))
  (cl:let* ((signed (cl:slot-value msg 'lanechange_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lane_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'ego_cost))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'onlane_obs_num))
  (cl:let* ((signed (cl:slot-value msg 'lanechange_process)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DecisionDebug>) istream)
  "Deserializes a message object of type '<DecisionDebug>"
  (cl:setf (cl:slot-value msg 'obstacle) (cl:make-array 50))
  (cl:let ((vals (cl:slot-value msg 'obstacle)))
    (cl:dotimes (i 50)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planning_msgs-msg:ObstacleIn))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lanechange_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lane_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:setf (cl:slot-value msg 'ego_cost) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'ego_cost)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'onlane_obs_num) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'onlane_obs_num)))
    (cl:dotimes (i 3)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lanechange_process) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DecisionDebug>)))
  "Returns string type for a message object of type '<DecisionDebug>"
  "planning_msgs/DecisionDebug")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DecisionDebug)))
  "Returns string type for a message object of type 'DecisionDebug"
  "planning_msgs/DecisionDebug")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DecisionDebug>)))
  "Returns md5sum for a message object of type '<DecisionDebug>"
  "da2ec6dc8e24bc6e33c0fa04fe1dfa3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DecisionDebug)))
  "Returns md5sum for a message object of type 'DecisionDebug"
  "da2ec6dc8e24bc6e33c0fa04fe1dfa3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DecisionDebug>)))
  "Returns full string definition for message of type '<DecisionDebug>"
  (cl:format cl:nil "  ObstacleIn[50] obstacle~%  int8 lanechange_id~%  int8 lane_id~%  float32[3] ego_cost~%  int8[3] onlane_obs_num~%  int8 lanechange_process~%~%================================================================================~%MSG: planning_msgs/ObstacleIn~%int8 id~%float32 s~%float32 l~%float32 vs~%float32 as~%float32 vl~%float32 al~%int8 lane_no~%float32 time_cost~%float32 des_cost~%float32 decision_cost~%int8 decision_tag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DecisionDebug)))
  "Returns full string definition for message of type 'DecisionDebug"
  (cl:format cl:nil "  ObstacleIn[50] obstacle~%  int8 lanechange_id~%  int8 lane_id~%  float32[3] ego_cost~%  int8[3] onlane_obs_num~%  int8 lanechange_process~%~%================================================================================~%MSG: planning_msgs/ObstacleIn~%int8 id~%float32 s~%float32 l~%float32 vs~%float32 as~%float32 vl~%float32 al~%int8 lane_no~%float32 time_cost~%float32 des_cost~%float32 decision_cost~%int8 decision_tag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DecisionDebug>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'ego_cost) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'onlane_obs_num) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DecisionDebug>))
  "Converts a ROS message object to a list"
  (cl:list 'DecisionDebug
    (cl:cons ':obstacle (obstacle msg))
    (cl:cons ':lanechange_id (lanechange_id msg))
    (cl:cons ':lane_id (lane_id msg))
    (cl:cons ':ego_cost (ego_cost msg))
    (cl:cons ':onlane_obs_num (onlane_obs_num msg))
    (cl:cons ':lanechange_process (lanechange_process msg))
))
