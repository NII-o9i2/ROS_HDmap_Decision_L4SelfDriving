;; Auto-generated. Do not edit!


(when (boundp 'ytthdmap_msgs::S_LINE)
  (if (not (find-package "YTTHDMAP_MSGS"))
    (make-package "YTTHDMAP_MSGS"))
  (shadow 'S_LINE (find-package "YTTHDMAP_MSGS")))
(unless (find-package "YTTHDMAP_MSGS::S_LINE")
  (make-package "YTTHDMAP_MSGS::S_LINE"))

(in-package "ROS")
;;//! \htmlinclude S_LINE.msg.html


(defclass ytthdmap_msgs::S_LINE
  :super ros::object
  :slots (_type _linetype _point _pointnum ))

(defmethod ytthdmap_msgs::S_LINE
  (:init
   (&key
    ((:type __type) 0)
    ((:linetype __linetype) 0)
    ((:point __point) (let (r) (dotimes (i 100) (push (instance ytthdmap_msgs::S_POINT :init) r)) r))
    ((:pointnum __pointnum) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _linetype (round __linetype))
   (setq _point __point)
   (setq _pointnum (round __pointnum))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:linetype
   (&optional __linetype)
   (if __linetype (setq _linetype __linetype)) _linetype)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:pointnum
   (&optional __pointnum)
   (if __pointnum (setq _pointnum __pointnum)) _pointnum)
  (:serialization-length
   ()
   (+
    ;; int16 _type
    2
    ;; int16 _linetype
    2
    ;; ytthdmap_msgs/S_POINT[100] _point
    (apply #'+ (send-all _point :serialization-length))
    ;; int16 _pointnum
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _type
       (write-word _type s)
     ;; int16 _linetype
       (write-word _linetype s)
     ;; ytthdmap_msgs/S_POINT[100] _point
     (dolist (elem _point)
       (send elem :serialize s)
       )
     ;; int16 _pointnum
       (write-word _pointnum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _type
     (setq _type (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _linetype
     (setq _linetype (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; ytthdmap_msgs/S_POINT[100] _point
   (dotimes (i 100)
     (send (elt _point i) :deserialize buf ptr-) (incf ptr- (send (elt _point i) :serialization-length))
     )
   ;; int16 _pointnum
     (setq _pointnum (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get ytthdmap_msgs::S_LINE :md5sum-) "d3328978b048138c7828f4b617f1ca2a")
(setf (get ytthdmap_msgs::S_LINE :datatype-) "ytthdmap_msgs/S_LINE")
(setf (get ytthdmap_msgs::S_LINE :definition-)
      "int16 type
int16 linetype
S_POINT[100] point
int16 pointnum
================================================================================
MSG: ytthdmap_msgs/S_POINT
float64 x
float64 y
float64 z
")



(provide :ytthdmap_msgs/S_LINE "d3328978b048138c7828f4b617f1ca2a")


