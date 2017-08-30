
(cl:in-package :asdf)

(defsystem "heatmap-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :heatmap-msg
)
  :components ((:file "_package")
    (:file "signal_service" :depends-on ("_package_signal_service"))
    (:file "_package_signal_service" :depends-on ("_package"))
    (:file "interpolation_service" :depends-on ("_package_interpolation_service"))
    (:file "_package_interpolation_service" :depends-on ("_package"))
  ))