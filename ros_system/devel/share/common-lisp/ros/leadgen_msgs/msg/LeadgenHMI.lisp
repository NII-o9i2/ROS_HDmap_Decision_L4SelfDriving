; Auto-generated. Do not edit!


(cl:in-package leadgen_msgs-msg)


;//! \htmlinclude LeadgenHMI.msg.html

(cl:defclass <LeadgenHMI> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (lane_decision
    :reader lane_decision
    :initarg :lane_decision
    :type cl:fixnum
    :initform 0)
   (traffic_light_result
    :reader traffic_light_result
    :initarg :traffic_light_result
    :type cl:fixnum
    :initform 0)
   (lane_speed_limit
    :reader lane_speed_limit
    :initarg :lane_speed_limit
    :type cl:float
    :initform 0.0)
   (lane_borders
    :reader lane_borders
    :initarg :lane_borders
    :type (cl:vector leadgen_msgs-msg:LeadgenPointArray)
   :initform (cl:make-array 0 :element-type 'leadgen_msgs-msg:LeadgenPointArray :initial-element (cl:make-instance 'leadgen_msgs-msg:LeadgenPointArray)))
   (obs_decision_result
    :reader obs_decision_result
    :initarg :obs_decision_result
    :type (cl:vector leadgen_msgs-msg:LeadgenObstacleOutput)
   :initform (cl:make-array 0 :element-type 'leadgen_msgs-msg:LeadgenObstacleOutput :initial-element (cl:make-instance 'leadgen_msgs-msg:LeadgenObstacleOutput))))
)

