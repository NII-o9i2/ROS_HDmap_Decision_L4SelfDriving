;; Auto-generated. Do not edit!


(when (boundp 'mytest::mypath)
  (if (not (find-package "MYTEST"))
    (make-package "MYTEST"))
  (shadow 'mypath (find-package "MYTEST")))
(unless (find-package "MYTEST::MYPATH")
  (make-package "MYTEST::MYPATH"))

(in-package "ROS")
;;//! \htmlinclude mypath.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mytest::mypath
  :super ros::object
  :slots (_header _path ))

(defmethod mytest::mypath
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:path __path) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _path __path)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose[] _path
    (apply #'+ (send-all _path :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose[] _path
     (write-long (length _path) s)
     (dolist (elem _path)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose[] _path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _path)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mytest::mypath :md5sum-) "b00f5151502db26110fb28d11e089fdf")
(setf (get mytest::mypath :datatype-) "mytest/mypath")
(setf (get mytest::mypath :definition-)
      "std_msgs/Header header
geometry_msgs/Pose[] path

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :mytest/mypath "b00f5151502db26110fb28d11e089fdf")


