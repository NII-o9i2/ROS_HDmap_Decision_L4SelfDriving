;; Auto-generated. Do not edit!


(when (boundp 'ytthdmap_msgs::S_STOPLINE)
  (if (not (find-package "YTTHDMAP_MSGS"))
    (make-package "YTTHDMAP_MSGS"))
  (shadow 'S_STOPLINE (find-package "YTTHDMAP_MSGS")))
(unless (find-package "YTTHDMAP_MSGS::S_STOPLINE")
  (make-package "YTTHDMAP_MSGS::S_STOPLINE"))

(in-package "ROS")
;;//! \htmlinclude S_STOPLINE.msg.html


(defclass ytthdmap_msgs::S_STOPLINE
  :super ros::object
  :slots (_offset _latOffset _type _validnum _point ))

(defmethod ytthdmap_msgs::S_STOPLINE
  (:init
   (&key
    ((:offset __offset) 0)
    ((:latOffset __latOffset) 0)
    ((:type __type) 0)
    ((:validnum __validnum) 0)
    ((:point __point) (let (r) (dotimes (i 100) (push (instance ytthdmap_msgs::S_POINT :init) r)) r))
    )
   (send-super :init)
   (setq _offset (round __offset))
   (setq _latOffset (round __latOffset))
   (setq _type (round __type))
   (setq _validnum (round __validnum))
   (setq _point __point)
   self)
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:latOffset
   (&optional __latOffset)
   (if __latOffset (setq _latOffset __latOffset)) _latOffset)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:validnum
   (&optional __validnum)
   (if __validnum (setq _validnum __validnum)) _validnum)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:serialization-length
   ()
   (+
    ;; int16 _offset
    2
    ;; int16 _latOffset
    2
    ;; int16 _type
    2
    ;; int16 _validnum
    2
    ;; ytthdmap_msgs/S_POINT[100] _point
    (apply #'+ (send-all _point :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _offset
       (write-word _offset s)
     ;; int16 _latOffset
       (write-word _latOffset s)
     ;; int16 _type
       (write-word _type s)
     ;; int16 _validnum
       (write-word _validnum s)
     ;; ytthdmap_msgs/S_POINT[100] _point
     (dolist (elem _point)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _offset
     (setq _offset (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _latOffset
     (setq _latOffset (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _type
     (setq _type (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _validnum
     (setq _validnum (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; ytthdmap_msgs/S_POINT[100] _point
   (dotimes (i 100)
     (send (elt _point i) :deserialize buf ptr-) (incf ptr- (send (elt _point i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get ytthdmap_msgs::S_STOPLINE :md5sum-) "05414b44a3589a776a4ff3be4a793437")
(setf (get ytthdmap_msgs::S_STOPLINE :datatype-) "ytthdmap_msgs/S_STOPLINE")
(setf (get ytthdmap_msgs::S_STOPLINE :definition-)
      "int16 offset
int16 latOffset
int16 type
int16 validnum
S_POINT[100] point

================================================================================
MSG: ytthdmap_msgs/S_POINT
float32 x
float32 y
float32 z

")



(provide :ytthdmap_msgs/S_STOPLINE "05414b44a3589a776a4ff3be4a793437")


