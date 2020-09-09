;; Auto-generated. Do not edit!


(when (boundp 'leadgen_msgs::LeadgenWaypoint)
  (if (not (find-package "LEADGEN_MSGS"))
    (make-package "LEADGEN_MSGS"))
  (shadow 'LeadgenWaypoint (find-package "LEADGEN_MSGS")))
(unless (find-package "LEADGEN_MSGS::LEADGENWAYPOINT")
  (make-package "LEADGEN_MSGS::LEADGENWAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude LeadgenWaypoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass leadgen_msgs::LeadgenWaypoint
  :super ros::object
  :slots (_point _theta _kappa _station _lateral _speed _accel _time_arrival ))

(defmethod leadgen_msgs::LeadgenWaypoint
  (:init
   (&key
    ((:point __point) (instance geometry_msgs::Point :init))
    ((:theta __theta) 0.0)
    ((:kappa __kappa) 0.0)
    ((:station __station) 0.0)
    ((:lateral __lateral) 0.0)
    ((:speed __speed) 0.0)
    ((:accel __accel) 0.0)
    ((:time_arrival __time_arrival) (instance ros::time :init))
    )
   (send-super :init)
   (setq _point __point)
   (setq _theta (float __theta))
   (setq _kappa (float __kappa))
   (setq _station (float __station))
   (setq _lateral (float __lateral))
   (setq _speed (float __speed))
   (setq _accel (float __accel))
   (setq _time_arrival __time_arrival)
   self)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:kappa
   (&optional __kappa)
   (if __kappa (setq _kappa __kappa)) _kappa)
  (:station
   (&optional __station)
   (if __station (setq _station __station)) _station)
  (:lateral
   (&optional __lateral)
   (if __lateral (setq _lateral __lateral)) _lateral)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:accel
   (&optional __accel)
   (if __accel (setq _accel __accel)) _accel)
  (:time_arrival
   (&optional __time_arrival)
   (if __time_arrival (setq _time_arrival __time_arrival)) _time_arrival)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _point
    (send _point :serialization-length)
    ;; float64 _theta
    8
    ;; float64 _kappa
    8
    ;; float64 _station
    8
    ;; float64 _lateral
    8
    ;; float32 _speed
    4
    ;; float32 _accel
    4
    ;; time _time_arrival
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _point
       (send _point :serialize s)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _kappa
       (sys::poke _kappa (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _station
       (sys::poke _station (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lateral
       (sys::poke _lateral (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accel
       (sys::poke _accel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; time _time_arrival
       (write-long (send _time_arrival :sec) s) (write-long (send _time_arrival :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _kappa
     (setq _kappa (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _station
     (setq _station (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lateral
     (setq _lateral (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accel
     (setq _accel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; time _time_arrival
     (send _time_arrival :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_arrival :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get leadgen_msgs::LeadgenWaypoint :md5sum-) "38a50bfbdbab44a271e46dddaf38da0a")
(setf (get leadgen_msgs::LeadgenWaypoint :datatype-) "leadgen_msgs/LeadgenWaypoint")
(setf (get leadgen_msgs::LeadgenWaypoint :definition-)
      "# This message is to describe a WAYPOINT in the target trajectory

# header
# std_msgs/Header header

# 3D position
geometry_msgs/Point point

# trace info
float64 theta # the heading of the trace at this point
float64 kappa # the curvature of the trace at this point

# SL info
float64 station
float64 lateral

# speed info
float32 speed # in [m/s]
float32 accel # in [m/s^2],(optional)

time time_arrival # the expected arrival time of this point



================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :leadgen_msgs/LeadgenWaypoint "38a50bfbdbab44a271e46dddaf38da0a")


