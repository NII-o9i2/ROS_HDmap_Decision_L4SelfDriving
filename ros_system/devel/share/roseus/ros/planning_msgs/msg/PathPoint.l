;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::PathPoint)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'PathPoint (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::PATHPOINT")
  (make-package "PLANNING_MSGS::PATHPOINT"))

(in-package "ROS")
;;//! \htmlinclude PathPoint.msg.html


(defclass planning_msgs::PathPoint
  :super ros::object
  :slots (_time _x _y _z _theta _curvature _curv_rate _velocity _acceleration _s _l ))

(defmethod planning_msgs::PathPoint
  (:init
   (&key
    ((:time __time) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:theta __theta) 0.0)
    ((:curvature __curvature) 0.0)
    ((:curv_rate __curv_rate) 0.0)
    ((:velocity __velocity) 0.0)
    ((:acceleration __acceleration) 0.0)
    ((:s __s) 0.0)
    ((:l __l) 0.0)
    )
   (send-super :init)
   (setq _time (float __time))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _theta (float __theta))
   (setq _curvature (float __curvature))
   (setq _curv_rate (float __curv_rate))
   (setq _velocity (float __velocity))
   (setq _acceleration (float __acceleration))
   (setq _s (float __s))
   (setq _l (float __l))
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:curvature
   (&optional __curvature)
   (if __curvature (setq _curvature __curvature)) _curvature)
  (:curv_rate
   (&optional __curv_rate)
   (if __curv_rate (setq _curv_rate __curv_rate)) _curv_rate)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:l
   (&optional __l)
   (if __l (setq _l __l)) _l)
  (:serialization-length
   ()
   (+
    ;; float64 _time
    8
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _theta
    8
    ;; float64 _curvature
    8
    ;; float64 _curv_rate
    8
    ;; float32 _velocity
    4
    ;; float32 _acceleration
    4
    ;; float32 _s
    4
    ;; float32 _l
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _curvature
       (sys::poke _curvature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _curv_rate
       (sys::poke _curv_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acceleration
       (sys::poke _acceleration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _s
       (sys::poke _s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _l
       (sys::poke _l (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _curvature
     (setq _curvature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _curv_rate
     (setq _curv_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acceleration
     (setq _acceleration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _s
     (setq _s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _l
     (setq _l (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get planning_msgs::PathPoint :md5sum-) "8ca146211c0eeacb11ce47c4386e83c5")
(setf (get planning_msgs::PathPoint :datatype-) "planning_msgs/PathPoint")
(setf (get planning_msgs::PathPoint :definition-)
      "float64 time
float64 x
float64 y
float64 z
float64 theta
float64 curvature
float64 curv_rate
float32 velocity 
float32 acceleration 
float32 s
float32 l

")



(provide :planning_msgs/PathPoint "8ca146211c0eeacb11ce47c4386e83c5")


