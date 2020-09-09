;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::PlanningDebug)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'PlanningDebug (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::PLANNINGDEBUG")
  (make-package "PLANNING_MSGS::PLANNINGDEBUG"))

(in-package "ROS")
;;//! \htmlinclude PlanningDebug.msg.html


(defclass planning_msgs::PlanningDebug
  :super ros::object
  :slots (_lon_objective_cost _lon_jerk_cost _lon_collision_cost _lat_offset_cost _centripental_acc_cost _lat_comfort_cost _constraint_check_failure_count _collision_failure_count _distance_planning _id_shown _flag_path_time_obstacle_sample_shown _max_t _max_d _stitch_trajectory_x _stitch_trajectory_y _stitch_trajectory_z _stitch_trajectory_theta _stitch_trajectory_kappa _stitch_trajectory_v _stitch_trajectory_a _stitch_trajectory_relative_time _stitch_debug _decision_debug ))

(defmethod planning_msgs::PlanningDebug
  (:init
   (&key
    ((:lon_objective_cost __lon_objective_cost) 0.0)
    ((:lon_jerk_cost __lon_jerk_cost) 0.0)
    ((:lon_collision_cost __lon_collision_cost) 0.0)
    ((:lat_offset_cost __lat_offset_cost) 0.0)
    ((:centripental_acc_cost __centripental_acc_cost) 0.0)
    ((:lat_comfort_cost __lat_comfort_cost) 0.0)
    ((:constraint_check_failure_count __constraint_check_failure_count) 0.0)
    ((:collision_failure_count __collision_failure_count) 0.0)
    ((:distance_planning __distance_planning) 0.0)
    ((:id_shown __id_shown) 0)
    ((:flag_path_time_obstacle_sample_shown __flag_path_time_obstacle_sample_shown) 0)
    ((:max_t __max_t) 0.0)
    ((:max_d __max_d) 0.0)
    ((:stitch_trajectory_x __stitch_trajectory_x) 0.0)
    ((:stitch_trajectory_y __stitch_trajectory_y) 0.0)
    ((:stitch_trajectory_z __stitch_trajectory_z) 0.0)
    ((:stitch_trajectory_theta __stitch_trajectory_theta) 0.0)
    ((:stitch_trajectory_kappa __stitch_trajectory_kappa) 0.0)
    ((:stitch_trajectory_v __stitch_trajectory_v) 0.0)
    ((:stitch_trajectory_a __stitch_trajectory_a) 0.0)
    ((:stitch_trajectory_relative_time __stitch_trajectory_relative_time) 0.0)
    ((:stitch_debug __stitch_debug) (instance planning_msgs::StitchDebug :init))
    ((:decision_debug __decision_debug) (instance planning_msgs::DecisionDebug :init))
    )
   (send-super :init)
   (setq _lon_objective_cost (float __lon_objective_cost))
   (setq _lon_jerk_cost (float __lon_jerk_cost))
   (setq _lon_collision_cost (float __lon_collision_cost))
   (setq _lat_offset_cost (float __lat_offset_cost))
   (setq _centripental_acc_cost (float __centripental_acc_cost))
   (setq _lat_comfort_cost (float __lat_comfort_cost))
   (setq _constraint_check_failure_count (float __constraint_check_failure_count))
   (setq _collision_failure_count (float __collision_failure_count))
   (setq _distance_planning (float __distance_planning))
   (setq _id_shown (round __id_shown))
   (setq _flag_path_time_obstacle_sample_shown (round __flag_path_time_obstacle_sample_shown))
   (setq _max_t (float __max_t))
   (setq _max_d (float __max_d))
   (setq _stitch_trajectory_x (float __stitch_trajectory_x))
   (setq _stitch_trajectory_y (float __stitch_trajectory_y))
   (setq _stitch_trajectory_z (float __stitch_trajectory_z))
   (setq _stitch_trajectory_theta (float __stitch_trajectory_theta))
   (setq _stitch_trajectory_kappa (float __stitch_trajectory_kappa))
   (setq _stitch_trajectory_v (float __stitch_trajectory_v))
   (setq _stitch_trajectory_a (float __stitch_trajectory_a))
   (setq _stitch_trajectory_relative_time (float __stitch_trajectory_relative_time))
   (setq _stitch_debug __stitch_debug)
   (setq _decision_debug __decision_debug)
   self)
  (:lon_objective_cost
   (&optional __lon_objective_cost)
   (if __lon_objective_cost (setq _lon_objective_cost __lon_objective_cost)) _lon_objective_cost)
  (:lon_jerk_cost
   (&optional __lon_jerk_cost)
   (if __lon_jerk_cost (setq _lon_jerk_cost __lon_jerk_cost)) _lon_jerk_cost)
  (:lon_collision_cost
   (&optional __lon_collision_cost)
   (if __lon_collision_cost (setq _lon_collision_cost __lon_collision_cost)) _lon_collision_cost)
  (:lat_offset_cost
   (&optional __lat_offset_cost)
   (if __lat_offset_cost (setq _lat_offset_cost __lat_offset_cost)) _lat_offset_cost)
  (:centripental_acc_cost
   (&optional __centripental_acc_cost)
   (if __centripental_acc_cost (setq _centripental_acc_cost __centripental_acc_cost)) _centripental_acc_cost)
  (:lat_comfort_cost
   (&optional __lat_comfort_cost)
   (if __lat_comfort_cost (setq _lat_comfort_cost __lat_comfort_cost)) _lat_comfort_cost)
  (:constraint_check_failure_count
   (&optional __constraint_check_failure_count)
   (if __constraint_check_failure_count (setq _constraint_check_failure_count __constraint_check_failure_count)) _constraint_check_failure_count)
  (:collision_failure_count
   (&optional __collision_failure_count)
   (if __collision_failure_count (setq _collision_failure_count __collision_failure_count)) _collision_failure_count)
  (:distance_planning
   (&optional __distance_planning)
   (if __distance_planning (setq _distance_planning __distance_planning)) _distance_planning)
  (:id_shown
   (&optional __id_shown)
   (if __id_shown (setq _id_shown __id_shown)) _id_shown)
  (:flag_path_time_obstacle_sample_shown
   (&optional __flag_path_time_obstacle_sample_shown)
   (if __flag_path_time_obstacle_sample_shown (setq _flag_path_time_obstacle_sample_shown __flag_path_time_obstacle_sample_shown)) _flag_path_time_obstacle_sample_shown)
  (:max_t
   (&optional __max_t)
   (if __max_t (setq _max_t __max_t)) _max_t)
  (:max_d
   (&optional __max_d)
   (if __max_d (setq _max_d __max_d)) _max_d)
  (:stitch_trajectory_x
   (&optional __stitch_trajectory_x)
   (if __stitch_trajectory_x (setq _stitch_trajectory_x __stitch_trajectory_x)) _stitch_trajectory_x)
  (:stitch_trajectory_y
   (&optional __stitch_trajectory_y)
   (if __stitch_trajectory_y (setq _stitch_trajectory_y __stitch_trajectory_y)) _stitch_trajectory_y)
  (:stitch_trajectory_z
   (&optional __stitch_trajectory_z)
   (if __stitch_trajectory_z (setq _stitch_trajectory_z __stitch_trajectory_z)) _stitch_trajectory_z)
  (:stitch_trajectory_theta
   (&optional __stitch_trajectory_theta)
   (if __stitch_trajectory_theta (setq _stitch_trajectory_theta __stitch_trajectory_theta)) _stitch_trajectory_theta)
  (:stitch_trajectory_kappa
   (&optional __stitch_trajectory_kappa)
   (if __stitch_trajectory_kappa (setq _stitch_trajectory_kappa __stitch_trajectory_kappa)) _stitch_trajectory_kappa)
  (:stitch_trajectory_v
   (&optional __stitch_trajectory_v)
   (if __stitch_trajectory_v (setq _stitch_trajectory_v __stitch_trajectory_v)) _stitch_trajectory_v)
  (:stitch_trajectory_a
   (&optional __stitch_trajectory_a)
   (if __stitch_trajectory_a (setq _stitch_trajectory_a __stitch_trajectory_a)) _stitch_trajectory_a)
  (:stitch_trajectory_relative_time
   (&optional __stitch_trajectory_relative_time)
   (if __stitch_trajectory_relative_time (setq _stitch_trajectory_relative_time __stitch_trajectory_relative_time)) _stitch_trajectory_relative_time)
  (:stitch_debug
   (&rest __stitch_debug)
   (if (keywordp (car __stitch_debug))
       (send* _stitch_debug __stitch_debug)
     (progn
       (if __stitch_debug (setq _stitch_debug (car __stitch_debug)))
       _stitch_debug)))
  (:decision_debug
   (&rest __decision_debug)
   (if (keywordp (car __decision_debug))
       (send* _decision_debug __decision_debug)
     (progn
       (if __decision_debug (setq _decision_debug (car __decision_debug)))
       _decision_debug)))
  (:serialization-length
   ()
   (+
    ;; float32 _lon_objective_cost
    4
    ;; float32 _lon_jerk_cost
    4
    ;; float32 _lon_collision_cost
    4
    ;; float32 _lat_offset_cost
    4
    ;; float32 _centripental_acc_cost
    4
    ;; float32 _lat_comfort_cost
    4
    ;; float32 _constraint_check_failure_count
    4
    ;; float32 _collision_failure_count
    4
    ;; float32 _distance_planning
    4
    ;; uint32 _id_shown
    4
    ;; uint32 _flag_path_time_obstacle_sample_shown
    4
    ;; float32 _max_t
    4
    ;; float32 _max_d
    4
    ;; float32 _stitch_trajectory_x
    4
    ;; float32 _stitch_trajectory_y
    4
    ;; float32 _stitch_trajectory_z
    4
    ;; float32 _stitch_trajectory_theta
    4
    ;; float32 _stitch_trajectory_kappa
    4
    ;; float32 _stitch_trajectory_v
    4
    ;; float32 _stitch_trajectory_a
    4
    ;; float32 _stitch_trajectory_relative_time
    4
    ;; planning_msgs/StitchDebug _stitch_debug
    (send _stitch_debug :serialization-length)
    ;; planning_msgs/DecisionDebug _decision_debug
    (send _decision_debug :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _lon_objective_cost
       (sys::poke _lon_objective_cost (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lon_jerk_cost
       (sys::poke _lon_jerk_cost (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lon_collision_cost
       (sys::poke _lon_collision_cost (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lat_offset_cost
       (sys::poke _lat_offset_cost (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _centripental_acc_cost
       (sys::poke _centripental_acc_cost (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lat_comfort_cost
       (sys::poke _lat_comfort_cost (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _constraint_check_failure_count
       (sys::poke _constraint_check_failure_count (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _collision_failure_count
       (sys::poke _collision_failure_count (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance_planning
       (sys::poke _distance_planning (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _id_shown
       (write-long _id_shown s)
     ;; uint32 _flag_path_time_obstacle_sample_shown
       (write-long _flag_path_time_obstacle_sample_shown s)
     ;; float32 _max_t
       (sys::poke _max_t (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_d
       (sys::poke _max_d (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _stitch_trajectory_x
       (sys::poke _stitch_trajectory_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _stitch_trajectory_y
       (sys::poke _stitch_trajectory_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _stitch_trajectory_z
       (sys::poke _stitch_trajectory_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _stitch_trajectory_theta
       (sys::poke _stitch_trajectory_theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _stitch_trajectory_kappa
       (sys::poke _stitch_trajectory_kappa (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _stitch_trajectory_v
       (sys::poke _stitch_trajectory_v (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _stitch_trajectory_a
       (sys::poke _stitch_trajectory_a (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _stitch_trajectory_relative_time
       (sys::poke _stitch_trajectory_relative_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; planning_msgs/StitchDebug _stitch_debug
       (send _stitch_debug :serialize s)
     ;; planning_msgs/DecisionDebug _decision_debug
       (send _decision_debug :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _lon_objective_cost
     (setq _lon_objective_cost (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lon_jerk_cost
     (setq _lon_jerk_cost (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lon_collision_cost
     (setq _lon_collision_cost (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lat_offset_cost
     (setq _lat_offset_cost (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _centripental_acc_cost
     (setq _centripental_acc_cost (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lat_comfort_cost
     (setq _lat_comfort_cost (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _constraint_check_failure_count
     (setq _constraint_check_failure_count (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _collision_failure_count
     (setq _collision_failure_count (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance_planning
     (setq _distance_planning (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _id_shown
     (setq _id_shown (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _flag_path_time_obstacle_sample_shown
     (setq _flag_path_time_obstacle_sample_shown (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _max_t
     (setq _max_t (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_d
     (setq _max_d (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _stitch_trajectory_x
     (setq _stitch_trajectory_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _stitch_trajectory_y
     (setq _stitch_trajectory_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _stitch_trajectory_z
     (setq _stitch_trajectory_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _stitch_trajectory_theta
     (setq _stitch_trajectory_theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _stitch_trajectory_kappa
     (setq _stitch_trajectory_kappa (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _stitch_trajectory_v
     (setq _stitch_trajectory_v (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _stitch_trajectory_a
     (setq _stitch_trajectory_a (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _stitch_trajectory_relative_time
     (setq _stitch_trajectory_relative_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; planning_msgs/StitchDebug _stitch_debug
     (send _stitch_debug :deserialize buf ptr-) (incf ptr- (send _stitch_debug :serialization-length))
   ;; planning_msgs/DecisionDebug _decision_debug
     (send _decision_debug :deserialize buf ptr-) (incf ptr- (send _decision_debug :serialization-length))
   ;;
   self)
  )

(setf (get planning_msgs::PlanningDebug :md5sum-) "423e0926173cb1c4e4e0d32a68ecf81f")
(setf (get planning_msgs::PlanningDebug :datatype-) "planning_msgs/PlanningDebug")
(setf (get planning_msgs::PlanningDebug :definition-)
      "float32 lon_objective_cost
float32 lon_jerk_cost
float32 lon_collision_cost
float32 lat_offset_cost
float32 centripental_acc_cost
float32 lat_comfort_cost
float32 constraint_check_failure_count
float32 collision_failure_count
float32 distance_planning
uint32 id_shown
uint32 flag_path_time_obstacle_sample_shown
float32 max_t
float32 max_d
float32 stitch_trajectory_x
float32 stitch_trajectory_y
float32 stitch_trajectory_z
float32 stitch_trajectory_theta
float32 stitch_trajectory_kappa
float32 stitch_trajectory_v
float32 stitch_trajectory_a
float32 stitch_trajectory_relative_time
StitchDebug stitch_debug
DecisionDebug decision_debug
================================================================================
MSG: planning_msgs/StitchDebug
  bool prev_traj_is_not_ok
  bool driver_mode_is_not_auto
  bool prev_traj_size_is_zero
  bool smaller_than_prev_traj_time
  bool beyond_prev_traj_time
  bool dist_too_large
  float32 lon_diff
  float32 lat_diff
================================================================================
MSG: planning_msgs/DecisionDebug
  ObstacleIn[50] obstacle
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



(provide :planning_msgs/PlanningDebug "423e0926173cb1c4e4e0d32a68ecf81f")


