
(cl:in-package :asdf)

(defsystem "leadgen_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "LeadgenChassis" :depends-on ("_package_LeadgenChassis"))
    (:file "_package_LeadgenChassis" :depends-on ("_package"))
    (:file "LeadgenHMI" :depends-on ("_package_LeadgenHMI"))
    (:file "_package_LeadgenHMI" :depends-on ("_package"))
    (:file "LeadgenObsInputArray" :depends-on ("_package_LeadgenObsInputArray"))
    (:file "_package_LeadgenObsInputArray" :depends-on ("_package"))
    (:file "LeadgenObstacleInput" :depends-on ("_package_LeadgenObstacleInput"))
    (:file "_package_LeadgenObstacleInput" :depends-on ("_package"))
    (:file "LeadgenObstacleOutput" :depends-on ("_package_LeadgenObstacleOutput"))
    (:file "_package_LeadgenObstacleOutput" :depends-on ("_package"))
    (:file "LeadgenPointArray" :depends-on ("_package_LeadgenPointArray"))
    (:file "_package_LeadgenPointArray" :depends-on ("_package"))
    (:file "LeadgenStatus" :depends-on ("_package_LeadgenStatus"))
    (:file "_package_LeadgenStatus" :depends-on ("_package"))
    (:file "LeadgenTrajectory" :depends-on ("_package_LeadgenTrajectory"))
    (:file "_package_LeadgenTrajectory" :depends-on ("_package"))
    (:file "LeadgenWaypoint" :depends-on ("_package_LeadgenWaypoint"))
    (:file "_package_LeadgenWaypoint" :depends-on ("_package"))
  ))