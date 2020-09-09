;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::StitchDebug)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'StitchDebug (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::STITCHDEBUG")
  (make-package "PLANNING_MSGS::STITCHDEBUG"))

(in-package "ROS")
;;//! \htmlinclude StitchDebug.msg.html


(defclass planning_msgs::StitchDebug
  :super ros::object
  :slots (_prev_traj_is_not_ok _driver_mode_is_not_auto _prev_traj_size_is_zero _smaller_than_prev_traj_time _beyond_prev_traj_time _dist_too_large _lon_diff _lat_diff ))

(defmethod planning_msgs::StitchDebug
  (:init
   (&key
    ((:prev_traj_is_not_ok __prev_traj_is_not_ok) nil)
    ((:driver_mode_is_not_auto __driver_mode_is_not_auto) nil)
    ((:prev_traj_size_is_zero __prev_traj_size_is_zero) nil)
    ((:smaller_than_prev_traj_time __smaller_than_prev_traj_time) nil)
    ((:beyond_prev_traj_time __beyond_prev_traj_time) nil)
    ((:dist_too_large __dist_too_large) nil)
    ((:lon_diff __lon_diff) 0.0)
    ((:lat_diff __lat_diff) 0.0)
    )
   (send-super :init)
   (setq _prev_traj_is_not_ok __prev_traj_is_not_ok)
   (setq _driver_mode_is_not_auto __driver_mode_is_not_auto)
   (setq _prev_traj_size_is_zero __prev_traj_size_is_zero)
   (setq _smaller_than_prev_traj_time __smaller_than_prev_traj_time)
   (setq _beyond_prev_traj_time __beyond_prev_traj_time)
   (setq _dist_too_large __dist_too_large)
   (setq _lon_diff (float __lon_diff))
   (setq _lat_diff (float __lat_diff))
   self)
  (:prev_traj_is_not_ok
   (&optional __prev_traj_is_not_ok)
   (if __prev_traj_is_not_ok (setq _prev_traj_is_not_ok __prev_traj_is_not_ok)) _prev_traj_is_not_ok)
  (:driver_mode_is_not_auto
   (&optional __driver_mode_is_not_auto)
   (if __driver_mode_is_not_auto (setq _driver_mode_is_not_auto __driver_mode_is_not_auto)) _driver_mode_is_not_auto)
  (:prev_traj_size_is_zero
   (&optional __prev_traj_size_is_zero)
   (if __prev_traj_size_is_zero (setq _prev_traj_size_is_zero __prev_traj_size_is_zero)) _prev_traj_size_is_zero)
  (:smaller_than_prev_traj_time
   (&optional __smaller_than_prev_traj_time)
   (if __smaller_than_prev_traj_time (setq _smaller_than_prev_traj_time __smaller_than_prev_traj_time)) _smaller_than_prev_traj_time)
  (:beyond_prev_traj_time
   (&optional __beyond_prev_traj_time)
   (if __beyond_prev_traj_time (setq _beyond_prev_traj_time __beyond_prev_traj_time)) _beyond_prev_traj_time)
  (:dist_too_large
   (&optional __dist_too_large)
   (if __dist_too_large (setq _dist_too_large __dist_too_large)) _dist_too_large)
  (:lon_diff
   (&optional __lon_diff)
   (if __lon_diff (setq _lon_diff __lon_diff)) _lon_diff)
  (:lat_diff
   (&optional __lat_diff)
   (if __lat_diff (setq _lat_diff __lat_diff)) _lat_diff)
  (:serialization-length
   ()
   (+
    ;; bool _prev_traj_is_not_ok
    1
    ;; bool _driver_mode_is_not_auto
    1
    ;; bool _prev_traj_size_is_zero
    1
    ;; bool _smaller_than_prev_traj_time
    1
    ;; bool _beyond_prev_traj_time
    1
    ;; bool _dist_too_large
    1
    ;; float32 _lon_diff
    4
    ;; float32 _lat_diff
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _prev_traj_is_not_ok
       (if _prev_traj_is_not_ok (write-byte -1 s) (write-byte 0 s))
     ;; bool _driver_mode_is_not_auto
       (if _driver_mode_is_not_auto (write-byte -1 s) (write-byte 0 s))
     ;; bool _prev_traj_size_is_zero
       (if _prev_traj_size_is_zero (write-byte -1 s) (write-byte 0 s))
     ;; bool _smaller_than_prev_traj_time
       (if _smaller_than_prev_traj_time (write-byte -1 s) (write-byte 0 s))
     ;; bool _beyond_prev_traj_time
       (if _beyond_prev_traj_time (write-byte -1 s) (write-byte 0 s))
     ;; bool _dist_too_large
       (if _dist_too_large (write-byte -1 s) (write-byte 0 s))
     ;; float32 _lon_diff
       (sys::poke _lon_diff (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lat_diff
       (sys::poke _lat_diff (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _prev_traj_is_not_ok
     (setq _prev_traj_is_not_ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _driver_mode_is_not_auto
     (setq _driver_mode_is_not_auto (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _prev_traj_size_is_zero
     (setq _prev_traj_size_is_zero (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _smaller_than_prev_traj_time
     (setq _smaller_than_prev_traj_time (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _beyond_prev_traj_time
     (setq _beyond_prev_traj_time (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _dist_too_large
     (setq _dist_too_large (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _lon_diff
     (setq _lon_diff (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lat_diff
     (setq _lat_diff (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get planning_msgs::StitchDebug :md5sum-) "dbce74fa73b1745ccd5e3c75b3d544b6")
(setf (get planning_msgs::StitchDebug :datatype-) "planning_msgs/StitchDebug")
(setf (get planning_msgs::StitchDebug :definition-)
      "  bool prev_traj_is_not_ok
  bool driver_mode_is_not_auto
  bool prev_traj_size_is_zero
  bool smaller_than_prev_traj_time
  bool beyond_prev_traj_time
  bool dist_too_large
  float32 lon_diff
  float32 lat_diff
")



(provide :planning_msgs/StitchDebug "dbce74fa73b1745ccd5e3c75b3d544b6")


