
(cl:in-package :asdf)

(defsystem "monstertruck_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ServoCommand" :depends-on ("_package_ServoCommand"))
    (:file "_package_ServoCommand" :depends-on ("_package"))
    (:file "RawImu" :depends-on ("_package_RawImu"))
    (:file "_package_RawImu" :depends-on ("_package"))
    (:file "ServoPositions" :depends-on ("_package_ServoPositions"))
    (:file "_package_ServoPositions" :depends-on ("_package"))
    (:file "Gps" :depends-on ("_package_Gps"))
    (:file "_package_Gps" :depends-on ("_package"))
    (:file "NavigationSolution" :depends-on ("_package_NavigationSolution"))
    (:file "_package_NavigationSolution" :depends-on ("_package"))
    (:file "MotionCommand" :depends-on ("_package_MotionCommand"))
    (:file "_package_MotionCommand" :depends-on ("_package"))
    (:file "ServoCommands" :depends-on ("_package_ServoCommands"))
    (:file "_package_ServoCommands" :depends-on ("_package"))
    (:file "PositionFeedback" :depends-on ("_package_PositionFeedback"))
    (:file "_package_PositionFeedback" :depends-on ("_package"))
    (:file "RawOdometry" :depends-on ("_package_RawOdometry"))
    (:file "_package_RawOdometry" :depends-on ("_package"))
    (:file "Status" :depends-on ("_package_Status"))
    (:file "_package_Status" :depends-on ("_package"))
    (:file "Pdout" :depends-on ("_package_Pdout"))
    (:file "_package_Pdout" :depends-on ("_package"))
    (:file "ServoPosition" :depends-on ("_package_ServoPosition"))
    (:file "_package_ServoPosition" :depends-on ("_package"))
    (:file "Compass" :depends-on ("_package_Compass"))
    (:file "_package_Compass" :depends-on ("_package"))
  ))