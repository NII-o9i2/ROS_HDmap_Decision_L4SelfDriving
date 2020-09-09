; Auto-generated. Do not edit!


(cl:in-package ytthdmap_msgs-msg)


;//! \htmlinclude HdmapYtt.msg.html

(cl:defclass <HdmapYtt> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (time
    :reader time
    :initarg :time
    :type cl:fixnum
    :initform 0)
   (isValidlane
    :reader isValidlane
    :initarg :isValidlane
    :type cl:fixnum
    :initform 0)
   (positionstate
    :reader positionstate
    :initarg :positionstate
    :type cl:fixnum
    :initform 0)
   (curlane
    :reader curlane
    :initarg :curlane
    :type cl:fixnum
    :initform 0)
   (laneinfo
    :reader laneinfo
    :initarg :laneinfo
    :type (cl:vector ytthdmap_msgs-msg:S_LANEINFO)
   :initform (cl:make-array 5 :element-type 'ytthdmap_msgs-msg:S_LANEINFO :initial-element (cl:make-instance 'ytthdmap_msgs-msg:S_LANEINFO)))
   (speedlim
    :reader speedlim
    :initarg :speedlim
    :type cl:float
    :initform 0.0)
   (stopline
    :reader stopline
    :initarg :stopline
    :type ytthdmap_msgs-msg:S_STOPLINE
    :initform (cl:make-instance 'ytthdmap_msgs-msg:S_STOPLINE))
   (istunnel
    :reader istunnel
    :initarg :istunnel
    :type cl:boolean
    :initform cl:nil)
   (nextlaneCH
    :reader nextlaneCH
    :initarg :nextlaneCH
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HdmapYtt (<HdmapYtt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HdmapYtt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HdmapYtt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ytthdmap_msgs-msg:<HdmapYtt> is deprecated: use ytthdmap_msgs-msg:HdmapYtt instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HdmapYtt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ytthdmap_msgs-msg:header-val is deprecated.  Use ytthdmap_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <HdmapYtt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ytthdmap_msgs-msg:time-val is deprecated.  Use ytthdmap_msgs-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'isValidlane-val :lambda-list '(m))
(cl:defmethod isValidlane-val ((m <HdmapYtt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ytthdmap_msgs-msg:isValidlane-val is deprecated.  Use ytthdmap_msgs-msg:isValidlane instead.")
  (isValidlane m))

(cl:ensure-generic-function 'positionstate-val :lambda-list '(m))
(cl:defmethod positionstate-val ((m <HdmapYtt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ytthdmap_msgs-msg:positionstate-val is deprecated.  Use ytthdmap_msgs-msg:positionstate instead.")
  (positionstate m))

(cl:ensure-generic-function 'curlane-val :lambda-list '(m))
(cl:defmethod curlane-val ((m <HdmapYtt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ytthdmap_msgs-msg:curlane-val is deprecated.  Use ytthdmap_msgs-msg:curlane instead.")
  (curlane m))

(cl:ensure-generic-function 'laneinfo-val :lambda-list '(m))
(cl:defmethod laneinfo-val ((m <HdmapYtt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ytthdmap_msgs-msg:laneinfo-val is deprecated.  Use ytthdmap_msgs-msg:laneinfo instead.")
  (laneinfo m))

(cl:ensure-generic-function 'speedlim-val :lambda-list '(m))
(cl:defmethod speedlim-val ((m <HdmapYtt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ytthdmap_msgs-msg:speedlim-val is deprecated.  Use ytthdmap_msgs-msg:speedlim instead.")
  (speedlim m))

(cl:ensure-generic-function 'stopline-val :lambda-list '(m))
(cl:defmethod stopline-val ((m <HdmapYtt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ytthdmap_msgs-msg:stopline-val is deprecated.  Use ytthdmap_msgs-msg:stopline instead.")
  (stopline m))

(cl:ensure-generic-function 'istunnel-val :lambda-list '(m))
(cl:defmethod istunnel-val ((m <HdmapYtt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ytthdmap_msgs-msg:istunnel-val is deprecated.  Use ytthdmap_msgs-msg:istunnel instead.")
  (istunnel m))

(cl:ensure-generic-function 'nextlaneCH-val :lambda-list '(m))
(cl:defmethod nextlaneCH-val ((m <HdmapYtt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ytthdmap_msgs-msg:nextlaneCH-val is deprecated.  Use ytthdmap_msgs-msg:nextlaneCH instead.")
  (nextlaneCH m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HdmapYtt>) ostream)
  "Serializes a message object of type '<HdmapYtt>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'time)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'isValidlane)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'positionstate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'curlane)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'laneinfo))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speedlim))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stopline) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'istunnel) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'nextlaneCH)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HdmapYtt>) istream)
  "Deserializes a message object of type '<HdmapYtt>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'isValidlane) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'positionstate) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'curlane) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:setf (cl:slot-value msg 'laneinfo) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'laneinfo)))
    (cl:dotimes (i 5)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ytthdmap_msgs-msg:S_LANEINFO))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speedlim) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stopline) istream)
    (cl:setf (cl:slot-value msg 'istunnel) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nextlaneCH) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HdmapYtt>)))
  "Returns string type for a message object of type '<HdmapYtt>"
  "ytthdmap_msgs/HdmapYtt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HdmapYtt)))
  "Returns string type for a message object of type 'HdmapYtt"
  "ytthdmap_msgs/HdmapYtt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HdmapYtt>)))
  "Returns md5sum for a message object of type '<HdmapYtt>"
  "bae8b9094ef6eb009a2477dc42585c37")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HdmapYtt)))
  "Returns md5sum for a message object of type 'HdmapYtt"
  "bae8b9094ef6eb009a2477dc42585c37")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HdmapYtt>)))
  "Returns full string definition for message of type '<HdmapYtt>"
  (cl:format cl:nil "std_msgs/Header header~%int16 time~%int16 isValidlane~%int16 positionstate~%int16 curlane~%S_LANEINFO[5] laneinfo ~%float32 speedlim~%S_STOPLINE stopline~%bool istunnel~%int16 nextlaneCH~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ytthdmap_msgs/S_LANEINFO~%S_LINE centerline~%S_LINE leftboundry~%S_LINE rightboundry~%float32 width~%bool IsPartofRouting~%int16 type~%int16 direction~%int16 id~%float32 length~%~%================================================================================~%MSG: ytthdmap_msgs/S_LINE~%int16 type~%int16[100] linetype~%S_POINT[100] point~%int16 pointnum~%~%================================================================================~%MSG: ytthdmap_msgs/S_POINT~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: ytthdmap_msgs/S_STOPLINE~%int16 offset~%int16 latOffset~%int16 type~%int16 validnum~%S_POINT[100] point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HdmapYtt)))
  "Returns full string definition for message of type 'HdmapYtt"
  (cl:format cl:nil "std_msgs/Header header~%int16 time~%int16 isValidlane~%int16 positionstate~%int16 curlane~%S_LANEINFO[5] laneinfo ~%float32 speedlim~%S_STOPLINE stopline~%bool istunnel~%int16 nextlaneCH~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ytthdmap_msgs/S_LANEINFO~%S_LINE centerline~%S_LINE leftboundry~%S_LINE rightboundry~%float32 width~%bool IsPartofRouting~%int16 type~%int16 direction~%int16 id~%float32 length~%~%================================================================================~%MSG: ytthdmap_msgs/S_LINE~%int16 type~%int16[100] linetype~%S_POINT[100] point~%int16 pointnum~%~%================================================================================~%MSG: ytthdmap_msgs/S_POINT~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: ytthdmap_msgs/S_STOPLINE~%int16 offset~%int16 latOffset~%int16 type~%int16 validnum~%S_POINT[100] point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HdmapYtt>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
     2
     2
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'laneinfo) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stopline))
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HdmapYtt>))
  "Converts a ROS message object to a list"
  (cl:list 'HdmapYtt
    (cl:cons ':header (header msg))
    (cl:cons ':time (time msg))
    (cl:cons ':isValidlane (isValidlane msg))
    (cl:cons ':positionstate (positionstate msg))
    (cl:cons ':curlane (curlane msg))
    (cl:cons ':laneinfo (laneinfo msg))
    (cl:cons ':speedlim (speedlim msg))
    (cl:cons ':stopline (stopline msg))
    (cl:cons ':istunnel (istunnel msg))
    (cl:cons ':nextlaneCH (nextlaneCH msg))
))
