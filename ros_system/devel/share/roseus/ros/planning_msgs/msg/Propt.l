;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::Propt)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'Propt (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::PROPT")
  (make-package "PLANNING_MSGS::PROPT"))

(in-package "ROS")
;;//! \htmlinclude Propt.msg.html


(defclass planning_msgs::Propt
  :super ros::object
  :slots (_frenet_l _frenet_s _angle_diff ))

(defmethod planning_msgs::Propt
  (:init
   (&key
    ((:frenet_l __frenet_l) 0.0)
    ((:frenet_s __frenet_s) 0.0)
    ((:angle_diff __angle_diff) 0.0)
    )
   (send-super :init)
   (setq _frenet_l (float __frenet_l))
   (setq _frenet_s (float __frenet_s))
   (setq _angle_diff (float __angle_diff))
   self)
  (:frenet_l
   (&optional __frenet_l)
   (if __frenet_l (setq _frenet_l __frenet_l)) _frenet_l)
  (:frenet_s
   (&optional __frenet_s)
   (if __frenet_s (setq _frenet_s __frenet_s)) _frenet_s)
  (:angle_diff
   (&optional __angle_diff)
   (if __angle_diff (setq _angle_diff __angle_diff)) _angle_diff)
  (:serialization-length
   ()
   (+
    ;; float32 _frenet_l
    4
    ;; float32 _frenet_s
    4
    ;; float32 _angle_diff
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _frenet_l
       (sys::poke _frenet_l (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _frenet_s
       (sys::poke _frenet_s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle_diff
       (sys::poke _angle_diff (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _frenet_l
     (setq _frenet_l (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _frenet_s
     (setq _frenet_s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle_diff
     (setq _angle_diff (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get planning_msgs::Propt :md5sum-) "36e7dfcccde17a7b4086abce8e13aa97")
(setf (get planning_msgs::Propt :datatype-) "planning_msgs/Propt")
(setf (get planning_msgs::Propt :definition-)
      "float32 frenet_l
float32 frenet_s
float32 angle_diff

")



(provide :planning_msgs/Propt "36e7dfcccde17a7b4086abce8e13aa97")


