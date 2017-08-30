; Auto-generated. Do not edit!


(cl:in-package nav2d_navigator-msg)


;//! \htmlinclude ExploreFeedback.msg.html

(cl:defclass <ExploreFeedback> (roslisp-msg-protocol:ros-message)
  ((robot_pose
    :reader robot_pose
    :initarg :robot_pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (target_pose
    :reader target_pose
    :initarg :target_pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass ExploreFeedback (<ExploreFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExploreFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExploreFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nav2d_navigator-msg:<ExploreFeedback> is deprecated: use nav2d_navigator-msg:ExploreFeedback instead.")))

(cl:ensure-generic-function 'robot_pose-val :lambda-list '(m))
(cl:defmethod robot_pose-val ((m <ExploreFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav2d_navigator-msg:robot_pose-val is deprecated.  Use nav2d_navigator-msg:robot_pose instead.")
  (robot_pose m))

(cl:ensure-generic-function 'target_pose-val :lambda-list '(m))
(cl:defmethod target_pose-val ((m <ExploreFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav2d_navigator-msg:target_pose-val is deprecated.  Use nav2d_navigator-msg:target_pose instead.")
  (target_pose m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <ExploreFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav2d_navigator-msg:distance-val is deprecated.  Use nav2d_navigator-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExploreFeedback>) ostream)
  "Serializes a message object of type '<ExploreFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExploreFeedback>) istream)
  "Deserializes a message object of type '<ExploreFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExploreFeedback>)))
  "Returns string type for a message object of type '<ExploreFeedback>"
  "nav2d_navigator/ExploreFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExploreFeedback)))
  "Returns string type for a message object of type 'ExploreFeedback"
  "nav2d_navigator/ExploreFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExploreFeedback>)))
  "Returns md5sum for a message object of type '<ExploreFeedback>"
  "e64a606b3357bbb098996ab9c2799a9f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExploreFeedback)))
  "Returns md5sum for a message object of type 'ExploreFeedback"
  "e64a606b3357bbb098996ab9c2799a9f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExploreFeedback>)))
  "Returns full string definition for message of type '<ExploreFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%geometry_msgs/Pose2D robot_pose~%geometry_msgs/Pose2D target_pose~%float32 distance~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExploreFeedback)))
  "Returns full string definition for message of type 'ExploreFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%geometry_msgs/Pose2D robot_pose~%geometry_msgs/Pose2D target_pose~%float32 distance~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExploreFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pose))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExploreFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'ExploreFeedback
    (cl:cons ':robot_pose (robot_pose msg))
    (cl:cons ':target_pose (target_pose msg))
    (cl:cons ':distance (distance msg))
))
