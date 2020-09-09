;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::LatencyStats)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'LatencyStats (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::LATENCYSTATS")
  (make-package "PLANNING_MSGS::LATENCYSTATS"))

(in-package "ROS")
;;//! \htmlinclude LatencyStats.msg.html


(defclass planning_msgs::LatencyStats
  :super ros::object
  :slots (_total_time_ms _init_frame_time_ms ))

(defmethod planning_msgs::LatencyStats
  (:init
   (&key
    ((:total_time_ms __total_time_ms) 0.0)
    ((:init_frame_time_ms __init_frame_time_ms) 0.0)
    )
   (send-super :init)
   (setq _total_time_ms (float __total_time_ms))
   (setq _init_frame_time_ms (float __init_frame_time_ms))
   self)
  (:total_time_ms
   (&optional __total_time_ms)
   (if __total_time_ms (setq _total_time_ms __total_time_ms)) _total_time_ms)
  (:init_frame_time_ms
   (&optional __init_frame_time_ms)
   (if __init_frame_time_ms (setq _init_frame_time_ms __init_frame_time_ms)) _init_frame_time_ms)
  (:serialization-length
   ()
   (+
    ;; float64 _total_time_ms
    8
    ;; float64 _init_frame_time_ms
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _total_time_ms
       (sys::poke _total_time_ms (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _init_frame_time_ms
       (sys::poke _init_frame_time_ms (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _total_time_ms
     (setq _total_time_ms (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _init_frame_time_ms
     (setq _init_frame_time_ms (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get planning_msgs::LatencyStats :md5sum-) "355dc3828983803a4a3b53991fcab533")
(setf (get planning_msgs::LatencyStats :datatype-) "planning_msgs/LatencyStats")
(setf (get planning_msgs::LatencyStats :definition-)
      "float64 total_time_ms
float64 init_frame_time_ms

")



(provide :planning_msgs/LatencyStats "355dc3828983803a4a3b53991fcab533")


