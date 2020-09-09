;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::ADCTrajectory)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'ADCTrajectory (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::ADCTRAJECTORY")
  (make-package "PLANNING_MSGS::ADCTRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude ADCTrajectory.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*GEAR_NEUTRAL*" (find-package "PLANNING_MSGS::ADCTRAJECTORY"))
(shadow '*GEAR_NEUTRAL* (find-package "PLANNING_MSGS::ADCTRAJECTORY"))
(defconstant planning_msgs::ADCTrajectory::*GEAR_NEUTRAL* 0)
(intern "*GEAR_DRIVE*" (find-package "PLANNING_MSGS::ADCTRAJECTORY"))
(shadow '*GEAR_DRIVE* (find-package "PLANNING_MSGS::ADCTRAJECTORY"))
(defconstant planning_msgs::ADCTrajectory::*GEAR_DRIVE* 1)
(intern "*GEAR_REVERSE*" (find-package "PLANNING_MSGS::ADCTRAJECTORY"))
(shadow '*GEAR_REVERSE* (find-package "PLANNING_MSGS::ADCTRAJECTORY"))
(defconstant planning_msgs::ADCTrajectory::*GEAR_REVERSE* 2)
(intern "*GEAR_PARKING*" (find-package "PLANNING_MSGS::ADCTRAJECTORY"))
(shadow '*GEAR_PARKING* (find-package "PLANNING_MSGS::ADCTRAJECTORY"))
(defconstant planning_msgs::ADCTrajectory::*GEAR_PARKING* 3)
(intern "*GEAR_INVALID*" (find-package "PLANNING_MSGS::ADCTRAJECTORY"))
(shadow '*GEAR_INVALID* (find-package "PLANNING_MSGS::ADCTRAJECTORY"))
(defconstant planning_msgs::ADCTrajectory::*GEAR_INVALID* 4)
(intern "*TURN_NONE*" (find-package "PLANNING_MSGS::ADCTRAJECTORY"))
(shadow '*TURN_NONE* (find-package "PLANNING_MSGS::ADCTRAJECTORY"))
(defconstant planning_msgs::ADCTrajectory::*TURN_NONE* 0)
(intern "*TURN_LEFT*" (find-package "PLANNING_MSGS::ADCTRAJECTORY"))
(shadow '*TURN_LEFT* (find-package "PLANNING_MSGS::ADCTRAJECTORY"))
(defconstant planning_msgs::ADCTrajectory::*TURN_LEFT* 1)
(intern "*TURN_RIGHT*" (find-package "PLANNING_MSGS::ADCTRAJECTORY"))
(shadow '*TURN_RIGHT* (find-package "PLANNING_MSGS::ADCTRAJECTORY"))
(defconstant planning_msgs::ADCTrajectory::*TURN_RIGHT* 2)
(defclass planning_msgs::ADCTrajectory
  :super ros::object
  :slots (_header _path_point _dis_to_end _dis_to_cip _estop _is_replan _gear_position _turn_signal _latency_stats _predict_debug ))

(defmethod planning_msgs::ADCTrajectory
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:path_point __path_point) (let (r) (dotimes (i 0) (push (instance planning_msgs::PathPoint :init) r)) r))
    ((:dis_to_end __dis_to_end) 0.0)
    ((:dis_to_cip __dis_to_cip) 0.0)
    ((:estop __estop) nil)
    ((:is_replan __is_replan) nil)
    ((:gear_position __gear_position) 0)
    ((:turn_signal __turn_signal) 0)
    ((:latency_stats __latency_stats) (instance planning_msgs::LatencyStats :init))
    ((:predict_debug __predict_debug) (instance planning_msgs::PredictionDebug :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _path_point __path_point)
   (setq _dis_to_end (float __dis_to_end))
   (setq _dis_to_cip (float __dis_to_cip))
   (setq _estop __estop)
   (setq _is_replan __is_replan)
   (setq _gear_position (round __gear_position))
   (setq _turn_signal (round __turn_signal))
   (setq _latency_stats __latency_stats)
   (setq _predict_debug __predict_debug)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:path_point
   (&rest __path_point)
   (if (keywordp (car __path_point))
       (send* _path_point __path_point)
     (progn
       (if __path_point (setq _path_point (car __path_point)))
       _path_point)))
  (:dis_to_end
   (&optional __dis_to_end)
   (if __dis_to_end (setq _dis_to_end __dis_to_end)) _dis_to_end)
  (:dis_to_cip
   (&optional __dis_to_cip)
   (if __dis_to_cip (setq _dis_to_cip __dis_to_cip)) _dis_to_cip)
  (:estop
   (&optional __estop)
   (if __estop (setq _estop __estop)) _estop)
  (:is_replan
   (&optional __is_replan)
   (if __is_replan (setq _is_replan __is_replan)) _is_replan)
  (:gear_position
   (&optional __gear_position)
   (if __gear_position (setq _gear_position __gear_position)) _gear_position)
  (:turn_signal
   (&optional __turn_signal)
   (if __turn_signal (setq _turn_signal __turn_signal)) _turn_signal)
  (:latency_stats
   (&rest __latency_stats)
   (if (keywordp (car __latency_stats))
       (send* _latency_stats __latency_stats)
     (progn
       (if __latency_stats (setq _latency_stats (car __latency_stats)))
       _latency_stats)))
  (:predict_debug
   (&rest __predict_debug)
   (if (keywordp (car __predict_debug))
       (send* _predict_debug __predict_debug)
     (progn
       (if __predict_debug (setq _predict_debug (car __predict_debug)))
       _predict_debug)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; planning_msgs/PathPoint[] _path_point
    (apply #'+ (send-all _path_point :serialization-length)) 4
    ;; float32 _dis_to_end
    4
    ;; float32 _dis_to_cip
    4
    ;; bool _estop
    1
    ;; bool _is_replan
    1
    ;; uint8 _gear_position
    1
    ;; uint8 _turn_signal
    1
    ;; planning_msgs/LatencyStats _latency_stats
    (send _latency_stats :serialization-length)
    ;; planning_msgs/PredictionDebug _predict_debug
    (send _predict_debug :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; planning_msgs/PathPoint[] _path_point
     (write-long (length _path_point) s)
     (dolist (elem _path_point)
       (send elem :serialize s)
       )
     ;; float32 _dis_to_end
       (sys::poke _dis_to_end (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dis_to_cip
       (sys::poke _dis_to_cip (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _estop
       (if _estop (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_replan
       (if _is_replan (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _gear_position
       (write-byte _gear_position s)
     ;; uint8 _turn_signal
       (write-byte _turn_signal s)
     ;; planning_msgs/LatencyStats _latency_stats
       (send _latency_stats :serialize s)
     ;; planning_msgs/PredictionDebug _predict_debug
       (send _predict_debug :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; planning_msgs/PathPoint[] _path_point
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path_point (let (r) (dotimes (i n) (push (instance planning_msgs::PathPoint :init) r)) r))
     (dolist (elem- _path_point)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _dis_to_end
     (setq _dis_to_end (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dis_to_cip
     (setq _dis_to_cip (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _estop
     (setq _estop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_replan
     (setq _is_replan (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _gear_position
     (setq _gear_position (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _turn_signal
     (setq _turn_signal (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; planning_msgs/LatencyStats _latency_stats
     (send _latency_stats :deserialize buf ptr-) (incf ptr- (send _latency_stats :serialization-length))
   ;; planning_msgs/PredictionDebug _predict_debug
     (send _predict_debug :deserialize buf ptr-) (incf ptr- (send _predict_debug :serialization-length))
   ;;
   self)
  )

(setf (get planning_msgs::ADCTrajectory :md5sum-) "a6c0f4e599aa65a91923e94a4414cf84")
(setf (get planning_msgs::ADCTrajectory :datatype-) "planning_msgs/ADCTrajectory")
(setf (get planning_msgs::ADCTrajectory :definition-)
      "Header header
PathPoint[] path_point
float32 dis_to_end
float32 dis_to_cip
bool estop
bool is_replan
uint8 gear_position
uint8 turn_signal
LatencyStats latency_stats
PredictionDebug predict_debug

# Gear Position
uint8 GEAR_NEUTRAL=0
uint8 GEAR_DRIVE=1
uint8 GEAR_REVERSE=2
uint8 GEAR_PARKING=3
uint8 GEAR_INVALID=4

# turn signal state
uint8 TURN_NONE=0
uint8 TURN_LEFT=1
uint8 TURN_RIGHT=2

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
MSG: planning_msgs/PathPoint
float64 time
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

================================================================================
MSG: planning_msgs/LatencyStats
float64 total_time_ms
float64 init_frame_time_ms

================================================================================
MSG: planning_msgs/PredictionDebug
Propt[32] propt
ObstaclePred[64] obstacle_pred
GlobalObstacle[32] obstacle_glbl

================================================================================
MSG: planning_msgs/Propt
float32 frenet_l
float32 frenet_s
float32 angle_diff

================================================================================
MSG: planning_msgs/ObstaclePred
float32[10] prediction_x
float32[10] prediction_y
uint32 predict_method
bool is_valid

================================================================================
MSG: planning_msgs/GlobalObstacle
float32 enu_x
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



(provide :planning_msgs/ADCTrajectory "a6c0f4e599aa65a91923e94a4414cf84")


