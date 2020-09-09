; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude PredictionDebug.msg.html

(cl:defclass <PredictionDebug> (roslisp-msg-protocol:ros-message)
  ((propt
    :reader propt
    :initarg :propt
    :type (cl:vector planning_msgs-msg:Propt)
   :initform (cl:make-array 32 :element-type 'planning_msgs-msg:Propt :initial-element (cl:make-instance 'planning_msgs-msg:Propt)))
   (obstacle_pred
    :reader obstacle_pred
    :initarg :obstacle_pred
    :type (cl:vector planning_msgs-msg:ObstaclePred)
   :initform (cl:make-array 64 :element-type 'planning_msgs-msg:ObstaclePred :initial-element (cl:make-instance 'planning_msgs-msg:ObstaclePred)))
   (obstacle_glbl
    :reader obstacle_glbl
    :initarg :obstacle_glbl
    :type (cl:vector planning_msgs-msg:GlobalObstacle)
   :initform (cl:make-array 32 :element-type 'planning_msgs-msg:GlobalObstacle :initial-element (cl:make-instance 'planning_msgs-msg:GlobalObstacle))))
)

(cl:defclass PredictionDebug (<PredictionDebug>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PredictionDebug>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PredictionDebug)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<PredictionDebug> is deprecated: use planning_msgs-msg:PredictionDebug instead.")))

(cl:ensure-generic-function 'propt-val :lambda-list '(m))
(cl:defmethod propt-val ((m <PredictionDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:propt-val is deprecated.  Use planning_msgs-msg:propt instead.")
  (propt m))

(cl:ensure-generic-function 'obstacle_pred-val :lambda-list '(m))
(cl:defmethod obstacle_pred-val ((m <PredictionDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:obstacle_pred-val is deprecated.  Use planning_msgs-msg:obstacle_pred instead.")
  (obstacle_pred m))

(cl:ensure-generic-function 'obstacle_glbl-val :lambda-list '(m))
(cl:defmethod obstacle_glbl-val ((m <PredictionDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:obstacle_glbl-val is deprecated.  Use planning_msgs-msg:obstacle_glbl instead.")
  (obstacle_glbl m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PredictionDebug>) ostream)
  "Serializes a message object of type '<PredictionDebug>"
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'propt))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacle_pred))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacle_glbl))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PredictionDebug>) istream)
  "Deserializes a message object of type '<PredictionDebug>"
  (cl:setf (cl:slot-value msg 'propt) (cl:make-array 32))
  (cl:let ((vals (cl:slot-value msg 'propt)))
    (cl:dotimes (i 32)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planning_msgs-msg:Propt))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'obstacle_pred) (cl:make-array 64))
  (cl:let ((vals (cl:slot-value msg 'obstacle_pred)))
    (cl:dotimes (i 64)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planning_msgs-msg:ObstaclePred))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'obstacle_glbl) (cl:make-array 32))
  (cl:let ((vals (cl:slot-value msg 'obstacle_glbl)))
    (cl:dotimes (i 32)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planning_msgs-msg:GlobalObstacle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PredictionDebug>)))
  "Returns string type for a message object of type '<PredictionDebug>"
  "planning_msgs/PredictionDebug")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PredictionDebug)))
  "Returns string type for a message object of type 'PredictionDebug"
  "planning_msgs/PredictionDebug")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PredictionDebug>)))
  "Returns md5sum for a message object of type '<PredictionDebug>"
  "3d3465080864d10f01de4bdd96ef7bc1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PredictionDebug)))
  "Returns md5sum for a message object of type 'PredictionDebug"
  "3d3465080864d10f01de4bdd96ef7bc1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PredictionDebug>)))
  "Returns full string definition for message of type '<PredictionDebug>"
  (cl:format cl:nil "Propt[32] propt~%ObstaclePred[64] obstacle_pred~%GlobalObstacle[32] obstacle_glbl~%~%================================================================================~%MSG: planning_msgs/Propt~%float32 frenet_l~%float32 frenet_s~%float32 angle_diff~%~%================================================================================~%MSG: planning_msgs/ObstaclePred~%float32[10] prediction_x~%float32[10] prediction_y~%uint32 predict_method~%bool is_valid~%~%================================================================================~%MSG: planning_msgs/GlobalObstacle~%float32 enu_x~%float32 enu_y~%float32 enu_theta~%float32 enu_vx~%float32 enu_vy~%float32 enu_ax~%float32 enu_ay~%float32 confidence~%int8 type~%float32 velocity~%float32 length~%float32 width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PredictionDebug)))
  "Returns full string definition for message of type 'PredictionDebug"
  (cl:format cl:nil "Propt[32] propt~%ObstaclePred[64] obstacle_pred~%GlobalObstacle[32] obstacle_glbl~%~%================================================================================~%MSG: planning_msgs/Propt~%float32 frenet_l~%float32 frenet_s~%float32 angle_diff~%~%================================================================================~%MSG: planning_msgs/ObstaclePred~%float32[10] prediction_x~%float32[10] prediction_y~%uint32 predict_method~%bool is_valid~%~%================================================================================~%MSG: planning_msgs/GlobalObstacle~%float32 enu_x~%float32 enu_y~%float32 enu_theta~%float32 enu_vx~%float32 enu_vy~%float32 enu_ax~%float32 enu_ay~%float32 confidence~%int8 type~%float32 velocity~%float32 length~%float32 width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PredictionDebug>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'propt) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacle_pred) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacle_glbl) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PredictionDebug>))
  "Converts a ROS message object to a list"
  (cl:list 'PredictionDebug
    (cl:cons ':propt (propt msg))
    (cl:cons ':obstacle_pred (obstacle_pred msg))
    (cl:cons ':obstacle_glbl (obstacle_glbl msg))
))
