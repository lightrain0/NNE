; Auto-generated. Do not edit!


(cl:in-package nav2d_navigator-msg)


;//! \htmlinclude LocalizeGoal.msg.html

(cl:defclass <LocalizeGoal> (roslisp-msg-protocol:ros-message)
  ((velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass LocalizeGoal (<LocalizeGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalizeGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalizeGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nav2d_navigator-msg:<LocalizeGoal> is deprecated: use nav2d_navigator-msg:LocalizeGoal instead.")))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <LocalizeGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nav2d_navigator-msg:velocity-val is deprecated.  Use nav2d_navigator-msg:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalizeGoal>) ostream)
  "Serializes a message object of type '<LocalizeGoal>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalizeGoal>) istream)
  "Deserializes a message object of type '<LocalizeGoal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalizeGoal>)))
  "Returns string type for a message object of type '<LocalizeGoal>"
  "nav2d_navigator/LocalizeGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalizeGoal)))
  "Returns string type for a message object of type 'LocalizeGoal"
  "nav2d_navigator/LocalizeGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalizeGoal>)))
  "Returns md5sum for a message object of type '<LocalizeGoal>"
  "e4ff88b32504f688719a85e0753f63ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalizeGoal)))
  "Returns md5sum for a message object of type 'LocalizeGoal"
  "e4ff88b32504f688719a85e0753f63ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalizeGoal>)))
  "Returns full string definition for message of type '<LocalizeGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%float32 velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalizeGoal)))
  "Returns full string definition for message of type 'LocalizeGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%float32 velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalizeGoal>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalizeGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalizeGoal
    (cl:cons ':velocity (velocity msg))
))