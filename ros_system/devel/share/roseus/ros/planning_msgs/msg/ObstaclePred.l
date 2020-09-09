;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::ObstaclePred)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'ObstaclePred (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::OBSTACLEPRED")
  (make-package "PLANNING_MSGS::OBSTACLEPRED"))

(in-package "ROS")
;;//! \htmlinclude ObstaclePred.msg.html


(defclass planning_msgs::ObstaclePred
  :super ros::object
  :slots (_prediction_x _prediction_y _predict_method _is_valid ))

(defmethod planning_msgs::ObstaclePred
  (:init
   (&key
    ((:prediction_x __prediction_x) (make-array 10 :initial-element 0.0 :element-type :float))
    ((:prediction_y __prediction_y) (make-array 10 :initial-element 0.0 :element-type :float))
    ((:predict_method __predict_method) 0)
    ((:is_valid __is_valid) nil)
    )
   (send-super :init)
   (setq _prediction_x __prediction_x)
   (setq _prediction_y __prediction_y)
   (setq _predict_method (round __predict_method))
   (setq _is_valid __is_valid)
   self)
  (:prediction_x
   (&optional __prediction_x)
   (if __prediction_x (setq _prediction_x __prediction_x)) _prediction_x)
  (:prediction_y
   (&optional __prediction_y)
   (if __prediction_y (setq _prediction_y __prediction_y)) _prediction_y)
  (:predict_method
   (&optional __predict_method)
   (if __predict_method (setq _predict_method __predict_method)) _predict_method)
  (:is_valid
   (&optional __is_valid)
   (if __is_valid (setq _is_valid __is_valid)) _is_valid)
  (:serialization-length
   ()
   (+
    ;; float32[10] _prediction_x
    (* 4    10)
    ;; float32[10] _prediction_y
    (* 4    10)
    ;; uint32 _predict_method
    4
    ;; bool _is_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[10] _prediction_x
     (dotimes (i 10)
       (sys::poke (elt _prediction_x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[10] _prediction_y
     (dotimes (i 10)
       (sys::poke (elt _prediction_y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint32 _predict_method
       (write-long _predict_method s)
     ;; bool _is_valid
       (if _is_valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[10] _prediction_x
   (dotimes (i (length _prediction_x))
     (setf (elt _prediction_x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[10] _prediction_y
   (dotimes (i (length _prediction_y))
     (setf (elt _prediction_y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; uint32 _predict_method
     (setq _predict_method (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_valid
     (setq _is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get planning_msgs::ObstaclePred :md5sum-) "ff9d8c9ace78f2e23a2505b10de19eaa")
(setf (get planning_msgs::ObstaclePred :datatype-) "planning_msgs/ObstaclePred")
(setf (get planning_msgs::ObstaclePred :definition-)
      "float32[10] prediction_x
float32[10] prediction_y
uint32 predict_method
bool is_valid

")



(provide :planning_msgs/ObstaclePred "ff9d8c9ace78f2e23a2505b10de19eaa")


