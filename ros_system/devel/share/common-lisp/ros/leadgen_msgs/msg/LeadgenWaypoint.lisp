; Auto-generated. Do not edit!


(cl:in-package leadgen_msgs-msg)


;//! \htmlinclude LeadgenWaypoint.msg.html

(cl:defclass <LeadgenWaypoint> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0)
   (kappa
    :reader kappa
    :initarg :kappa
    :type cl:float
    :initform 0.0)
   (station
    :reader station
    :initarg :station
    :type cl:float
    :initform 0.0)
   (lateral
    :reader lateral
    :initarg :lateral
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (accel
    :reader accel
    :initarg :accel
    :type cl:float
    :initform 0.0)
   (time_arrival
    :reader time_arrival
    :initarg :time_arrival
    :type cl:real
    :initform 0))
)

(cl:defclass LeadgenWaypoint (<LeadgenWaypoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LeadgenWaypoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LeadgenWaypoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leadgen_msgs-msg:<LeadgenWaypoint> is deprecated: use leadgen_msgs-msg:LeadgenWaypoint instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <LeadgenWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:point-val is deprecated.  Use leadgen_msgs-msg:point instead.")
  (point m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <LeadgenWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:theta-val is deprecated.  Use leadgen_msgs-msg:theta instead.")
  (theta m))

(cl:ensure-generic-function 'kappa-val :lambda-list '(m))
(cl:defmethod kappa-val ((m <LeadgenWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:kappa-val is deprecated.  Use leadgen_msgs-msg:kappa instead.")
  (kappa m))

(cl:ensure-generic-function 'station-val :lambda-list '(m))
(cl:defmethod station-val ((m <LeadgenWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:station-val is deprecated.  Use leadgen_msgs-msg:station instead.")
  (station m))

(cl:ensure-generic-function 'lateral-val :lambda-list '(m))
(cl:defmethod lateral-val ((m <LeadgenWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:lateral-val is deprecated.  Use leadgen_msgs-msg:lateral instead.")
  (lateral m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <LeadgenWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:speed-val is deprecated.  Use leadgen_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'accel-val :lambda-list '(m))
(cl:defmethod accel-val ((m <LeadgenWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:accel-val is deprecated.  Use leadgen_msgs-msg:accel instead.")
  (accel m))

(cl:ensure-generic-function 'time_arrival-val :lambda-list '(m))
(cl:defmethod time_arrival-val ((m <LeadgenWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leadgen_msgs-msg:time_arrival-val is deprecated.  Use leadgen_msgs-msg:time_arrival instead.")
  (time_arrival m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LeadgenWaypoint>) ostream)
  "Serializes a message object of type '<LeadgenWaypoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'kappa))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'station))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lateral))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time_arrival)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time_arrival) (cl:floor (cl:slot-value msg 'time_arrival)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LeadgenWaypoint>) istream)
  "Deserializes a message object of type '<LeadgenWaypoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kappa) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'station) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lateral) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_arrival) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LeadgenWaypoint>)))
  "Returns string type for a message object of type '<LeadgenWaypoint>"
  "leadgen_msgs/LeadgenWaypoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LeadgenWaypoint)))
  "Returns string type for a message object of type 'LeadgenWaypoint"
  "leadgen_msgs/LeadgenWaypoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LeadgenWaypoint>)))
  "Returns md5sum for a message object of type '<LeadgenWaypoint>"
  "38a50bfbdbab44a271e46dddaf38da0a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LeadgenWaypoint)))
  "Returns md5sum for a message object of type 'LeadgenWaypoint"
  "38a50bfbdbab44a271e46dddaf38da0a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LeadgenWaypoint>)))
  "Returns full string definition for message of type '<LeadgenWaypoint>"
  (cl:format cl:nil "# This message is to describe a WAYPOINT in the target trajectory~%~%# header~%# std_msgs/Header header~%~%# 3D position~%geometry_msgs/Point point~%~%# trace info~%float64 theta # the heading of the trace at this point~%float64 kappa # the curvature of the trace at this point~%~%# SL info~%float64 station~%float64 lateral~%~%# speed info~%float32 speed # in [m/s]~%float32 accel # in [m/s^2],(optional)~%~%time time_arrival # the expected arrival time of this point~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LeadgenWaypoint)))
  "Returns full string definition for message of type 'LeadgenWaypoint"
  (cl:format cl:nil "# This message is to describe a WAYPOINT in the target trajectory~%~%# header~%# std_msgs/Header header~%~%# 3D position~%geometry_msgs/Point point~%~%# trace info~%float64 theta # the heading of the trace at this point~%float64 kappa # the curvature of the trace at this point~%~%# SL info~%float64 station~%float64 lateral~%~%# speed info~%float32 speed # in [m/s]~%float32 accel # in [m/s^2],(optional)~%~%time time_arrival # the expected arrival time of this point~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LeadgenWaypoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
     8
     8
     8
     8
     4
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LeadgenWaypoint>))
  "Converts a ROS message object to a list"
  (cl:list 'LeadgenWaypoint
    (cl:cons ':point (point msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':kappa (kappa msg))
    (cl:cons ':station (station msg))
    (cl:cons ':lateral (lateral msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':accel (accel msg))
    (cl:cons ':time_arrival (time_arrival msg))
))
