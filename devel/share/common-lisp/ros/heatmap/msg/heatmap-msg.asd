
(cl:in-package :asdf)

(defsystem "heatmap-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "wifi_signal" :depends-on ("_package_wifi_signal"))
    (:file "_package_wifi_signal" :depends-on ("_package"))
  ))