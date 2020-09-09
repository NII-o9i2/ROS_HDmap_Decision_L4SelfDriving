; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude ADCTrajectory.msg.html

(cl:defclass <ADCTrajectory> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (path_point
    :reader path_point
    :initarg :path_point
    :type (cl:vector planning_msgs-msg:PathPoint)
   :initform (cl:make-array 0 :element-type 'planning_msgs-msg:PathPoint :initial-element (cl:make-instance 'planning_msgs-msg:PathPoint)))
   (dis_to_end
    :reader dis_to_end
    :initarg :dis_to_end
    :type cl:float
    :initform 0.0)
   (dis_to_cip
    :reader dis_to_cip
    :initarg :dis_to_cip
    :type cl:float
    :initform 0.0)
   (estop
    :reader estop
    :initarg :estop
    :type cl:boolean
    :initform cl:nil)
   (is_replan
    :reader is_replan
    :initarg :is_replan
    :type cl:boolean
    :initform cl:nil)
   (gear_position
    :reader gear_position
    :initarg :gear_position
    :type cl:fixnum
    :initform 0)
   (turn_signal
    :reader turn_signal
    :initarg :turn_signal
    :type cl:fixnum
    :initform 0)
   (latency_stats
    :reader latency_stats
    :initarg :latency_stats
    :type planning_msgs-msg:LatencyStats
    :initform (cl:make-instance 'planning_msgs-msg:LatencyStats))
   (predict_debug
    :reader predict_debug
    :initarg :predict_debug
    :type planning_msgs-msg:PredictionDebug
    :initform (cl:make-instance 'planning_msgs-msg:PredictionDebug)))
)

(cl:defclass ADCTrajectory (<ADCTrajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADCTrajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADCTrajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<ADCTrajectory> is deprecated: use planning_msgs-msg:ADCTrajectory instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ADCTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:header-val is deprecated.  Use planning_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'path_point-val :lambda-list '(m))
(cl:defmethod path_point-val ((m <ADCTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:path_point-val is deprecated.  Use planning_msgs-msg:path_point instead.")
  (path_point m))

(cl:ensure-generic-function 'dis_to_end-val :lambda-list '(m))
(cl:defmethod dis_to_end-val ((m <ADCTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:dis_to_end-val is deprecated.  Use planning_msgs-msg:dis_to_end instead.")
  (dis_to_end m))

(cl:ensure-generic-function 'dis_to_cip-val :lambda-list '(m))
(cl:defmethod dis_to_cip-val ((m <ADCTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:dis_to_cip-val is deprecated.  Use planning_msgs-msg:dis_to_cip instead.")
  (dis_to_cip m))

(cl:ensure-generic-function 'estop-val :lambda-list '(m))
(cl:defmethod estop-val ((m <ADCTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:estop-val is deprecated.  Use planning_msgs-msg:estop instead.")
  (estop m))

(cl:ensure-generic-function 'is_replan-val :lambda-list '(m))
(cl:defmethod is_replan-val ((m <ADCTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:is_replan-val is deprecated.  Use planning_msgs-msg:is_replan instead.")
  (is_replan m))

(cl:ensure-generic-function 'gear_position-val :lambda-list '(m))
(cl:defmethod gear_position-val ((m <ADCTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:gear_position-val is deprecated.  Use planning_msgs-msg:gear_position instead.")
  (gear_position m))

(cl:ensure-generic-function 'turn_signal-val :lambda-list '(m))
(cl:defmethod turn_signal-val ((m <ADCTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:turn_signal-val is deprecated.  Use planning_msgs-msg:turn_signal instead.")
  (turn_signal m))

(cl:ensure-generic-function 'latency_stats-val :lambda-list '(m))
(cl:defmethod latency_stats-val ((m <ADCTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:latency_stats-val is deprecated.  Use planning_msgs-msg:latency_stats instead.")
  (latency_stats m))

(cl:ensure-generic-function 'predict_debug-val :lambda-list '(m))
(cl:defmethod predict_debug-val ((m <ADCTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:predict_debug-val is deprecated.  Use planning_msgs-msg:predict_debug instead.")
  (predict_debug m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ADCTrajectory>)))
    "Constants for message type '<ADCTrajectory>"
  '((:GEAR_NEUTRAL . 0)
    (:GEAR_DRIVE . 1)
    (:GEAR_REVERSE . 2)
    (:GEAR_PARKING . 3)
    (:GEAR_INVALID . 4)
    (:TURN_NONE . 0)
    (:TURN_LEFT . 1)
    (:TURN_RIGHT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ADCTrajectory)))
    "Constants for message type 'ADCTrajectory"
  '((:GEAR_NEUTRAL . 0)
    (:GEAR_DRIVE . 1)
    (:GEAR_REVERSE . 2)
    (:GEAR_PARKING . 3)
    (:GEAR_INVALID . 4)
    (:TURN_NONE . 0)
    (:TURN_LEFT . 1)
    (:TURN_RIGHT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADCTrajectory>) ostream)
  "Serializes a message object of type '<ADCTrajectory>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path_point))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path_point))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dis_to_end))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dis_to_cip))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'estop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_replan) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear_position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'turn_signal)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'latency_stats) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'predict_debug) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADCTrajectory>) istream)
  "Deserializes a message object of type '<ADCTrajectory>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path_point) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path_point)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planning_msgs-msg:PathPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dis_to_end) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dis_to_cip) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'estop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_replan) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear_position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'turn_signal)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'latency_stats) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'predict_debug) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADCTrajectory>)))
  "Returns string type for a message object of type '<ADCTrajectory>"
  "planning_msgs/ADCTrajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADCTrajectory)))
  "Returns string type for a message object of type 'ADCTrajectory"
  "planning_msgs/ADCTrajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADCTrajectory>)))
  "Returns md5sum for a message object of type '<ADCTrajectory>"
  "a6c0f4e599aa65a91923e94a4414cf84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADCTrajectory)))
  "Returns md5sum for a message object of type 'ADCTrajectory"
  "a6c0f4e599aa65a91923e94a4414cf84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADCTrajectory>)))
  "Returns full string definition for message of type '<ADCTrajectory>"
  (cl:format cl:nil "Header header~%PathPoint[] path_point~%float32 dis_to_end~%float32 dis_to_cip~%bool estop~%bool is_replan~%uint8 gear_position~%uint8 turn_signal~%LatencyStats latency_stats~%PredictionDebug predict_debug~%~%# Gear Position~%uint8 GEAR_NEUTRAL=0~%uint8 GEAR_DRIVE=1~%uint8 GEAR_REVERSE=2~%uint8 GEAR_PARKING=3~%uint8 GEAR_INVALID=4~%~%# turn signal state~%uint8 TURN_NONE=0~%uint8 TURN_LEFT=1~%uint8 TURN_RIGHT=2~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: planning_msgs/PathPoint~%float64 time~%float64 x~%float64 y~%float64 z~%float64 theta~%float64 curvature~%float64 curv_rate~%float32 velocity ~%float32 acceleration ~%float32 s~%float32 l~%~%================================================================================~%MSG: planning_msgs/LatencyStats~%float64 total_time_ms~%float64 init_frame_time_ms~%~%================================================================================~%MSG: planning_msgs/PredictionDebug~%Propt[32] propt~%ObstaclePred[64] obstacle_pred~%GlobalObstacle[32] obstacle_glbl~%~%================================================================================~%MSG: planning_msgs/Propt~%float32 frenet_l~%float32 frenet_s~%float32 angle_diff~%~%================================================================================~%MSG: planning_msgs/ObstaclePred~%float32[10] prediction_x~%float32[10] prediction_y~%uint32 predict_method~%bool is_valid~%~%================================================================================~%MSG: planning_msgs/GlobalObstacle~%float32 enu_x~%float32 enu_y~%float32 enu_theta~%float32 enu_vx~%float32 enu_vy~%float32 enu_ax~%float32 enu_ay~%float32 confidence~%int8 type~%float32 velocity~%float32 length~%float32 width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADCTrajectory)))
  "Returns full string definition for message of type 'ADCTrajectory"
  (cl:format cl:nil "Header header~%PathPoint[] path_point~%float32 dis_to_end~%float32 dis_to_cip~%bool estop~%bool is_replan~%uint8 gear_position~%uint8 turn_signal~%LatencyStats latency_stats~%PredictionDebug predict_debug~%~%# Gear Position~%uint8 GEAR_NEUTRAL=0~%uint8 GEAR_DRIVE=1~%uint8 GEAR_REVERSE=2~%uint8 GEAR_PARKING=3~%uint8 GEAR_INVALID=4~%~%# turn signal state~%uint8 TURN_NONE=0~%uint8 TURN_LEFT=1~%uint8 TURN_RIGHT=2~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: planning_msgs/PathPoint~%float64 time~%float64 x~%float64 y~%float64 z~%float64 theta~%float64 curvature~%float64 curv_rate~%float32 velocity ~%float32 acceleration ~%float32 s~%float32 l~%~%================================================================================~%MSG: planning_msgs/LatencyStats~%float64 total_time_ms~%float64 init_frame_time_ms~%~%================================================================================~%MSG: planning_msgs/PredictionDebug~%Propt[32] propt~%ObstaclePred[64] obstacle_pred~%GlobalObstacle[32] obstacle_glbl~%~%================================================================================~%MSG: planning_msgs/Propt~%float32 frenet_l~%float32 frenet_s~%float32 angle_diff~%~%================================================================================~%MSG: planning_msgs/ObstaclePred~%float32[10] prediction_x~%float32[10] prediction_y~%uint32 predict_method~%bool is_valid~%~%================================================================================~%MSG: planning_msgs/GlobalObstacle~%float32 enu_x~%float32 enu_y~%float32 enu_theta~%float32 enu_vx~%float32 enu_vy~%float32 enu_ax~%float32 enu_ay~%float32 confidence~%int8 type~%float32 velocity~%float32 length~%float32 width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADCTrajectory>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path_point) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4
     1
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'latency_stats))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'predict_debug))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADCTrajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'ADCTrajectory
    (cl:cons ':header (header msg))
    (cl:cons ':path_point (path_point msg))
    (cl:cons ':dis_to_end (dis_to_end msg))
    (cl:cons ':dis_to_cip (dis_to_cip msg))
    (cl:cons ':estop (estop msg))
    (cl:cons ':is_replan (is_replan msg))
    (cl:cons ':gear_position (gear_position msg))
    (cl:cons ':turn_signal (turn_signal msg))
    (cl:cons ':latency_stats (latency_stats msg))
    (cl:cons ':predict_debug (predict_debug msg))
))
