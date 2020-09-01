; Auto-generated. Do not edit!


(cl:in-package mytest-msg)


;//! \htmlinclude mypath.msg.html

(cl:defclass <mypath> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (path
    :reader path
    :initarg :path
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose))))
)

(cl:defclass mypath (<mypath>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mypath>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mypath)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mytest-msg:<mypath> is deprecated: use mytest-msg:mypath instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <mypath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mytest-msg:header-val is deprecated.  Use mytest-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <mypath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mytest-msg:path-val is deprecated.  Use mytest-msg:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mypath>) ostream)
  "Serializes a message object of type '<mypath>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mypath>) istream)
  "Deserializes a message object of type '<mypath>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mypath>)))
  "Returns string type for a message object of type '<mypath>"
  "mytest/mypath")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mypath)))
  "Returns string type for a message object of type 'mypath"
  "mytest/mypath")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mypath>)))
  "Returns md5sum for a message object of type '<mypath>"
  "b00f5151502db26110fb28d11e089fdf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mypath)))
  "Returns md5sum for a message object of type 'mypath"
  "b00f5151502db26110fb28d11e089fdf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mypath>)))
  "Returns full string definition for message of type '<mypath>"
  (cl:format cl:nil "std_msgs/Header header~%geometry_msgs/Pose[] path~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mypath)))
  "Returns full string definition for message of type 'mypath"
  (cl:format cl:nil "std_msgs/Header header~%geometry_msgs/Pose[] path~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mypath>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mypath>))
  "Converts a ROS message object to a list"
  (cl:list 'mypath
    (cl:cons ':header (header msg))
    (cl:cons ':path (path msg))
))
