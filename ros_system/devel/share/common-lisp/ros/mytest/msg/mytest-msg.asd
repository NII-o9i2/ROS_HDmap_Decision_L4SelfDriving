
(cl:in-package :asdf)

(defsystem "mytest-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "mypath" :depends-on ("_package_mypath"))
    (:file "_package_mypath" :depends-on ("_package"))
  ))