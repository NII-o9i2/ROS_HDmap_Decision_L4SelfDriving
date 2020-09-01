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
  :slots (_header _time _isvalidlane _curlane _laneinfo _speedlim _stationlocation _stopline _istunnel _nextlaneCH _traffic ))

(defmethod ytthdmap_msgs::HdmapYtt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time __time) 0)
    ((:isvalidlane __isvalidlane) 0)
    ((:curlane __curlane) 0)
    ((:laneinfo __laneinfo) (instance ytthdmap_msgs::S_LANEINFO :init))
    ((:speedlim __speedlim) 0.0)
    ((:stationlocation __stationlocation) (instance ytthdmap_msgs::S_STATIONLOCATION :init))
    ((:stopline __stopline) (instance ytthdmap_msgs::S_STOPLINE :init))
    ((:istunnel __istunnel) nil)
    ((:nextlaneCH __nextlaneCH) 0)
    ((:traffic __traffic) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time (round __time))
   (setq _isvalidlane (round __isvalidlane))
   (setq _curlane (round __curlane))
   (setq _laneinfo __laneinfo)
   (setq _speedlim (float __speedlim))
   (setq _stationlocation __stationlocation)
   (setq _stopline __stopline)
   (setq _istunnel __istunnel)
   (setq _nextlaneCH (round __nextlaneCH))
   (setq _traffic (round __traffic))
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
  (:isvalidlane
   (&optional __isvalidlane)
   (if __isvalidlane (setq _isvalidlane __isvalidlane)) _isvalidlane)
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
  (:stationlocation
   (&rest __stationlocation)
   (if (keywordp (car __stationlocation))
       (send* _stationlocation __stationlocation)
     (progn
       (if __stationlocation (setq _stationlocation (car __stationlocation)))
       _stationlocation)))
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
  (:traffic
   (&optional __traffic)
   (if __traffic (setq _traffic __traffic)) _traffic)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int16 _time
    2
    ;; int16 _isvalidlane
    2
    ;; int16 _curlane
    2
    ;; ytthdmap_msgs/S_LANEINFO _laneinfo
    (send _laneinfo :serialization-length)
    ;; float32 _speedlim
    4
    ;; ytthdmap_msgs/S_STATIONLOCATION _stationlocation
    (send _stationlocation :serialization-length)
    ;; ytthdmap_msgs/S_STOPLINE _stopline
    (send _stopline :serialization-length)
    ;; bool _istunnel
    1
    ;; int16 _nextlaneCH
    2
    ;; int16 _traffic
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
     ;; int16 _isvalidlane
       (write-word _isvalidlane s)
     ;; int16 _curlane
       (write-word _curlane s)
     ;; ytthdmap_msgs/S_LANEINFO _laneinfo
       (send _laneinfo :serialize s)
     ;; float32 _speedlim
       (sys::poke _speedlim (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; ytthdmap_msgs/S_STATIONLOCATION _stationlocation
       (send _stationlocation :serialize s)
     ;; ytthdmap_msgs/S_STOPLINE _stopline
       (send _stopline :serialize s)
     ;; bool _istunnel
       (if _istunnel (write-byte -1 s) (write-byte 0 s))
     ;; int16 _nextlaneCH
       (write-word _nextlaneCH s)
     ;; int16 _traffic
       (write-word _traffic s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int16 _time
     (setq _time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _isvalidlane
     (setq _isvalidlane (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _curlane
     (setq _curlane (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; ytthdmap_msgs/S_LANEINFO _laneinfo
     (send _laneinfo :deserialize buf ptr-) (incf ptr- (send _laneinfo :serialization-length))
   ;; float32 _speedlim
     (setq _speedlim (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; ytthdmap_msgs/S_STATIONLOCATION _stationlocation
     (send _stationlocation :deserialize buf ptr-) (incf ptr- (send _stationlocation :serialization-length))
   ;; ytthdmap_msgs/S_STOPLINE _stopline
     (send _stopline :deserialize buf ptr-) (incf ptr- (send _stopline :serialization-length))
   ;; bool _istunnel
     (setq _istunnel (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _nextlaneCH
     (setq _nextlaneCH (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _traffic
     (setq _traffic (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get ytthdmap_msgs::HdmapYtt :md5sum-) "06136882eb0000675a95c6a59756dfc6")
(setf (get ytthdmap_msgs::HdmapYtt :datatype-) "ytthdmap_msgs/HdmapYtt")
(setf (get ytthdmap_msgs::HdmapYtt :definition-)
      "std_msgs/Header header
int16 time
int16 isvalidlane
int16 curlane
S_LANEINFO laneinfo 
float32 speedlim
S_STATIONLOCATION stationlocation
S_STOPLINE stopline
bool istunnel
int16 nextlaneCH
int16 traffic
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
================================================================================
MSG: ytthdmap_msgs/S_STATIONLOCATION
float64 x
float64 y
float64 z
================================================================================
MSG: ytthdmap_msgs/S_STOPLINE
int16 offset
int16 latOffset
int16 type
int16 validnum
S_POINT[100] point
")



(provide :ytthdmap_msgs/HdmapYtt "06136882eb0000675a95c6a59756dfc6")


