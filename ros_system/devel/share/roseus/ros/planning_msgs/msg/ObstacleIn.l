;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::ObstacleIn)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'ObstacleIn (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::OBSTACLEIN")
  (make-package "PLANNING_MSGS::OBSTACLEIN"))

(in-package "ROS")
;;//! \htmlinclude ObstacleIn.msg.html


(defclass planning_msgs::ObstacleIn
  :super ros::object
  :slots (_id _s _l _vs _as _vl _al _lane_no _time_cost _des_cost _decision_cost _decision_tag ))

(defmethod planning_msgs::ObstacleIn
  (:init
   (&key
    ((:id __id) 0)
    ((:s __s) 0.0)
    ((:l __l) 0.0)
    ((:vs __vs) 0.0)
    ((:as __as) 0.0)
    ((:vl __vl) 0.0)
    ((:al __al) 0.0)
    ((:lane_no __lane_no) 0)
    ((:time_cost __time_cost) 0.0)
    ((:des_cost __des_cost) 0.0)
    ((:decision_cost __decision_cost) 0.0)
    ((:decision_tag __decision_tag) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _s (float __s))
   (setq _l (float __l))
   (setq _vs (float __vs))
   (setq _as (float __as))
   (setq _vl (float __vl))
   (setq _al (float __al))
   (setq _lane_no (round __lane_no))
   (setq _time_cost (float __time_cost))
   (setq _des_cost (float __des_cost))
   (setq _decision_cost (float __decision_cost))
   (setq _decision_tag (round __decision_tag))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:l
   (&optional __l)
   (if __l (setq _l __l)) _l)
  (:vs
   (&optional __vs)
   (if __vs (setq _vs __vs)) _vs)
  (:as
   (&optional __as)
   (if __as (setq _as __as)) _as)
  (:vl
   (&optional __vl)
   (if __vl (setq _vl __vl)) _vl)
  (:al
   (&optional __al)
   (if __al (setq _al __al)) _al)
  (:lane_no
   (&optional __lane_no)
   (if __lane_no (setq _lane_no __lane_no)) _lane_no)
  (:time_cost
   (&optional __time_cost)
   (if __time_cost (setq _time_cost __time_cost)) _time_cost)
  (:des_cost
   (&optional __des_cost)
   (if __des_cost (setq _des_cost __des_cost)) _des_cost)
  (:decision_cost
   (&optional __decision_cost)
   (if __decision_cost (setq _decision_cost __decision_cost)) _decision_cost)
  (:decision_tag
   (&optional __decision_tag)
   (if __decision_tag (setq _decision_tag __decision_tag)) _decision_tag)
  (:serialization-length
   ()
   (+
    ;; int8 _id
    1
    ;; float32 _s
    4
    ;; float32 _l
    4
    ;; float32 _vs
    4
    ;; float32 _as
    4
    ;; float32 _vl
    4
    ;; float32 _al
    4
    ;; int8 _lane_no
    1
    ;; float32 _time_cost
    4
    ;; float32 _des_cost
    4
    ;; float32 _decision_cost
    4
    ;; int8 _decision_tag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _id
       (write-byte _id s)
     ;; float32 _s
       (sys::poke _s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _l
       (sys::poke _l (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vs
       (sys::poke _vs (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _as
       (sys::poke _as (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vl
       (sys::poke _vl (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _al
       (sys::poke _al (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _lane_no
       (write-byte _lane_no s)
     ;; float32 _time_cost
       (sys::poke _time_cost (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _des_cost
       (sys::poke _des_cost (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _decision_cost
       (sys::poke _decision_cost (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _decision_tag
       (write-byte _decision_tag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _id 127) (setq _id (- _id 256)))
   ;; float32 _s
     (setq _s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _l
     (setq _l (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vs
     (setq _vs (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _as
     (setq _as (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vl
     (setq _vl (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _al
     (setq _al (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _lane_no
     (setq _lane_no (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _lane_no 127) (setq _lane_no (- _lane_no 256)))
   ;; float32 _time_cost
     (setq _time_cost (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _des_cost
     (setq _des_cost (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _decision_cost
     (setq _decision_cost (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _decision_tag
     (setq _decision_tag (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _decision_tag 127) (setq _decision_tag (- _decision_tag 256)))
   ;;
   self)
  )

(setf (get planning_msgs::ObstacleIn :md5sum-) "839da740b46a1232ec0479df07f94f66")
(setf (get planning_msgs::ObstacleIn :datatype-) "planning_msgs/ObstacleIn")
(setf (get planning_msgs::ObstacleIn :definition-)
      "int8 id
float32 s
float32 l
float32 vs
float32 as
float32 vl
float32 al
int8 lane_no
float32 time_cost
float32 des_cost
float32 decision_cost
int8 decision_tag

")



(provide :planning_msgs/ObstacleIn "839da740b46a1232ec0479df07f94f66")