(cl:defclass LeadgenHMI (<LeadgenHMI>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LeadgenHMI>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LeadgenHMI)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leadgen_msgs-msg:<LeadgenHMI> is deprecated: use leadgen_msgs-msg:LeadgenHMI instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LeadgenHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:header-val is deprecated.  Use leadgen_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'lane_decision-val :lambda-list '(m))
(cl:defmethod lane_decision-val ((m <LeadgenHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:lane_decision-val is deprecated.  Use leadgen_msgs-msg:lane_decision instead.")
  (lane_decision m))

(cl:ensure-generic-function 'traffic_light_result-val :lambda-list '(m))
(cl:defmethod traffic_light_result-val ((m <LeadgenHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:traffic_light_result-val is deprecated.  Use leadgen_msgs-msg:traffic_light_result instead.")
  (traffic_light_result m))

(cl:ensure-generic-function 'lane_speed_limit-val :lambda-list '(m))
(cl:defmethod lane_speed_limit-val ((m <LeadgenHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:lane_speed_limit-val is deprecated.  Use leadgen_msgs-msg:lane_speed_limit instead.")
  (lane_speed_limit m))

(cl:ensure-generic-function 'lane_borders-val :lambda-list '(m))
(cl:defmethod lane_borders-val ((m <LeadgenHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:lane_borders-val is deprecated.  Use leadgen_msgs-msg:lane_borders instead.")
  (lane_borders m))

(cl:ensure-generic-function 'obs_decision_result-val :lambda-list '(m))
(cl:defmethod obs_decision_result-val ((m <LeadgenHMI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:obs_decision_result-val is deprecated.  Use leadgen_msgs-msg:obs_decision_result instead.")
  (obs_decision_result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LeadgenHMI>)))
    "Constants for message type '<LeadgenHMI>"
  '((:KEEP_IN_LANE . 0)
    (:MERGE_LEFT_LANE . 1)
    (:MERGE_RIGHT_LANE . 2)
    (:TRAFFIC_LIGHT_NA . 0)
    (:TRAFFIC_LIGHT_RED . 1)
    (:TRAFFIC_LIGHT_GREEN . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LeadgenHMI)))
    "Constants for message type 'LeadgenHMI"
  '((:KEEP_IN_LANE . 0)
    (:MERGE_LEFT_LANE . 1)
    (:MERGE_RIGHT_LANE . 2)
    (:TRAFFIC_LIGHT_NA . 0)
    (:TRAFFIC_LIGHT_RED . 1)
    (:TRAFFIC_LIGHT_GREEN . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LeadgenHMI>) ostream)
  "Serializes a message object of type '<LeadgenHMI>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_decision)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'traffic_light_result)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lane_speed_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lane_borders))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lane_borders))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obs_decision_result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obs_decision_result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LeadgenHMI>) istream)
  "Deserializes a message object of type '<LeadgenHMI>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_decision)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'traffic_light_result)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lane_speed_limit) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lane_borders) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lane_borders)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'leadgen_msgs-msg:LeadgenPointArray))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obs_decision_result) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obs_decision_result)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'leadgen_msgs-msg:LeadgenObstacleOutput))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LeadgenHMI>)))
  "Returns string type for a message object of type '<LeadgenHMI>"
  "leadgen_msgs/LeadgenHMI")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LeadgenHMI)))
  "Returns string type for a message object of type 'LeadgenHMI"
  "leadgen_msgs/LeadgenHMI")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LeadgenHMI>)))
  "Returns md5sum for a message object of type '<LeadgenHMI>"
  "0d84c81bb319da0c42ae894c7b0cac72")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LeadgenHMI)))
  "Returns md5sum for a message object of type 'LeadgenHMI"
  "0d84c81bb319da0c42ae894c7b0cac72")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LeadgenHMI>)))
  "Returns full string definition for message of type '<LeadgenHMI>"
  (cl:format cl:nil "# This message is to describe decistion and planning message for HMI~%~%# Header~%std_msgs/Header header~%~%# lane changing decisions~%uint8 lane_decision~%~%# enum for lane decisions~%uint8 KEEP_IN_LANE = 0~%uint8 MERGE_LEFT_LANE = 1~%uint8 MERGE_RIGHT_LANE = 2~%~%# traffic light result~%uint8 traffic_light_result~%~%# enum for traffic light result~%uint8 TRAFFIC_LIGHT_NA = 0~%uint8 TRAFFIC_LIGHT_RED = 1~%uint8 TRAFFIC_LIGHT_GREEN = 2~%~%# current lane limit speed~%float32 lane_speed_limit # km/h~%~%# lane borders~%LeadgenPointArray[] lane_borders~%~%# obstacle output~%LeadgenObstacleOutput[] obs_decision_result~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: leadgen_msgs/LeadgenPointArray~%# This message is to describe an array of geometry_msgs/Point~%~%geometry_msgs/Point[] points~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: leadgen_msgs/LeadgenObstacleOutput~%# This message is to describe the information of an obstacle~%~%# Header~%std_msgs/Header header~%~%# obstacle ID number~%int32 id~%~%# obstacle detection sources(optional)~%uint16 source_sensor~%~%# obstacle source sensor definition, using bit-wise operations~%# A single obstacle can be detected by multiple sensors, and use OR operation as the result~%uint16 SENSOR_LIDAR = 1~%uint16 SENSOR_VISION = 2~%uint16 SENSOR_RADAR = 4~%~%# obstacle type(optional)~%uint8 type~%~%# obstacle type definitions~%# subject to change~%~%uint8 OBSTACLE_TYPE_UNKNOWN = 0~%uint8 OBSTACLE_TYPE_SMALL = 1~%uint8 OBSTACLE_TYPE_BIG = 2~%uint8 OBSTACLE_TYPE_CAR = 3~%uint8 OBSTACLE_TYPE_BUS = 4~%uint8 OBSTACLE_TYPE_TRUCK = 5~%uint8 OBSTACLE_TYPE_CYCLER = 6~%uint8 OBSTACLE_TYPE_PEDESTRIAN = 7~%uint8 OBSTACLE_TYPE_PLANT = 8~%uint8 OBSTACLE_TYPE_FENCE = 9~%~%# obstacle status(optional)~%uint8 status~%~%# obstacle status definitions~%# according to Mobileye specs~%uint8 OBSTACLE_STATUS_UNDEFINED = 0~%uint8 OBSTACLE_STATUS_STANDING = 1~%uint8 OBSTACLE_STATUS_STOPPED = 2~%uint8 OBSTACLE_STATUS_MOVING = 3~%uint8 OBSTACLE_STATUS_ONCOMING = 4~%uint8 OBSTACLE_STATUS_PARKED = 5~%uint8 OBSTACLE_STATUS_UNUSED = 6~%~%# obstacle cutting(optional)~%uint8 cutting~%~%# obstacle cutting definitions~%# according to Mobileye specs~%uint8 OBSTACLE_CUTTING_UNDEFINED = 0~%uint8 OBSTACLE_IN_HOST_LANE = 1~%uint8 OBSTACLE_OUT_HOST_LANE = 2~%uint8 OBSTACLE_CUTTING_IN = 3~%uint8 OBSTACLE_CUTTING_OUT = 4~%~%# obstacle size~%float32 length  # along obstacle's +x direction, in [m] meter~%float32 width   # along obstacle's +y direction, in [m]~%float32 height  # along obstacle's +z direction, in [m]~%~%float32 velocity_heading # the velocity heading in the world frame~%~%# obstacle pose in body frame~%bool rlt_valid  # relative information valid~%geometry_msgs/Point rlt_position    # relative position to body frame~%float32 rlt_theta   # relative theta angle, to body frame along z axis~%~%# obstacle velocity in body frame~%geometry_msgs/Vector3 rlt_velocity  # relative velocity to body frame ~%~%# obstacle pose in world frame~%bool abs_valid  # absolute information valid~%geometry_msgs/Point abs_position    # absolute position in world frame~%float32 abs_theta   # absolute yaw angle in world frame~%~%# obstacle velocity in world frame~%geometry_msgs/Vector3 abs_velocity  # absolute velocity in world frame~%~%# decision tags~%uint8 longitude_tag~%uint8 lateral_tag~%~%# decision tag definitions~%uint8 IGNORE = 0 ~%uint8 STAY_BEHIND = 1~%~%uint8 NUDGE_LEFT = 2   ~%uint8 NUDGE_RIGHT = 3 ~%uint8 NOT_AVAILABLE = 4 ~%~%LeadgenWaypoint[] predicted_traj~%float32 predicted_period~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: leadgen_msgs/LeadgenWaypoint~%# This message is to describe a WAYPOINT in the target trajectory~%~%# header~%# std_msgs/Header header~%~%# 3D position~%geometry_msgs/Point point~%~%# trace info~%float64 theta # the heading of the trace at this point~%float64 kappa # the curvature of the trace at this point~%~%# SL info~%float64 station~%float64 lateral~%~%# speed info~%float32 speed # in [m/s]~%float32 accel # in [m/s^2],(optional)~%~%time time_arrival # the expected arrival time of this point~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LeadgenHMI)))
  "Returns full string definition for message of type 'LeadgenHMI"
  (cl:format cl:nil "# This message is to describe decistion and planning message for HMI~%~%# Header~%std_msgs/Header header~%~%# lane changing decisions~%uint8 lane_decision~%~%# enum for lane decisions~%uint8 KEEP_IN_LANE = 0~%uint8 MERGE_LEFT_LANE = 1~%uint8 MERGE_RIGHT_LANE = 2~%~%# traffic light result~%uint8 traffic_light_result~%~%# enum for traffic light result~%uint8 TRAFFIC_LIGHT_NA = 0~%uint8 TRAFFIC_LIGHT_RED = 1~%uint8 TRAFFIC_LIGHT_GREEN = 2~%~%# current lane limit speed~%float32 lane_speed_limit # km/h~%~%# lane borders~%LeadgenPointArray[] lane_borders~%~%# obstacle output~%LeadgenObstacleOutput[] obs_decision_result~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: leadgen_msgs/LeadgenPointArray~%# This message is to describe an array of geometry_msgs/Point~%~%geometry_msgs/Point[] points~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: leadgen_msgs/LeadgenObstacleOutput~%# This message is to describe the information of an obstacle~%~%# Header~%std_msgs/Header header~%~%# obstacle ID number~%int32 id~%~%# obstacle detection sources(optional)~%uint16 source_sensor~%~%# obstacle source sensor definition, using bit-wise operations~%# A single obstacle can be detected by multiple sensors, and use OR operation as the result~%uint16 SENSOR_LIDAR = 1~%uint16 SENSOR_VISION = 2~%uint16 SENSOR_RADAR = 4~%~%# obstacle type(optional)~%uint8 type~%~%# obstacle type definitions~%# subject to change~%~%uint8 OBSTACLE_TYPE_UNKNOWN = 0~%uint8 OBSTACLE_TYPE_SMALL = 1~%uint8 OBSTACLE_TYPE_BIG = 2~%uint8 OBSTACLE_TYPE_CAR = 3~%uint8 OBSTACLE_TYPE_BUS = 4~%uint8 OBSTACLE_TYPE_TRUCK = 5~%uint8 OBSTACLE_TYPE_CYCLER = 6~%uint8 OBSTACLE_TYPE_PEDESTRIAN = 7~%uint8 OBSTACLE_TYPE_PLANT = 8~%uint8 OBSTACLE_TYPE_FENCE = 9~%~%# obstacle status(optional)~%uint8 status~%~%# obstacle status definitions~%# according to Mobileye specs~%uint8 OBSTACLE_STATUS_UNDEFINED = 0~%uint8 OBSTACLE_STATUS_STANDING = 1~%uint8 OBSTACLE_STATUS_STOPPED = 2~%uint8 OBSTACLE_STATUS_MOVING = 3~%uint8 OBSTACLE_STATUS_ONCOMING = 4~%uint8 OBSTACLE_STATUS_PARKED = 5~%uint8 OBSTACLE_STATUS_UNUSED = 6~%~%# obstacle cutting(optional)~%uint8 cutting~%~%# obstacle cutting definitions~%# according to Mobileye specs~%uint8 OBSTACLE_CUTTING_UNDEFINED = 0~%uint8 OBSTACLE_IN_HOST_LANE = 1~%uint8 OBSTACLE_OUT_HOST_LANE = 2~%uint8 OBSTACLE_CUTTING_IN = 3~%uint8 OBSTACLE_CUTTING_OUT = 4~%~%# obstacle size~%float32 length  # along obstacle's +x direction, in [m] meter~%float32 width   # along obstacle's +y direction, in [m]~%float32 height  # along obstacle's +z direction, in [m]~%~%float32 velocity_heading # the velocity heading in the world frame~%~%# obstacle pose in body frame~%bool rlt_valid  # relative information valid~%geometry_msgs/Point rlt_position    # relative position to body frame~%float32 rlt_theta   # relative theta angle, to body frame along z axis~%~%# obstacle velocity in body frame~%geometry_msgs/Vector3 rlt_velocity  # relative velocity to body frame ~%~%# obstacle pose in world frame~%bool abs_valid  # absolute information valid~%geometry_msgs/Point abs_position    # absolute position in world frame~%float32 abs_theta   # absolute yaw angle in world frame~%~%# obstacle velocity in world frame~%geometry_msgs/Vector3 abs_velocity  # absolute velocity in world frame~%~%# decision tags~%uint8 longitude_tag~%uint8 lateral_tag~%~%# decision tag definitions~%uint8 IGNORE = 0 ~%uint8 STAY_BEHIND = 1~%~%uint8 NUDGE_LEFT = 2   ~%uint8 NUDGE_RIGHT = 3 ~%uint8 NOT_AVAILABLE = 4 ~%~%LeadgenWaypoint[] predicted_traj~%float32 predicted_period~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: leadgen_msgs/LeadgenWaypoint~%# This message is to describe a WAYPOINT in the target trajectory~%~%# header~%# std_msgs/Header header~%~%# 3D position~%geometry_msgs/Point point~%~%# trace info~%float64 theta # the heading of the trace at this point~%float64 kappa # the curvature of the trace at this point~%~%# SL info~%float64 station~%float64 lateral~%~%# speed info~%float32 speed # in [m/s]~%float32 accel # in [m/s^2],(optional)~%~%time time_arrival # the expected arrival time of this point~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LeadgenHMI>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lane_borders) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obs_decision_result) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LeadgenHMI>))
  "Converts a ROS message object to a list"
  (cl:list 'LeadgenHMI
    (cl:cons ':header (header msg))
    (cl:cons ':lane_decision (lane_decision msg))
    (cl:cons ':traffic_light_result (traffic_light_result msg))
    (cl:cons ':lane_speed_limit (lane_speed_limit msg))
    (cl:cons ':lane_borders (lane_borders msg))
    (cl:cons ':obs_decision_result (obs_decision_result msg))
))
