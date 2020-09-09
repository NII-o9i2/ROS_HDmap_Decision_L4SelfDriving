; Auto-generated. Do not edit!


(cl:in-package leadgen_msgs-msg)


;//! \htmlinclude LeadgenObsInputArray.msg.html

(cl:defclass <LeadgenObsInputArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (obstacle_list
    :reader obstacle_list
    :initarg :obstacle_list
    :type (cl:vector leadgen_msgs-msg:LeadgenObstacleInput)
   :initform (cl:make-array 0 :element-type 'leadgen_msgs-msg:LeadgenObstacleInput :initial-element (cl:make-instance 'leadgen_msgs-msg:LeadgenObstacleInput))))
)

(cl:defclass LeadgenObsInputArray (<LeadgenObsInputArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LeadgenObsInputArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LeadgenObsInputArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leadgen_msgs-msg:<LeadgenObsInputArray> is deprecated: use leadgen_msgs-msg:LeadgenObsInputArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LeadgenObsInputArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:header-val is deprecated.  Use leadgen_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'obstacle_list-val :lambda-list '(m))
(cl:defmethod obstacle_list-val ((m <LeadgenObsInputArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:obstacle_list-val is deprecated.  Use leadgen_msgs-msg:obstacle_list instead.")
  (obstacle_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LeadgenObsInputArray>) ostream)
  "Serializes a message object of type '<LeadgenObsInputArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacle_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacle_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LeadgenObsInputArray>) istream)
  "Deserializes a message object of type '<LeadgenObsInputArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacle_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacle_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'leadgen_msgs-msg:LeadgenObstacleInput))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LeadgenObsInputArray>)))
  "Returns string type for a message object of type '<LeadgenObsInputArray>"
  "leadgen_msgs/LeadgenObsInputArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LeadgenObsInputArray)))
  "Returns string type for a message object of type 'LeadgenObsInputArray"
  "leadgen_msgs/LeadgenObsInputArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LeadgenObsInputArray>)))
  "Returns md5sum for a message object of type '<LeadgenObsInputArray>"
  "a30eed43d9c6adce92d7eff55e32efee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LeadgenObsInputArray)))
  "Returns md5sum for a message object of type 'LeadgenObsInputArray"
  "a30eed43d9c6adce92d7eff55e32efee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LeadgenObsInputArray>)))
  "Returns full string definition for message of type '<LeadgenObsInputArray>"
  (cl:format cl:nil "# This message is to describe a list of obstacles~%~%# Header~%std_msgs/Header header~%~%# Obstacle list~%LeadgenObstacleInput[] obstacle_list~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: leadgen_msgs/LeadgenObstacleInput~%# This message is to describe the information of an obstacle~%~%# Header~%std_msgs/Header header~%~%# obstacle ID number~%int32 id~%~%# obstacle detection sources(optional)~%uint16 source_sensor~%~%# obstacle source sensor definition, using bit-wise operations~%# A single obstacle can be detected by multiple sensors, and use OR operation as the result~%uint16 SENSOR_LIDAR = 1~%uint16 SENSOR_VISION = 2~%uint16 SENSOR_RADAR = 4~%~%# obstacle type(optional)~%uint8 type~%~%# obstacle type definitions~%# subject to change~%~%uint8 OBSTACLE_TYPE_UNKNOWN = 0~%uint8 OBSTACLE_TYPE_SMALL = 1~%uint8 OBSTACLE_TYPE_BIG = 2~%uint8 OBSTACLE_TYPE_CAR = 3~%uint8 OBSTACLE_TYPE_BUS = 4~%uint8 OBSTACLE_TYPE_TRUCK = 5~%uint8 OBSTACLE_TYPE_CYCLER = 6~%uint8 OBSTACLE_TYPE_PEDESTRIAN = 7~%uint8 OBSTACLE_TYPE_PLANT = 8~%uint8 OBSTACLE_TYPE_FENCE = 9~%~%# obstacle status(optional)~%uint8 status~%~%# obstacle status definitions~%# according to Mobileye specs~%uint8 OBSTACLE_STATUS_UNDEFINED = 0~%uint8 OBSTACLE_STATUS_STANDING = 1~%uint8 OBSTACLE_STATUS_STOPPED = 2~%uint8 OBSTACLE_STATUS_MOVING = 3~%uint8 OBSTACLE_STATUS_ONCOMING = 4~%uint8 OBSTACLE_STATUS_PARKED = 5~%uint8 OBSTACLE_STATUS_UNUSED = 6~%~%# obstacle cutting(optional)~%uint8 cutting~%~%# obstacle cutting definitions~%# according to Mobileye specs~%uint8 OBSTACLE_CUTTING_UNDEFINED = 0~%uint8 OBSTACLE_IN_HOST_LANE = 1~%uint8 OBSTACLE_OUT_HOST_LANE = 2~%uint8 OBSTACLE_CUTTING_IN = 3~%uint8 OBSTACLE_CUTTING_OUT = 4~%~%# obstacle size~%float32 length  # along obstacle's +x direction, in [m] meter~%float32 width   # along obstacle's +y direction, in [m]~%float32 height  # along obstacle's +z direction, in [m]~%~%float32 velocity_heading # the velocity heading in the world frame~%~%# obstacle pose in body frame~%bool rlt_valid  # relative information valid~%geometry_msgs/Point rlt_position    # relative position to body frame~%float32 rlt_theta   # relative theta angle, to body frame along z axis~%~%# obstacle velocity in body frame~%geometry_msgs/Vector3 rlt_velocity  # relative velocity to body frame ~%~%# obstacle pose in world frame~%bool abs_valid  # absolute information valid~%geometry_msgs/Point abs_position    # absolute position in world frame~%float32 abs_theta   # absolute yaw angle in world frame~%~%# obstacle velocity in world frame~%geometry_msgs/Vector3 abs_velocity  # absolute velocity in world frame~%~%~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LeadgenObsInputArray)))
  "Returns full string definition for message of type 'LeadgenObsInputArray"
  (cl:format cl:nil "# This message is to describe a list of obstacles~%~%# Header~%std_msgs/Header header~%~%# Obstacle list~%LeadgenObstacleInput[] obstacle_list~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: leadgen_msgs/LeadgenObstacleInput~%# This message is to describe the information of an obstacle~%~%# Header~%std_msgs/Header header~%~%# obstacle ID number~%int32 id~%~%# obstacle detection sources(optional)~%uint16 source_sensor~%~%# obstacle source sensor definition, using bit-wise operations~%# A single obstacle can be detected by multiple sensors, and use OR operation as the result~%uint16 SENSOR_LIDAR = 1~%uint16 SENSOR_VISION = 2~%uint16 SENSOR_RADAR = 4~%~%# obstacle type(optional)~%uint8 type~%~%# obstacle type definitions~%# subject to change~%~%uint8 OBSTACLE_TYPE_UNKNOWN = 0~%uint8 OBSTACLE_TYPE_SMALL = 1~%uint8 OBSTACLE_TYPE_BIG = 2~%uint8 OBSTACLE_TYPE_CAR = 3~%uint8 OBSTACLE_TYPE_BUS = 4~%uint8 OBSTACLE_TYPE_TRUCK = 5~%uint8 OBSTACLE_TYPE_CYCLER = 6~%uint8 OBSTACLE_TYPE_PEDESTRIAN = 7~%uint8 OBSTACLE_TYPE_PLANT = 8~%uint8 OBSTACLE_TYPE_FENCE = 9~%~%# obstacle status(optional)~%uint8 status~%~%# obstacle status definitions~%# according to Mobileye specs~%uint8 OBSTACLE_STATUS_UNDEFINED = 0~%uint8 OBSTACLE_STATUS_STANDING = 1~%uint8 OBSTACLE_STATUS_STOPPED = 2~%uint8 OBSTACLE_STATUS_MOVING = 3~%uint8 OBSTACLE_STATUS_ONCOMING = 4~%uint8 OBSTACLE_STATUS_PARKED = 5~%uint8 OBSTACLE_STATUS_UNUSED = 6~%~%# obstacle cutting(optional)~%uint8 cutting~%~%# obstacle cutting definitions~%# according to Mobileye specs~%uint8 OBSTACLE_CUTTING_UNDEFINED = 0~%uint8 OBSTACLE_IN_HOST_LANE = 1~%uint8 OBSTACLE_OUT_HOST_LANE = 2~%uint8 OBSTACLE_CUTTING_IN = 3~%uint8 OBSTACLE_CUTTING_OUT = 4~%~%# obstacle size~%float32 length  # along obstacle's +x direction, in [m] meter~%float32 width   # along obstacle's +y direction, in [m]~%float32 height  # along obstacle's +z direction, in [m]~%~%float32 velocity_heading # the velocity heading in the world frame~%~%# obstacle pose in body frame~%bool rlt_valid  # relative information valid~%geometry_msgs/Point rlt_position    # relative position to body frame~%float32 rlt_theta   # relative theta angle, to body frame along z axis~%~%# obstacle velocity in body frame~%geometry_msgs/Vector3 rlt_velocity  # relative velocity to body frame ~%~%# obstacle pose in world frame~%bool abs_valid  # absolute information valid~%geometry_msgs/Point abs_position    # absolute position in world frame~%float32 abs_theta   # absolute yaw angle in world frame~%~%# obstacle velocity in world frame~%geometry_msgs/Vector3 abs_velocity  # absolute velocity in world frame~%~%~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LeadgenObsInputArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacle_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LeadgenObsInputArray>))
  "Converts a ROS message object to a list"
  (cl:list 'LeadgenObsInputArray
    (cl:cons ':header (header msg))
    (cl:cons ':obstacle_list (obstacle_list msg))
))
