
(cl:in-package :asdf)

(defsystem "locationsim_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "LOCATIONSIM" :depends-on ("_package_LOCATIONSIM"))
    (:file "_package_LOCATIONSIM" :depends-on ("_package"))
  ))