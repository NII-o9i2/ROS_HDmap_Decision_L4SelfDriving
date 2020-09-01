;; Auto-generated. Do not edit!


(when (boundp 'ytthdmap_msgs::S_LANEINFO)
  (if (not (find-package "YTTHDMAP_MSGS"))
    (make-package "YTTHDMAP_MSGS"))
  (shadow 'S_LANEINFO (find-package "YTTHDMAP_MSGS")))
(unless (find-package "YTTHDMAP_MSGS::S_LANEINFO")
  (make-package "YTTHDMAP_MSGS::S_LANEINFO"))

(in-package "ROS")
;;//! \htmlinclude S_LANEINFO.msg.html


(defclass ytthdmap_msgs::S_LANEINFO
  :super ros::object
  :slots (_centerline _leftboundry _rightboundry _width _IsPartofRouting _type _direction _id _length ))

(defmethod ytthdmap_msgs::S_LANEINFO
  (:init
   (&key
    ((:centerline __centerline) (instance ytthdmap_msgs::S_LINE :init))
    ((:leftboundry __leftboundry) (instance ytthdmap_msgs::S_LINE :init))
    ((:rightboundry __rightboundry) (instance ytthdmap_msgs::S_LINE :init))
    ((:width __width) 0.0)
    ((:IsPartofRouting __IsPartofRouting) nil)
    ((:type __type) 0)
    ((:direction __direction) 0)
    ((:id __id) 0)
    ((:length __length) 0.0)
    )
   (send-super :init)
   (setq _centerline __centerline)
   (setq _leftboundry __leftboundry)
   (setq _rightboundry __rightboundry)
   (setq _width (float __width))
   (setq _IsPartofRouting __IsPartofRouting)
   (setq _type (round __type))
   (setq _direction (round __direction))
   (setq _id (round __id))
   (setq _length (float __length))
   self)
  (:centerline
   (&rest __centerline)
   (if (keywordp (car __centerline))
       (send* _centerline __centerline)
     (progn
       (if __centerline (setq _centerline (car __centerline)))
       _centerline)))
  (:leftboundry
   (&rest __leftboundry)
   (if (keywordp (car __leftboundry))
       (send* _leftboundry __leftboundry)
     (progn
       (if __leftboundry (setq _leftboundry (car __leftboundry)))
       _leftboundry)))
  (:rightboundry
   (&rest __rightboundry)
   (if (keywordp (car __rightboundry))
       (send* _rightboundry __rightboundry)
     (progn
       (if __rightboundry (setq _rightboundry (car __rightboundry)))
       _rightboundry)))
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:IsPartofRouting
   (&optional __IsPartofRouting)
   (if __IsPartofRouting (setq _IsPartofRouting __IsPartofRouting)) _IsPartofRouting)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; ytthdmap_msgs/S_LINE _centerline
    (send _centerline :serialization-length)
    ;; ytthdmap_msgs/S_LINE _leftboundry
    (send _leftboundry :serialization-length)
    ;; ytthdmap_msgs/S_LINE _rightboundry
    (send _rightboundry :serialization-length)
    ;; float64 _width
    8
    ;; bool _IsPartofRouting
    1
    ;; int16 _type
    2
    ;; int16 _direction
    2
    ;; int16 _id
    2
    ;; float64 _length
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ytthdmap_msgs/S_LINE _centerline
       (send _centerline :serialize s)
     ;; ytthdmap_msgs/S_LINE _leftboundry
       (send _leftboundry :serialize s)
     ;; ytthdmap_msgs/S_LINE _rightboundry
       (send _rightboundry :serialize s)
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _IsPartofRouting
       (if _IsPartofRouting (write-byte -1 s) (write-byte 0 s))
     ;; int16 _type
       (write-word _type s)
     ;; int16 _direction
       (write-word _direction s)
     ;; int16 _id
       (write-word _id s)
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ytthdmap_msgs/S_LINE _centerline
     (send _centerline :deserialize buf ptr-) (incf ptr- (send _centerline :serialization-length))
   ;; ytthdmap_msgs/S_LINE _leftboundry
     (send _leftboundry :deserialize buf ptr-) (incf ptr- (send _leftboundry :serialization-length))
   ;; ytthdmap_msgs/S_LINE _rightboundry
     (send _rightboundry :deserialize buf ptr-) (incf ptr- (send _rightboundry :serialization-length))
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _IsPartofRouting
     (setq _IsPartofRouting (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _type
     (setq _type (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _direction
     (setq _direction (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ytthdmap_msgs::S_LANEINFO :md5sum-) "229d86e3f7c3e9edaf166d31399cc77c")
(setf (get ytthdmap_msgs::S_LANEINFO :datatype-) "ytthdmap_msgs/S_LANEINFO")
(setf (get ytthdmap_msgs::S_LANEINFO :definition-)
      "S_LINE centerline
S_LINE leftboundry
S_LINE rightboundry
float64 width
bool IsPartofRouting
int16 type
int16 direction
int16 id
float64 length
================================================================================
MSG: ytthdmap_msgs/S_LINE
int16 type
int16 linetype
S_POINT[100] point
int16 pointnum
================================================================================
MSG: ytthdmap_msgs/S_POINT
float64 x
float64 y
float64 z
")



(provide :ytthdmap_msgs/S_LANEINFO "229d86e3f7c3e9edaf166d31399cc77c")


