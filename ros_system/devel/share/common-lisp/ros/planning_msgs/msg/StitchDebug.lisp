; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude StitchDebug.msg.html

(cl:defclass <StitchDebug> (roslisp-msg-protocol:ros-message)
  ((prev_traj_is_not_ok
    :reader prev_traj_is_not_ok
    :initarg :prev_traj_is_not_ok
    :type cl:boolean
    :initform cl:nil)
   (driver_mode_is_not_auto
    :reader driver_mode_is_not_auto
    :initarg :driver_mode_is_not_auto
    :type cl:boolean
    :initform cl:nil)
   (prev_traj_size_is_zero
    :reader prev_traj_size_is_zero
    :initarg :prev_traj_size_is_zero
    :type cl:boolean
    :initform cl:nil)
   (smaller_than_prev_traj_time
    :reader smaller_than_prev_traj_time
    :initarg :smaller_than_prev_traj_time
    :type cl:boolean
    :initform cl:nil)
   (beyond_prev_traj_time
    :reader beyond_prev_traj_time
    :initarg :beyond_prev_traj_time
    :type cl:boolean
    :initform cl:nil)
   (dist_too_large
    :reader dist_too_large
    :initarg :dist_too_large
    :type cl:boolean
    :initform cl:nil)
   (lon_diff
    :reader lon_diff
    :initarg :lon_diff
    :type cl:float
    :initform 0.0)
   (lat_diff
    :reader lat_diff
    :initarg :lat_diff
    :type cl:float
    :initform 0.0))
)

(cl:defclass StitchDebug (<StitchDebug>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StitchDebug>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StitchDebug)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<StitchDebug> is deprecated: use planning_msgs-msg:StitchDebug instead.")))

(cl:ensure-generic-function 'prev_traj_is_not_ok-val :lambda-list '(m))
(cl:defmethod prev_traj_is_not_ok-val ((m <StitchDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:prev_traj_is_not_ok-val is deprecated.  Use planning_msgs-msg:prev_traj_is_not_ok instead.")
  (prev_traj_is_not_ok m))

(cl:ensure-generic-function 'driver_mode_is_not_auto-val :lambda-list '(m))
(cl:defmethod driver_mode_is_not_auto-val ((m <StitchDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:driver_mode_is_not_auto-val is deprecated.  Use planning_msgs-msg:driver_mode_is_not_auto instead.")
  (driver_mode_is_not_auto m))

(cl:ensure-generic-function 'prev_traj_size_is_zero-val :lambda-list '(m))
(cl:defmethod prev_traj_size_is_zero-val ((m <StitchDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:prev_traj_size_is_zero-val is deprecated.  Use planning_msgs-msg:prev_traj_size_is_zero instead.")
  (prev_traj_size_is_zero m))

(cl:ensure-generic-function 'smaller_than_prev_traj_time-val :lambda-list '(m))
(cl:defmethod smaller_than_prev_traj_time-val ((m <StitchDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:smaller_than_prev_traj_time-val is deprecated.  Use planning_msgs-msg:smaller_than_prev_traj_time instead.")
  (smaller_than_prev_traj_time m))

(cl:ensure-generic-function 'beyond_prev_traj_time-val :lambda-list '(m))
(cl:defmethod beyond_prev_traj_time-val ((m <StitchDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:beyond_prev_traj_time-val is deprecated.  Use planning_msgs-msg:beyond_prev_traj_time instead.")
  (beyond_prev_traj_time m))

(cl:ensure-generic-function 'dist_too_large-val :lambda-list '(m))
(cl:defmethod dist_too_large-val ((m <StitchDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:dist_too_large-val is deprecated.  Use planning_msgs-msg:dist_too_large instead.")
  (dist_too_large m))

(cl:ensure-generic-function 'lon_diff-val :lambda-list '(m))
(cl:defmethod lon_diff-val ((m <StitchDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lon_diff-val is deprecated.  Use planning_msgs-msg:lon_diff instead.")
  (lon_diff m))

(cl:ensure-generic-function 'lat_diff-val :lambda-list '(m))
(cl:defmethod lat_diff-val ((m <StitchDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lat_diff-val is deprecated.  Use planning_msgs-msg:lat_diff instead.")
  (lat_diff m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StitchDebug>) ostream)
  "Serializes a message object of type '<StitchDebug>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'prev_traj_is_not_ok) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'driver_mode_is_not_auto) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'prev_traj_size_is_zero) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'smaller_than_prev_traj_time) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'beyond_prev_traj_time) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dist_too_large) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lon_diff))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lat_diff))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StitchDebug>) istream)
  "Deserializes a message object of type '<StitchDebug>"
    (cl:setf (cl:slot-value msg 'prev_traj_is_not_ok) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'driver_mode_is_not_auto) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'prev_traj_size_is_zero) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'smaller_than_prev_traj_time) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'beyond_prev_traj_time) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'dist_too_large) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lon_diff) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat_diff) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StitchDebug>)))
  "Returns string type for a message object of type '<StitchDebug>"
  "planning_msgs/StitchDebug")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StitchDebug)))
  "Returns string type for a message object of type 'StitchDebug"
  "planning_msgs/StitchDebug")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StitchDebug>)))
  "Returns md5sum for a message object of type '<StitchDebug>"
  "dbce74fa73b1745ccd5e3c75b3d544b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StitchDebug)))
  "Returns md5sum for a message object of type 'StitchDebug"
  "dbce74fa73b1745ccd5e3c75b3d544b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StitchDebug>)))
  "Returns full string definition for message of type '<StitchDebug>"
  (cl:format cl:nil "  bool prev_traj_is_not_ok~%  bool driver_mode_is_not_auto~%  bool prev_traj_size_is_zero~%  bool smaller_than_prev_traj_time~%  bool beyond_prev_traj_time~%  bool dist_too_large~%  float32 lon_diff~%  float32 lat_diff~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StitchDebug)))
  "Returns full string definition for message of type 'StitchDebug"
  (cl:format cl:nil "  bool prev_traj_is_not_ok~%  bool driver_mode_is_not_auto~%  bool prev_traj_size_is_zero~%  bool smaller_than_prev_traj_time~%  bool beyond_prev_traj_time~%  bool dist_too_large~%  float32 lon_diff~%  float32 lat_diff~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StitchDebug>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StitchDebug>))
  "Converts a ROS message object to a list"
  (cl:list 'StitchDebug
    (cl:cons ':prev_traj_is_not_ok (prev_traj_is_not_ok msg))
    (cl:cons ':driver_mode_is_not_auto (driver_mode_is_not_auto msg))
    (cl:cons ':prev_traj_size_is_zero (prev_traj_size_is_zero msg))
    (cl:cons ':smaller_than_prev_traj_time (smaller_than_prev_traj_time msg))
    (cl:cons ':beyond_prev_traj_time (beyond_prev_traj_time msg))
    (cl:cons ':dist_too_large (dist_too_large msg))
    (cl:cons ':lon_diff (lon_diff msg))
    (cl:cons ':lat_diff (lat_diff msg))
))
