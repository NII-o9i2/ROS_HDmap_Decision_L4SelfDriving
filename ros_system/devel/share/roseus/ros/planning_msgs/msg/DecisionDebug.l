;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::DecisionDebug)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'DecisionDebug (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::DECISIONDEBUG")
  (make-package "PLANNING_MSGS::DECISIONDEBUG"))

(in-package "ROS")
;;//! \htmlinclude DecisionDebug.msg.html


(defclass planning_msgs::DecisionDebug
  :super ros::object
  :slots (_obstacle _lanechange_id _lane_id _ego_cost _onlane_obs_num _lanechange_process ))

(defmethod planning_msgs::DecisionDebug
  (:init
   (&key
    ((:obstacle __obstacle) (let (r) (dotimes (i 50) (push (instance planning_msgs::ObstacleIn :init) r)) r))
    ((:lanechange_id __lanechange_id) 0)
    ((:lane_id __lane_id) 0)
    ((:ego_cost __ego_cost) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:onlane_obs_num __onlane_obs_num) (make-array 3 :initial-element 0 :element-type :integer))
    ((:lanechange_process __lanechange_process) 0)
    )
   (send-super :init)
   (setq _obstacle __obstacle)
   (setq _lanechange_id (round __lanechange_id))
   (setq _lane_id (round __lane_id))
   (setq _ego_cost __ego_cost)
   (setq _onlane_obs_num __onlane_obs_num)
   (setq _lanechange_process (round __lanechange_process))
   self)
  (:obstacle
   (&rest __obstacle)
   (if (keywordp (car __obstacle))
       (send* _obstacle __obstacle)
     (progn
       (if __obstacle (setq _obstacle (car __obstacle)))
       _obstacle)))
  (:lanechange_id
   (&optional __lanechange_id)
   (if __lanechange_id (setq _lanechange_id __lanechange_id)) _lanechange_id)
  (:lane_id
   (&optional __lane_id)
   (if __lane_id (setq _lane_id __lane_id)) _lane_id)
  (:ego_cost
   (&optional __ego_cost)
   (if __ego_cost (setq _ego_cost __ego_cost)) _ego_cost)
  (:onlane_obs_num
   (&optional __onlane_obs_num)
   (if __onlane_obs_num (setq _onlane_obs_num __onlane_obs_num)) _onlane_obs_num)
  (:lanechange_process
   (&optional __lanechange_process)
   (if __lanechange_process (setq _lanechange_process __lanechange_process)) _lanechange_process)
  (:serialization-length
   ()
   (+
    ;; planning_msgs/ObstacleIn[50] _obstacle
    (apply #'+ (send-all _obstacle :serialization-length))
    ;; int8 _lanechange_id
    1
    ;; int8 _lane_id
    1
    ;; float32[3] _ego_cost
    (* 4    3)
    ;; int8[3] _onlane_obs_num
    (* 1    3)
    ;; int8 _lanechange_process
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; planning_msgs/ObstacleIn[50] _obstacle
     (dolist (elem _obstacle)
       (send elem :serialize s)
       )
     ;; int8 _lanechange_id
       (write-byte _lanechange_id s)
     ;; int8 _lane_id
       (write-byte _lane_id s)
     ;; float32[3] _ego_cost
     (dotimes (i 3)
       (sys::poke (elt _ego_cost i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int8[3] _onlane_obs_num
     (dotimes (i 3)
       (write-byte (elt _onlane_obs_num i) s)
       )
     ;; int8 _lanechange_process
       (write-byte _lanechange_process s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; planning_msgs/ObstacleIn[50] _obstacle
   (dotimes (i 50)
     (send (elt _obstacle i) :deserialize buf ptr-) (incf ptr- (send (elt _obstacle i) :serialization-length))
     )
   ;; int8 _lanechange_id
     (setq _lanechange_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _lanechange_id 127) (setq _lanechange_id (- _lanechange_id 256)))
   ;; int8 _lane_id
     (setq _lane_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _lane_id 127) (setq _lane_id (- _lane_id 256)))
   ;; float32[3] _ego_cost
   (dotimes (i (length _ego_cost))
     (setf (elt _ego_cost i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; int8[3] _onlane_obs_num
   (dotimes (i (length _onlane_obs_num))
     (setf (elt _onlane_obs_num i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _onlane_obs_num i) 127) (setf (elt _onlane_obs_num i) (- (elt _onlane_obs_num i) 256)))
     )
   ;; int8 _lanechange_process
     (setq _lanechange_process (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _lanechange_process 127) (setq _lanechange_process (- _lanechange_process 256)))
   ;;
   self)
  )

(setf (get planning_msgs::DecisionDebug :md5sum-) "da2ec6dc8e24bc6e33c0fa04fe1dfa3b")
(setf (get planning_msgs::DecisionDebug :datatype-) "planning_msgs/DecisionDebug")
(setf (get planning_msgs::DecisionDebug :definition-)
      "  ObstacleIn[50] obstacle
  int8 lanechange_id
  int8 lane_id
  float32[3] ego_cost
  int8[3] onlane_obs_num
  int8 lanechange_process

================================================================================
MSG: planning_msgs/ObstacleIn
int8 id
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



(provide :planning_msgs/DecisionDebug "da2ec6dc8e24bc6e33c0fa04fe1dfa3b")


