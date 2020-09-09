; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude PlanningDebug.msg.html

(cl:defclass <PlanningDebug> (roslisp-msg-protocol:ros-message)
  ((lon_objective_cost
    :reader lon_objective_cost
    :initarg :lon_objective_cost
    :type cl:float
    :initform 0.0)
   (lon_jerk_cost
    :reader lon_jerk_cost
    :initarg :lon_jerk_cost
    :type cl:float
    :initform 0.0)
   (lon_collision_cost
    :reader lon_collision_cost
    :initarg :lon_collision_cost
    :type cl:float
    :initform 0.0)
   (lat_offset_cost
    :reader lat_offset_cost
    :initarg :lat_offset_cost
    :type cl:float
    :initform 0.0)
   (centripental_acc_cost
    :reader centripental_acc_cost
    :initarg :centripental_acc_cost
    :type cl:float
    :initform 0.0)
   (lat_comfort_cost
    :reader lat_comfort_cost
    :initarg :lat_comfort_cost
    :type cl:float
    :initform 0.0)
   (constraint_check_failure_count
    :reader constraint_check_failure_count
    :initarg :constraint_check_failure_count
    :type cl:float
    :initform 0.0)
   (collision_failure_count
    :reader collision_failure_count
    :initarg :collision_failure_count
    :type cl:float
    :initform 0.0)
   (distance_planning
    :reader distance_planning
    :initarg :distance_planning
    :type cl:float
    :initform 0.0)
   (id_shown
    :reader id_shown
    :initarg :id_shown
    :type cl:integer
    :initform 0)
   (flag_path_time_obstacle_sample_shown
    :reader flag_path_time_obstacle_sample_shown
    :initarg :flag_path_time_obstacle_sample_shown
    :type cl:integer
    :initform 0)
   (max_t
    :reader max_t
    :initarg :max_t
    :type cl:float
    :initform 0.0)
   (max_d
    :reader max_d
    :initarg :max_d
    :type cl:float
    :initform 0.0)
   (stitch_trajectory_x
    :reader stitch_trajectory_x
    :initarg :stitch_trajectory_x
    :type cl:float
    :initform 0.0)
   (stitch_trajectory_y
    :reader stitch_trajectory_y
    :initarg :stitch_trajectory_y
    :type cl:float
    :initform 0.0)
   (stitch_trajectory_z
    :reader stitch_trajectory_z
    :initarg :stitch_trajectory_z
    :type cl:float
    :initform 0.0)
   (stitch_trajectory_theta
    :reader stitch_trajectory_theta
    :initarg :stitch_trajectory_theta
    :type cl:float
    :initform 0.0)
   (stitch_trajectory_kappa
    :reader stitch_trajectory_kappa
    :initarg :stitch_trajectory_kappa
    :type cl:float
    :initform 0.0)
   (stitch_trajectory_v
    :reader stitch_trajectory_v
    :initarg :stitch_trajectory_v
    :type cl:float
    :initform 0.0)
   (stitch_trajectory_a
    :reader stitch_trajectory_a
    :initarg :stitch_trajectory_a
    :type cl:float
    :initform 0.0)
   (stitch_trajectory_relative_time
    :reader stitch_trajectory_relative_time
    :initarg :stitch_trajectory_relative_time
    :type cl:float
    :initform 0.0)
   (stitch_debug
    :reader stitch_debug
    :initarg :stitch_debug
    :type planning_msgs-msg:StitchDebug
    :initform (cl:make-instance 'planning_msgs-msg:StitchDebug))
   (decision_debug
    :reader decision_debug
    :initarg :decision_debug
    :type planning_msgs-msg:DecisionDebug
    :initform (cl:make-instance 'planning_msgs-msg:DecisionDebug)))
)

(cl:defclass PlanningDebug (<PlanningDebug>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanningDebug>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanningDebug)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<PlanningDebug> is deprecated: use planning_msgs-msg:PlanningDebug instead.")))

(cl:ensure-generic-function 'lon_objective_cost-val :lambda-list '(m))
(cl:defmethod lon_objective_cost-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lon_objective_cost-val is deprecated.  Use planning_msgs-msg:lon_objective_cost instead.")
  (lon_objective_cost m))

(cl:ensure-generic-function 'lon_jerk_cost-val :lambda-list '(m))
(cl:defmethod lon_jerk_cost-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lon_jerk_cost-val is deprecated.  Use planning_msgs-msg:lon_jerk_cost instead.")
  (lon_jerk_cost m))

(cl:ensure-generic-function 'lon_collision_cost-val :lambda-list '(m))
(cl:defmethod lon_collision_cost-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lon_collision_cost-val is deprecated.  Use planning_msgs-msg:lon_collision_cost instead.")
  (lon_collision_cost m))

(cl:ensure-generic-function 'lat_offset_cost-val :lambda-list '(m))
(cl:defmethod lat_offset_cost-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lat_offset_cost-val is deprecated.  Use planning_msgs-msg:lat_offset_cost instead.")
  (lat_offset_cost m))

(cl:ensure-generic-function 'centripental_acc_cost-val :lambda-list '(m))
(cl:defmethod centripental_acc_cost-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:centripental_acc_cost-val is deprecated.  Use planning_msgs-msg:centripental_acc_cost instead.")
  (centripental_acc_cost m))

(cl:ensure-generic-function 'lat_comfort_cost-val :lambda-list '(m))
(cl:defmethod lat_comfort_cost-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lat_comfort_cost-val is deprecated.  Use planning_msgs-msg:lat_comfort_cost instead.")
  (lat_comfort_cost m))

(cl:ensure-generic-function 'constraint_check_failure_count-val :lambda-list '(m))
(cl:defmethod constraint_check_failure_count-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:constraint_check_failure_count-val is deprecated.  Use planning_msgs-msg:constraint_check_failure_count instead.")
  (constraint_check_failure_count m))

(cl:ensure-generic-function 'collision_failure_count-val :lambda-list '(m))
(cl:defmethod collision_failure_count-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:collision_failure_count-val is deprecated.  Use planning_msgs-msg:collision_failure_count instead.")
  (collision_failure_count m))

(cl:ensure-generic-function 'distance_planning-val :lambda-list '(m))
(cl:defmethod distance_planning-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:distance_planning-val is deprecated.  Use planning_msgs-msg:distance_planning instead.")
  (distance_planning m))

(cl:ensure-generic-function 'id_shown-val :lambda-list '(m))
(cl:defmethod id_shown-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:id_shown-val is deprecated.  Use planning_msgs-msg:id_shown instead.")
  (id_shown m))

(cl:ensure-generic-function 'flag_path_time_obstacle_sample_shown-val :lambda-list '(m))
(cl:defmethod flag_path_time_obstacle_sample_shown-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:flag_path_time_obstacle_sample_shown-val is deprecated.  Use planning_msgs-msg:flag_path_time_obstacle_sample_shown instead.")
  (flag_path_time_obstacle_sample_shown m))

(cl:ensure-generic-function 'max_t-val :lambda-list '(m))
(cl:defmethod max_t-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:max_t-val is deprecated.  Use planning_msgs-msg:max_t instead.")
  (max_t m))

(cl:ensure-generic-function 'max_d-val :lambda-list '(m))
(cl:defmethod max_d-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:max_d-val is deprecated.  Use planning_msgs-msg:max_d instead.")
  (max_d m))

(cl:ensure-generic-function 'stitch_trajectory_x-val :lambda-list '(m))
(cl:defmethod stitch_trajectory_x-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:stitch_trajectory_x-val is deprecated.  Use planning_msgs-msg:stitch_trajectory_x instead.")
  (stitch_trajectory_x m))

(cl:ensure-generic-function 'stitch_trajectory_y-val :lambda-list '(m))
(cl:defmethod stitch_trajectory_y-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:stitch_trajectory_y-val is deprecated.  Use planning_msgs-msg:stitch_trajectory_y instead.")
  (stitch_trajectory_y m))

(cl:ensure-generic-function 'stitch_trajectory_z-val :lambda-list '(m))
(cl:defmethod stitch_trajectory_z-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:stitch_trajectory_z-val is deprecated.  Use planning_msgs-msg:stitch_trajectory_z instead.")
  (stitch_trajectory_z m))

(cl:ensure-generic-function 'stitch_trajectory_theta-val :lambda-list '(m))
(cl:defmethod stitch_trajectory_theta-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:stitch_trajectory_theta-val is deprecated.  Use planning_msgs-msg:stitch_trajectory_theta instead.")
  (stitch_trajectory_theta m))

(cl:ensure-generic-function 'stitch_trajectory_kappa-val :lambda-list '(m))
(cl:defmethod stitch_trajectory_kappa-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:stitch_trajectory_kappa-val is deprecated.  Use planning_msgs-msg:stitch_trajectory_kappa instead.")
  (stitch_trajectory_kappa m))

(cl:ensure-generic-function 'stitch_trajectory_v-val :lambda-list '(m))
(cl:defmethod stitch_trajectory_v-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:stitch_trajectory_v-val is deprecated.  Use planning_msgs-msg:stitch_trajectory_v instead.")
  (stitch_trajectory_v m))

(cl:ensure-generic-function 'stitch_trajectory_a-val :lambda-list '(m))
(cl:defmethod stitch_trajectory_a-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:stitch_trajectory_a-val is deprecated.  Use planning_msgs-msg:stitch_trajectory_a instead.")
  (stitch_trajectory_a m))

(cl:ensure-generic-function 'stitch_trajectory_relative_time-val :lambda-list '(m))
(cl:defmethod stitch_trajectory_relative_time-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:stitch_trajectory_relative_time-val is deprecated.  Use planning_msgs-msg:stitch_trajectory_relative_time instead.")
  (stitch_trajectory_relative_time m))

(cl:ensure-generic-function 'stitch_debug-val :lambda-list '(m))
(cl:defmethod stitch_debug-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:stitch_debug-val is deprecated.  Use planning_msgs-msg:stitch_debug instead.")
  (stitch_debug m))

(cl:ensure-generic-function 'decision_debug-val :lambda-list '(m))
(cl:defmethod decision_debug-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:decision_debug-val is deprecated.  Use planning_msgs-msg:decision_debug instead.")
  (decision_debug m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanningDebug>) ostream)
  "Serializes a message object of type '<PlanningDebug>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lon_objective_cost))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lon_jerk_cost))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lon_collision_cost))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lat_offset_cost))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'centripental_acc_cost))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lat_comfort_cost))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'constraint_check_failure_count))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'collision_failure_count))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_planning))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id_shown)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id_shown)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id_shown)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id_shown)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag_path_time_obstacle_sample_shown)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flag_path_time_obstacle_sample_shown)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flag_path_time_obstacle_sample_shown)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flag_path_time_obstacle_sample_shown)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_t))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'stitch_trajectory_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'stitch_trajectory_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'stitch_trajectory_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'stitch_trajectory_theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'stitch_trajectory_kappa))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'stitch_trajectory_v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'stitch_trajectory_a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'stitch_trajectory_relative_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stitch_debug) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'decision_debug) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanningDebug>) istream)
  "Deserializes a message object of type '<PlanningDebug>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lon_objective_cost) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lon_jerk_cost) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lon_collision_cost) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat_offset_cost) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'centripental_acc_cost) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat_comfort_cost) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'constraint_check_failure_count) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'collision_failure_count) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_planning) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id_shown)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id_shown)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id_shown)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id_shown)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag_path_time_obstacle_sample_shown)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flag_path_time_obstacle_sample_shown)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flag_path_time_obstacle_sample_shown)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flag_path_time_obstacle_sample_shown)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_t) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_d) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stitch_trajectory_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stitch_trajectory_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stitch_trajectory_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stitch_trajectory_theta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stitch_trajectory_kappa) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stitch_trajectory_v) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stitch_trajectory_a) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stitch_trajectory_relative_time) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stitch_debug) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'decision_debug) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanningDebug>)))
  "Returns string type for a message object of type '<PlanningDebug>"
  "planning_msgs/PlanningDebug")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanningDebug)))
  "Returns string type for a message object of type 'PlanningDebug"
  "planning_msgs/PlanningDebug")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanningDebug>)))
  "Returns md5sum for a message object of type '<PlanningDebug>"
  "423e0926173cb1c4e4e0d32a68ecf81f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanningDebug)))
  "Returns md5sum for a message object of type 'PlanningDebug"
  "423e0926173cb1c4e4e0d32a68ecf81f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanningDebug>)))
  "Returns full string definition for message of type '<PlanningDebug>"
  (cl:format cl:nil "float32 lon_objective_cost~%float32 lon_jerk_cost~%float32 lon_collision_cost~%float32 lat_offset_cost~%float32 centripental_acc_cost~%float32 lat_comfort_cost~%float32 constraint_check_failure_count~%float32 collision_failure_count~%float32 distance_planning~%uint32 id_shown~%uint32 flag_path_time_obstacle_sample_shown~%float32 max_t~%float32 max_d~%float32 stitch_trajectory_x~%float32 stitch_trajectory_y~%float32 stitch_trajectory_z~%float32 stitch_trajectory_theta~%float32 stitch_trajectory_kappa~%float32 stitch_trajectory_v~%float32 stitch_trajectory_a~%float32 stitch_trajectory_relative_time~%StitchDebug stitch_debug~%DecisionDebug decision_debug~%================================================================================~%MSG: planning_msgs/StitchDebug~%  bool prev_traj_is_not_ok~%  bool driver_mode_is_not_auto~%  bool prev_traj_size_is_zero~%  bool smaller_than_prev_traj_time~%  bool beyond_prev_traj_time~%  bool dist_too_large~%  float32 lon_diff~%  float32 lat_diff~%================================================================================~%MSG: planning_msgs/DecisionDebug~%  ObstacleIn[50] obstacle~%  int8 lanechange_id~%  int8 lane_id~%  float32[3] ego_cost~%  int8[3] onlane_obs_num~%  int8 lanechange_process~%~%================================================================================~%MSG: planning_msgs/ObstacleIn~%int8 id~%float32 s~%float32 l~%float32 vs~%float32 as~%float32 vl~%float32 al~%int8 lane_no~%float32 time_cost~%float32 des_cost~%float32 decision_cost~%int8 decision_tag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanningDebug)))
  "Returns full string definition for message of type 'PlanningDebug"
  (cl:format cl:nil "float32 lon_objective_cost~%float32 lon_jerk_cost~%float32 lon_collision_cost~%float32 lat_offset_cost~%float32 centripental_acc_cost~%float32 lat_comfort_cost~%float32 constraint_check_failure_count~%float32 collision_failure_count~%float32 distance_planning~%uint32 id_shown~%uint32 flag_path_time_obstacle_sample_shown~%float32 max_t~%float32 max_d~%float32 stitch_trajectory_x~%float32 stitch_trajectory_y~%float32 stitch_trajectory_z~%float32 stitch_trajectory_theta~%float32 stitch_trajectory_kappa~%float32 stitch_trajectory_v~%float32 stitch_trajectory_a~%float32 stitch_trajectory_relative_time~%StitchDebug stitch_debug~%DecisionDebug decision_debug~%================================================================================~%MSG: planning_msgs/StitchDebug~%  bool prev_traj_is_not_ok~%  bool driver_mode_is_not_auto~%  bool prev_traj_size_is_zero~%  bool smaller_than_prev_traj_time~%  bool beyond_prev_traj_time~%  bool dist_too_large~%  float32 lon_diff~%  float32 lat_diff~%================================================================================~%MSG: planning_msgs/DecisionDebug~%  ObstacleIn[50] obstacle~%  int8 lanechange_id~%  int8 lane_id~%  float32[3] ego_cost~%  int8[3] onlane_obs_num~%  int8 lanechange_process~%~%================================================================================~%MSG: planning_msgs/ObstacleIn~%int8 id~%float32 s~%float32 l~%float32 vs~%float32 as~%float32 vl~%float32 al~%int8 lane_no~%float32 time_cost~%float32 des_cost~%float32 decision_cost~%int8 decision_tag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanningDebug>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stitch_debug))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'decision_debug))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanningDebug>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanningDebug
    (cl:cons ':lon_objective_cost (lon_objective_cost msg))
    (cl:cons ':lon_jerk_cost (lon_jerk_cost msg))
    (cl:cons ':lon_collision_cost (lon_collision_cost msg))
    (cl:cons ':lat_offset_cost (lat_offset_cost msg))
    (cl:cons ':centripental_acc_cost (centripental_acc_cost msg))
    (cl:cons ':lat_comfort_cost (lat_comfort_cost msg))
    (cl:cons ':constraint_check_failure_count (constraint_check_failure_count msg))
    (cl:cons ':collision_failure_count (collision_failure_count msg))
    (cl:cons ':distance_planning (distance_planning msg))
    (cl:cons ':id_shown (id_shown msg))
    (cl:cons ':flag_path_time_obstacle_sample_shown (flag_path_time_obstacle_sample_shown msg))
    (cl:cons ':max_t (max_t msg))
    (cl:cons ':max_d (max_d msg))
    (cl:cons ':stitch_trajectory_x (stitch_trajectory_x msg))
    (cl:cons ':stitch_trajectory_y (stitch_trajectory_y msg))
    (cl:cons ':stitch_trajectory_z (stitch_trajectory_z msg))
    (cl:cons ':stitch_trajectory_theta (stitch_trajectory_theta msg))
    (cl:cons ':stitch_trajectory_kappa (stitch_trajectory_kappa msg))
    (cl:cons ':stitch_trajectory_v (stitch_trajectory_v msg))
    (cl:cons ':stitch_trajectory_a (stitch_trajectory_a msg))
    (cl:cons ':stitch_trajectory_relative_time (stitch_trajectory_relative_time msg))
    (cl:cons ':stitch_debug (stitch_debug msg))
    (cl:cons ':decision_debug (decision_debug msg))
))
