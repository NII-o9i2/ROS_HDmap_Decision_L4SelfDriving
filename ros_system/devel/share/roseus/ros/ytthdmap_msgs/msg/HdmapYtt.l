;; Auto-generated. Do not edit!


(when (boundp 'ytthdmap_msgs::HdmapYtt)
  (if (not (find-package "YTTHDMAP_MSGS"))
    (make-package "YTTHDMAP_MSGS"))
  (shadow 'HdmapYtt (find-package "YTTHDMAP_MSGS")))
(unless (find-package "YTTHDMAP_MSGS::HDMAPYTT")
  (make-package "YTTHDMAP_MSGS::HDMAPYTT"))

(in-package "ROS")
;;//! \htmlinclude HdmapYtt.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ytthdmap_msgs::HdmapYtt
  :super ros::object
  :slots (_header _time _isValidlane _positionstate _curlane _laneinfo _speedlim _stopline _istunnel _nextlaneCH ))

(defmethod ytthdmap_msgs::HdmapYtt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time __time) 0)
    ((:isValidlane __isValidlane) 0)
    ((:positionstate __positionstate) 0)
    ((:curlane __curlane) 0)
    ((:laneinfo __laneinfo) (let (r) (dotimes (i 5) (push (instance ytthdmap_msgs::S_LANEINFO :init) r)) r))
    ((:speedlim __speedlim) 0.0)
    ((:stopline __stopline) (instance ytthdmap_msgs::S_STOPLINE :init))
    ((:istunnel __istunnel) nil)
    ((:nextlaneCH __nextlaneCH) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time (round __time))
   (setq _isValidlane (round __isValidlane))
   (setq _positionstate (round __positionstate))
   (setq _curlane (round __curlane))
   (setq _laneinfo __laneinfo)
   (setq _speedlim (float __speedlim))
   (setq _stopline __stopline)
   (setq _istunnel __istunnel)
   (setq _nextlaneCH (round __nextlaneCH))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:isValidlane
   (&optional __isValidlane)
   (if __isValidlane (setq _isValidlane __isValidlane)) _isValidlane)
  (:positionstate
   (&optional __positionstate)
   (if __positionstate (setq _positionstate __positionstate)) _positionstate)
  (:curlane
   (&optional __curlane)
   (if __curlane (setq _curlane __curlane)) _curlane)
  (:laneinfo
   (&rest __laneinfo)
   (if (keywordp (car __laneinfo))
       (send* _laneinfo __laneinfo)
     (progn
       (if __laneinfo (setq _laneinfo (car __laneinfo)))
       _laneinfo)))
  (:speedlim
   (&optional __speedlim)
   (if __speedlim (setq _speedlim __speedlim)) _speedlim)
  (:stopline
   (&rest __stopline)
   (if (keywordp (car __stopline))
       (send* _stopline __stopline)
     (progn
       (if __stopline (setq _stopline (car __stopline)))
       _stopline)))
  (:istunnel
   (&optional __istunnel)
   (if __istunnel (setq _istunnel __istunnel)) _istunnel)
  (:nextlaneCH
   (&optional __nextlaneCH)
   (if __nextlaneCH (setq _nextlaneCH __nextlaneCH)) _nextlaneCH)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int16 _time
    2
    ;; int16 _isValidlane
    2
    ;; int16 _positionstate
    2
    ;; int16 _curlane
    2
    ;; ytthdmap_msgs/S_LANEINFO[5] _laneinfo
    (apply #'+ (send-all _laneinfo :serialization-length))
    ;; float32 _speedlim
    4
    ;; ytthdmap_msgs/S_STOPLINE _stopline
    (send _stopline :serialization-length)
    ;; bool _istunnel
    1
    ;; int16 _nextlaneCH
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int16 _time
       (write-word _time s)
     ;; int16 _isValidlane
       (write-word _isValidlane s)
     ;; int16 _positionstate
       (write-word _positionstate s)
     ;; int16 _curlane
       (write-word _curlane s)
     ;; ytthdmap_msgs/S_LANEINFO[5] _laneinfo
     (dolist (elem _laneinfo)
       (send elem :serialize s)
       )
     ;; float32 _speedlim
       (sys::poke _speedlim (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; ytthdmap_msgs/S_STOPLINE _stopline
       (send _stopline :serialize s)
     ;; bool _istunnel
       (if _istunnel (write-byte -1 s) (write-byte 0 s))
     ;; int16 _nextlaneCH
       (write-word _nextlaneCH s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int16 _time
     (setq _time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _isValidlane
     (setq _isValidlane (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _positionstate
     (setq _positionstate (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _curlane
     (setq _curlane (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; ytthdmap_msgs/S_LANEINFO[5] _laneinfo
   (dotimes (i 5)
     (send (elt _laneinfo i) :deserialize buf ptr-) (incf ptr- (send (elt _laneinfo i) :serialization-length))
     )
   ;; float32 _speedlim
     (setq _speedlim (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; ytthdmap_msgs/S_STOPLINE _stopline
     (send _stopline :deserialize buf ptr-) (incf ptr- (send _stopline :serialization-length))
   ;; bool _istunnel
     (setq _istunnel (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _nextlaneCH
     (setq _nextlaneCH (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get ytthdmap_msgs::HdmapYtt :md5sum-) "bae8b9094ef6eb009a2477dc42585c37")
(setf (get ytthdmap_msgs::HdmapYtt :datatype-) "ytthdmap_msgs/HdmapYtt")
(setf (get ytthdmap_msgs::HdmapYtt :definition-)
      "std_msgs/Header header
int16 time
int16 isValidlane
int16 positionstate
int16 curlane
S_LANEINFO[5] laneinfo 
float32 speedlim
S_STOPLINE stopline
bool istunnel
int16 nextlaneCH

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

================================================================================
MSG: ytthdmap_msgs/S_LANEINFO
S_LINE centerline
S_LINE leftboundry
S_LINE rightboundry
float32 width
bool IsPartofRouting
int16 type
int16 direction
int16 id
float32 length

================================================================================
MSG: ytthdmap_msgs/S_LINE
int16 type
int16[100] linetype
S_POINT[100] point
int16 pointnum

================================================================================
MSG: ytthdmap_msgs/S_POINT
float32 x
float32 y
float32 z

================================================================================
MSG: ytthdmap_msgs/S_STOPLINE
int16 offset
int16 latOffset
int16 type
int16 validnum
S_POINT[100] point

")



(provide :ytthdmap_msgs/HdmapYtt "bae8b9094ef6eb009a2477dc42585c37")


