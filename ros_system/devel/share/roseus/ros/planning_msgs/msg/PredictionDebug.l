;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::PredictionDebug)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'PredictionDebug (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::PREDICTIONDEBUG")
  (make-package "PLANNING_MSGS::PREDICTIONDEBUG"))

(in-package "ROS")
;;//! \htmlinclude PredictionDebug.msg.html


(defclass planning_msgs::PredictionDebug
  :super ros::object
  :slots (_propt _obstacle_pred _obstacle_glbl ))

(defmethod planning_msgs::PredictionDebug
  (:init
   (&key
    ((:propt __propt) (let (r) (dotimes (i 32) (push (instance planning_msgs::Propt :init) r)) r))
    ((:obstacle_pred __obstacle_pred) (let (r) (dotimes (i 64) (push (instance planning_msgs::ObstaclePred :init) r)) r))
    ((:obstacle_glbl __obstacle_glbl) (let (r) (dotimes (i 32) (push (instance planning_msgs::GlobalObstacle :init) r)) r))
    )
   (send-super :init)
   (setq _propt __propt)
   (setq _obstacle_pred __obstacle_pred)
   (setq _obstacle_glbl __obstacle_glbl)
   self)
  (:propt
   (&rest __propt)
   (if (keywordp (car __propt))
       (send* _propt __propt)
     (progn
       (if __propt (setq _propt (car __propt)))
       _propt)))
  (:obstacle_pred
   (&rest __obstacle_pred)
   (if (keywordp (car __obstacle_pred))
       (send* _obstacle_pred __obstacle_pred)
     (progn
       (if __obstacle_pred (setq _obstacle_pred (car __obstacle_pred)))
       _obstacle_pred)))
  (:obstacle_glbl
   (&rest __obstacle_glbl)
   (if (keywordp (car __obstacle_glbl))
       (send* _obstacle_glbl __obstacle_glbl)
     (progn
       (if __obstacle_glbl (setq _obstacle_glbl (car __obstacle_glbl)))
       _obstacle_glbl)))
  (:serialization-length
   ()
   (+
    ;; planning_msgs/Propt[32] _propt
    (apply #'+ (send-all _propt :serialization-length))
    ;; planning_msgs/ObstaclePred[64] _obstacle_pred
    (apply #'+ (send-all _obstacle_pred :serialization-length))
    ;; planning_msgs/GlobalObstacle[32] _obstacle_glbl
    (apply #'+ (send-all _obstacle_glbl :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; planning_msgs/Propt[32] _propt
     (dolist (elem _propt)
       (send elem :serialize s)
       )
     ;; planning_msgs/ObstaclePred[64] _obstacle_pred
     (dolist (elem _obstacle_pred)
       (send elem :serialize s)
       )
     ;; planning_msgs/GlobalObstacle[32] _obstacle_glbl
     (dolist (elem _obstacle_glbl)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; planning_msgs/Propt[32] _propt
   (dotimes (i 32)
     (send (elt _propt i) :deserialize buf ptr-) (incf ptr- (send (elt _propt i) :serialization-length))
     )
   ;; planning_msgs/ObstaclePred[64] _obstacle_pred
   (dotimes (i 64)
     (send (elt _obstacle_pred i) :deserialize buf ptr-) (incf ptr- (send (elt _obstacle_pred i) :serialization-length))
     )
   ;; planning_msgs/GlobalObstacle[32] _obstacle_glbl
   (dotimes (i 32)
     (send (elt _obstacle_glbl i) :deserialize buf ptr-) (incf ptr- (send (elt _obstacle_glbl i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get planning_msgs::PredictionDebug :md5sum-) "3d3465080864d10f01de4bdd96ef7bc1")
(setf (get planning_msgs::PredictionDebug :datatype-) "planning_msgs/PredictionDebug")
(setf (get planning_msgs::PredictionDebug :definition-)
      "Propt[32] propt
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



(provide :planning_msgs/PredictionDebug "3d3465080864d10f01de4bdd96ef7bc1")


