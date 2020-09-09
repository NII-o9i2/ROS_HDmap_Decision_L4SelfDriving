;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::GlobalObstacle)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'GlobalObstacle (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::GLOBALOBSTACLE")
  (make-package "PLANNING_MSGS::GLOBALOBSTACLE"))

(in-package "ROS")
;;//! \htmlinclude GlobalObstacle.msg.html


(defclass planning_msgs::GlobalObstacle
  :super ros::object
  :slots (_enu_x _enu_y _enu_theta _enu_vx _enu_vy _enu_ax _enu_ay _confidence _type _velocity _length _width ))

(defmethod planning_msgs::GlobalObstacle
  (:init
   (&key
    ((:enu_x __enu_x) 0.0)
    ((:enu_y __enu_y) 0.0)
    ((:enu_theta __enu_theta) 0.0)
    ((:enu_vx __enu_vx) 0.0)
    ((:enu_vy __enu_vy) 0.0)
    ((:enu_ax __enu_ax) 0.0)
    ((:enu_ay __enu_ay) 0.0)
    ((:confidence __confidence) 0.0)
    ((:type __type) 0)
    ((:velocity __velocity) 0.0)
    ((:length __length) 0.0)
    ((:width __width) 0.0)
    )
   (send-super :init)
   (setq _enu_x (float __enu_x))
   (setq _enu_y (float __enu_y))
   (setq _enu_theta (float __enu_theta))
   (setq _enu_vx (float __enu_vx))
   (setq _enu_vy (float __enu_vy))
   (setq _enu_ax (float __enu_ax))
   (setq _enu_ay (float __enu_ay))
   (setq _confidence (float __confidence))
   (setq _type (round __type))
   (setq _velocity (float __velocity))
   (setq _length (float __length))
   (setq _width (float __width))
   self)
  (:enu_x
   (&optional __enu_x)
   (if __enu_x (setq _enu_x __enu_x)) _enu_x)
  (:enu_y
   (&optional __enu_y)
   (if __enu_y (setq _enu_y __enu_y)) _enu_y)
  (:enu_theta
   (&optional __enu_theta)
   (if __enu_theta (setq _enu_theta __enu_theta)) _enu_theta)
  (:enu_vx
   (&optional __enu_vx)
   (if __enu_vx (setq _enu_vx __enu_vx)) _enu_vx)
  (:enu_vy
   (&optional __enu_vy)
   (if __enu_vy (setq _enu_vy __enu_vy)) _enu_vy)
  (:enu_ax
   (&optional __enu_ax)
   (if __enu_ax (setq _enu_ax __enu_ax)) _enu_ax)
  (:enu_ay
   (&optional __enu_ay)
   (if __enu_ay (setq _enu_ay __enu_ay)) _enu_ay)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:serialization-length
   ()
   (+
    ;; float32 _enu_x
    4
    ;; float32 _enu_y
    4
    ;; float32 _enu_theta
    4
    ;; float32 _enu_vx
    4
    ;; float32 _enu_vy
    4
    ;; float32 _enu_ax
    4
    ;; float32 _enu_ay
    4
    ;; float32 _confidence
    4
    ;; int8 _type
    1
    ;; float32 _velocity
    4
    ;; float32 _length
    4
    ;; float32 _width
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _enu_x
       (sys::poke _enu_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _enu_y
       (sys::poke _enu_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _enu_theta
       (sys::poke _enu_theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _enu_vx
       (sys::poke _enu_vx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _enu_vy
       (sys::poke _enu_vy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _enu_ax
       (sys::poke _enu_ax (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _enu_ay
       (sys::poke _enu_ay (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _type
       (write-byte _type s)
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _enu_x
     (setq _enu_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _enu_y
     (setq _enu_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _enu_theta
     (setq _enu_theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _enu_vx
     (setq _enu_vx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _enu_vy
     (setq _enu_vy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _enu_ax
     (setq _enu_ax (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _enu_ay
     (setq _enu_ay (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get planning_msgs::GlobalObstacle :md5sum-) "b7d3afddcf69de81cf0f9f41ad80e5fa")
(setf (get planning_msgs::GlobalObstacle :datatype-) "planning_msgs/GlobalObstacle")
(setf (get planning_msgs::GlobalObstacle :definition-)
      "float32 enu_x
float32 enu_y
float32 enu_theta
float32 enu_vx
float32 enu_vy
float32 enu_ax
float32 enu_ay
float32 confidence
int8 type
float32 velocity
float32 length
float32 width

")



(provide :planning_msgs/GlobalObstacle "b7d3afddcf69de81cf0f9f41ad80e5fa")


