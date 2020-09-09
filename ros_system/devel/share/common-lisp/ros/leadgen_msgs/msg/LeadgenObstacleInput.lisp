; Auto-generated. Do not edit!


(cl:in-package leadgen_msgs-msg)


;//! \htmlinclude LeadgenObstacleInput.msg.html

(cl:defclass <LeadgenObstacleInput> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (source_sensor
    :reader source_sensor
    :initarg :source_sensor
    :type cl:fixnum
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (cutting
    :reader cutting
    :initarg :cutting
    :type cl:fixnum
    :initform 0)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0)
   (velocity_heading
    :reader velocity_heading
    :initarg :velocity_heading
    :type cl:float
    :initform 0.0)
   (rlt_valid
    :reader rlt_valid
    :initarg :rlt_valid
    :type cl:boolean
    :initform cl:nil)
   (rlt_position
    :reader rlt_position
    :initarg :rlt_position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (rlt_theta
    :reader rlt_theta
    :initarg :rlt_theta
    :type cl:float
    :initform 0.0)
   (rlt_velocity
    :reader rlt_velocity
    :initarg :rlt_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (abs_valid
    :reader abs_valid
    :initarg :abs_valid
    :type cl:boolean
    :initform cl:nil)
   (abs_position
    :reader abs_position
    :initarg :abs_position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (abs_theta
    :reader abs_theta
    :initarg :abs_theta
    :type cl:float
    :initform 0.0)
   (abs_velocity
    :reader abs_velocity
    :initarg :abs_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass LeadgenObstacleInput (<LeadgenObstacleInput>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LeadgenObstacleInput>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LeadgenObstacleInput)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leadgen_msgs-msg:<LeadgenObstacleInput> is deprecated: use leadgen_msgs-msg:LeadgenObstacleInput instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LeadgenObstacleInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:header-val is deprecated.  Use leadgen_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <LeadgenObstacleInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:id-val is deprecated.  Use leadgen_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'source_sensor-val :lambda-list '(m))
(cl:defmethod source_sensor-val ((m <LeadgenObstacleInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:source_sensor-val is deprecated.  Use leadgen_msgs-msg:source_sensor instead.")
  (source_sensor m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <LeadgenObstacleInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:type-val is deprecated.  Use leadgen_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <LeadgenObstacleInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:status-val is deprecated.  Use leadgen_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'cutting-val :lambda-list '(m))
(cl:defmethod cutting-val ((m <LeadgenObstacleInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:cutting-val is deprecated.  Use leadgen_msgs-msg:cutting instead.")
  (cutting m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <LeadgenObstacleInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:length-val is deprecated.  Use leadgen_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <LeadgenObstacleInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:width-val is deprecated.  Use leadgen_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <LeadgenObstacleInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:height-val is deprecated.  Use leadgen_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'velocity_heading-val :lambda-list '(m))
(cl:defmethod velocity_heading-val ((m <LeadgenObstacleInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:velocity_heading-val is deprecated.  Use leadgen_msgs-msg:velocity_heading instead.")
  (velocity_heading m))

(cl:ensure-generic-function 'rlt_valid-val :lambda-list '(m))
(cl:defmethod rlt_valid-val ((m <LeadgenObstacleInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:rlt_valid-val is deprecated.  Use leadgen_msgs-msg:rlt_valid instead.")
  (rlt_valid m))

(cl:ensure-generic-function 'rlt_position-val :lambda-list '(m))
(cl:defmethod rlt_position-val ((m <LeadgenObstacleInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:rlt_position-val is deprecated.  Use leadgen_msgs-msg:rlt_position instead.")
  (rlt_position m))

(cl:ensure-generic-function 'rlt_theta-val :lambda-list '(m))
(cl:defmethod rlt_theta-val ((m <LeadgenObstacleInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:rlt_theta-val is deprecated.  Use leadgen_msgs-msg:rlt_theta instead.")
  (rlt_theta m))

(cl:ensure-generic-function 'rlt_velocity-val :lambda-list '(m))
(cl:defmethod rlt_velocity-val ((m <LeadgenObstacleInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:rlt_velocity-val is deprecated.  Use leadgen_msgs-msg:rlt_velocity instead.")
  (rlt_velocity m))

(cl:ensure-generic-function 'abs_valid-val :lambda-list '(m))
(cl:defmethod abs_valid-val ((m <LeadgenObstacleInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:abs_valid-val is deprecated.  Use leadgen_msgs-msg:abs_valid instead.")
  (abs_valid m))

(cl:ensure-generic-function 'abs_position-val :lambda-list '(m))
(cl:defmethod abs_position-val ((m <LeadgenObstacleInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:abs_position-val is deprecated.  Use leadgen_msgs-msg:abs_position instead.")
  (abs_position m))

(cl:ensure-generic-function 'abs_theta-val :lambda-list '(m))
(cl:defmethod abs_theta-val ((m <LeadgenObstacleInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:abs_theta-val is deprecated.  Use leadgen_msgs-msg:abs_theta instead.")
  (abs_theta m))

(cl:ensure-generic-function 'abs_velocity-val :lambda-list '(m))
(cl:defmethod abs_velocity-val ((m <LeadgenObstacleInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:abs_velocity-val is deprecated.  Use leadgen_msgs-msg:abs_velocity instead.")
  (abs_velocity m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LeadgenObstacleInput>)))
    "Constants for message type '<LeadgenObstacleInput>"
  '((:SENSOR_LIDAR . 1)
    (:SENSOR_VISION . 2)
    (:SENSOR_RADAR . 4)
    (:OBSTACLE_TYPE_UNKNOWN . 0)
    (:OBSTACLE_TYPE_SMALL . 1)
    (:OBSTACLE_TYPE_BIG . 2)
    (:OBSTACLE_TYPE_CAR . 3)
    (:OBSTACLE_TYPE_BUS . 4)
    (:OBSTACLE_TYPE_TRUCK . 5)
    (:OBSTACLE_TYPE_CYCLER . 6)
    (:OBSTACLE_TYPE_PEDESTRIAN . 7)
    (:OBSTACLE_TYPE_PLANT . 8)
    (:OBSTACLE_TYPE_FENCE . 9)
    (:OBSTACLE_STATUS_UNDEFINED . 0)
    (:OBSTACLE_STATUS_STANDING . 1)
    (:OBSTACLE_STATUS_STOPPED . 2)
    (:OBSTACLE_STATUS_MOVING . 3)
    (:OBSTACLE_STATUS_ONCOMING . 4)
    (:OBSTACLE_STATUS_PARKED . 5)
    (:OBSTACLE_STATUS_UNUSED . 6)
    (:OBSTACLE_CUTTING_UNDEFINED . 0)
    (:OBSTACLE_IN_HOST_LANE . 1)
    (:OBSTACLE_OUT_HOST_LANE . 2)
    (:OBSTACLE_CUTTING_IN . 3)
    (:OBSTACLE_CUTTING_OUT . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LeadgenObstacleInput)))
    "Constants for message type 'LeadgenObstacleInput"
  '((:SENSOR_LIDAR . 1)
    (:SENSOR_VISION . 2)
    (:SENSOR_RADAR . 4)
    (:OBSTACLE_TYPE_UNKNOWN . 0)
    (:OBSTACLE_TYPE_SMALL . 1)
    (:OBSTACLE_TYPE_BIG . 2)
    (:OBSTACLE_TYPE_CAR . 3)
    (:OBSTACLE_TYPE_BUS . 4)
    (:OBSTACLE_TYPE_TRUCK . 5)
    (:OBSTACLE_TYPE_CYCLER . 6)
    (:OBSTACLE_TYPE_PEDESTRIAN . 7)
    (:OBSTACLE_TYPE_PLANT . 8)
    (:OBSTACLE_TYPE_FENCE . 9)
    (:OBSTACLE_STATUS_UNDEFINED . 0)
    (:OBSTACLE_STATUS_STANDING . 1)
    (:OBSTACLE_STATUS_STOPPED . 2)
    (:OBSTACLE_STATUS_MOVING . 3)
    (:OBSTACLE_STATUS_ONCOMING . 4)
    (:OBSTACLE_STATUS_PARKED . 5)
    (:OBSTACLE_STATUS_UNUSED . 6)
    (:OBSTACLE_CUTTING_UNDEFINED . 0)
    (:OBSTACLE_IN_HOST_LANE . 1)
    (:OBSTACLE_OUT_HOST_LANE . 2)
    (:OBSTACLE_CUTTING_IN . 3)
    (:OBSTACLE_CUTTING_OUT . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LeadgenObstacleInput>) ostream)
  "Serializes a message object of type '<LeadgenObstacleInput>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source_sensor)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'source_sensor)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cutting)) ostream)
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity_heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rlt_valid) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rlt_position) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rlt_theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rlt_velocity) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'abs_valid) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'abs_position) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'abs_theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'abs_velocity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LeadgenObstacleInput>) istream)
  "Deserializes a message object of type '<LeadgenObstacleInput>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source_sensor)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'source_sensor)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cutting)) (cl:read-byte istream))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity_heading) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'rlt_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rlt_position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rlt_theta) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rlt_velocity) istream)
    (cl:setf (cl:slot-value msg 'abs_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'abs_position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'abs_theta) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'abs_velocity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LeadgenObstacleInput>)))
  "Returns string type for a message object of type '<LeadgenObstacleInput>"
  "leadgen_msgs/LeadgenObstacleInput")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LeadgenObstacleInput)))
  "Returns string type for a message object of type 'LeadgenObstacleInput"
  "leadgen_msgs/LeadgenObstacleInput")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LeadgenObstacleInput>)))
  "Returns md5sum for a message object of type '<LeadgenObstacleInput>"
  "f46fbbe4b1176a98fdda809f434653f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LeadgenObstacleInput)))
  "Returns md5sum for a message object of type 'LeadgenObstacleInput"
  "f46fbbe4b1176a98fdda809f434653f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LeadgenObstacleInput>)))
  "Returns full string definition for message of type '<LeadgenObstacleInput>"
  (cl:format cl:nil "# This message is to describe the information of an obstacle~%~%# Header~%std_msgs/Header header~%~%# obstacle ID number~%int32 id~%~%# obstacle detection sources(optional)~%uint16 source_sensor~%~%# obstacle source sensor definition, using bit-wise operations~%# A single obstacle can be detected by multiple sensors, and use OR operation as the result~%uint16 SENSOR_LIDAR = 1~%uint16 SENSOR_VISION = 2~%uint16 SENSOR_RADAR = 4~%~%# obstacle type(optional)~%uint8 type~%~%# obstacle type definitions~%# subject to change~%~%uint8 OBSTACLE_TYPE_UNKNOWN = 0~%uint8 OBSTACLE_TYPE_SMALL = 1~%uint8 OBSTACLE_TYPE_BIG = 2~%uint8 OBSTACLE_TYPE_CAR = 3~%uint8 OBSTACLE_TYPE_BUS = 4~%uint8 OBSTACLE_TYPE_TRUCK = 5~%uint8 OBSTACLE_TYPE_CYCLER = 6~%uint8 OBSTACLE_TYPE_PEDESTRIAN = 7~%uint8 OBSTACLE_TYPE_PLANT = 8~%uint8 OBSTACLE_TYPE_FENCE = 9~%~%# obstacle status(optional)~%uint8 status~%~%# obstacle status definitions~%# according to Mobileye specs~%uint8 OBSTACLE_STATUS_UNDEFINED = 0~%uint8 OBSTACLE_STATUS_STANDING = 1~%uint8 OBSTACLE_STATUS_STOPPED = 2~%uint8 OBSTACLE_STATUS_MOVING = 3~%uint8 OBSTACLE_STATUS_ONCOMING = 4~%uint8 OBSTACLE_STATUS_PARKED = 5~%uint8 OBSTACLE_STATUS_UNUSED = 6~%~%# obstacle cutting(optional)~%uint8 cutting~%~%# obstacle cutting definitions~%# according to Mobileye specs~%uint8 OBSTACLE_CUTTING_UNDEFINED = 0~%uint8 OBSTACLE_IN_HOST_LANE = 1~%uint8 OBSTACLE_OUT_HOST_LANE = 2~%uint8 OBSTACLE_CUTTING_IN = 3~%uint8 OBSTACLE_CUTTING_OUT = 4~%~%# obstacle size~%float32 length  # along obstacle's +x direction, in [m] meter~%float32 width   # along obstacle's +y direction, in [m]~%float32 height  # along obstacle's +z direction, in [m]~%~%float32 velocity_heading # the velocity heading in the world frame~%~%# obstacle pose in body frame~%bool rlt_valid  # relative information valid~%geometry_msgs/Point rlt_position    # relative position to body frame~%float32 rlt_theta   # relative theta angle, to body frame along z axis~%~%# obstacle velocity in body frame~%geometry_msgs/Vector3 rlt_velocity  # relative velocity to body frame ~%~%# obstacle pose in world frame~%bool abs_valid  # absolute information valid~%geometry_msgs/Point abs_position    # absolute position in world frame~%float32 abs_theta   # absolute yaw angle in world frame~%~%# obstacle velocity in world frame~%geometry_msgs/Vector3 abs_velocity  # absolute velocity in world frame~%~%~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LeadgenObstacleInput)))
  "Returns full string definition for message of type 'LeadgenObstacleInput"
  (cl:format cl:nil "# This message is to describe the information of an obstacle~%~%# Header~%std_msgs/Header header~%~%# obstacle ID number~%int32 id~%~%# obstacle detection sources(optional)~%uint16 source_sensor~%~%# obstacle source sensor definition, using bit-wise operations~%# A single obstacle can be detected by multiple sensors, and use OR operation as the result~%uint16 SENSOR_LIDAR = 1~%uint16 SENSOR_VISION = 2~%uint16 SENSOR_RADAR = 4~%~%# obstacle type(optional)~%uint8 type~%~%# obstacle type definitions~%# subject to change~%~%uint8 OBSTACLE_TYPE_UNKNOWN = 0~%uint8 OBSTACLE_TYPE_SMALL = 1~%uint8 OBSTACLE_TYPE_BIG = 2~%uint8 OBSTACLE_TYPE_CAR = 3~%uint8 OBSTACLE_TYPE_BUS = 4~%uint8 OBSTACLE_TYPE_TRUCK = 5~%uint8 OBSTACLE_TYPE_CYCLER = 6~%uint8 OBSTACLE_TYPE_PEDESTRIAN = 7~%uint8 OBSTACLE_TYPE_PLANT = 8~%uint8 OBSTACLE_TYPE_FENCE = 9~%~%# obstacle status(optional)~%uint8 status~%~%# obstacle status definitions~%# according to Mobileye specs~%uint8 OBSTACLE_STATUS_UNDEFINED = 0~%uint8 OBSTACLE_STATUS_STANDING = 1~%uint8 OBSTACLE_STATUS_STOPPED = 2~%uint8 OBSTACLE_STATUS_MOVING = 3~%uint8 OBSTACLE_STATUS_ONCOMING = 4~%uint8 OBSTACLE_STATUS_PARKED = 5~%uint8 OBSTACLE_STATUS_UNUSED = 6~%~%# obstacle cutting(optional)~%uint8 cutting~%~%# obstacle cutting definitions~%# according to Mobileye specs~%uint8 OBSTACLE_CUTTING_UNDEFINED = 0~%uint8 OBSTACLE_IN_HOST_LANE = 1~%uint8 OBSTACLE_OUT_HOST_LANE = 2~%uint8 OBSTACLE_CUTTING_IN = 3~%uint8 OBSTACLE_CUTTING_OUT = 4~%~%# obstacle size~%float32 length  # along obstacle's +x direction, in [m] meter~%float32 width   # along obstacle's +y direction, in [m]~%float32 height  # along obstacle's +z direction, in [m]~%~%float32 velocity_heading # the velocity heading in the world frame~%~%# obstacle pose in body frame~%bool rlt_valid  # relative information valid~%geometry_msgs/Point rlt_position    # relative position to body frame~%float32 rlt_theta   # relative theta angle, to body frame along z axis~%~%# obstacle velocity in body frame~%geometry_msgs/Vector3 rlt_velocity  # relative velocity to body frame ~%~%# obstacle pose in world frame~%bool abs_valid  # absolute information valid~%geometry_msgs/Point abs_position    # absolute position in world frame~%float32 abs_theta   # absolute yaw angle in world frame~%~%# obstacle velocity in world frame~%geometry_msgs/Vector3 abs_velocity  # absolute velocity in world frame~%~%~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LeadgenObstacleInput>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     2
     1
     1
     1
     4
     4
     4
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rlt_position))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rlt_velocity))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'abs_position))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'abs_velocity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LeadgenObstacleInput>))
  "Converts a ROS message object to a list"
  (cl:list 'LeadgenObstacleInput
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':source_sensor (source_sensor msg))
    (cl:cons ':type (type msg))
    (cl:cons ':status (status msg))
    (cl:cons ':cutting (cutting msg))
    (cl:cons ':length (length msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
    (cl:cons ':velocity_heading (velocity_heading msg))
    (cl:cons ':rlt_valid (rlt_valid msg))
    (cl:cons ':rlt_position (rlt_position msg))
    (cl:cons ':rlt_theta (rlt_theta msg))
    (cl:cons ':rlt_velocity (rlt_velocity msg))
    (cl:cons ':abs_valid (abs_valid msg))
    (cl:cons ':abs_position (abs_position msg))
    (cl:cons ':abs_theta (abs_theta msg))
    (cl:cons ':abs_velocity (abs_velocity msg))
))
