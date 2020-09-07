;; Auto-generated. Do not edit!


(when (boundp 'locationsim_msgs::LOCATIONSIM)
  (if (not (find-package "LOCATIONSIM_MSGS"))
    (make-package "LOCATIONSIM_MSGS"))
  (shadow 'LOCATIONSIM (find-package "LOCATIONSIM_MSGS")))
(unless (find-package "LOCATIONSIM_MSGS::LOCATIONSIM")
  (make-package "LOCATIONSIM_MSGS::LOCATIONSIM"))

(in-package "ROS")
;;//! \htmlinclude LOCATIONSIM.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass locationsim_msgs::LOCATIONSIM
  :super ros::object
  :slots (_header _position_x _position_y _positon_yaw _velocity ))

(defmethod locationsim_msgs::LOCATIONSIM
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:position_x __position_x) 0.0)
    ((:position_y __position_y) 0.0)
    ((:positon_yaw __positon_yaw) 0.0)
    ((:velocity __velocity) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _position_x (float __position_x))
   (setq _position_y (float __position_y))
   (setq _positon_yaw (float __positon_yaw))
   (setq _velocity (float __velocity))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:position_x
   (&optional __position_x)
   (if __position_x (setq _position_x __position_x)) _position_x)
  (:position_y
   (&optional __position_y)
   (if __position_y (setq _position_y __position_y)) _position_y)
  (:positon_yaw
   (&optional __positon_yaw)
   (if __positon_yaw (setq _positon_yaw __positon_yaw)) _positon_yaw)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _position_x
    4
    ;; float32 _position_y
    4
    ;; float32 _positon_yaw
    4
    ;; float32 _velocity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _position_x
       (sys::poke _position_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _position_y
       (sys::poke _position_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _positon_yaw
       (sys::poke _positon_yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _position_x
     (setq _position_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _position_y
     (setq _position_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _positon_yaw
     (setq _positon_yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get locationsim_msgs::LOCATIONSIM :md5sum-) "ba3599f0c405e73c0a26e3890c35dc16")
(setf (get locationsim_msgs::LOCATIONSIM :datatype-) "locationsim_msgs/LOCATIONSIM")
(setf (get locationsim_msgs::LOCATIONSIM :definition-)
      "std_msgs/Header header
float32 position_x
float32 position_y
float32 positon_yaw
float32 velocity

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

")



(provide :locationsim_msgs/LOCATIONSIM "ba3599f0c405e73c0a26e3890c35dc16")


