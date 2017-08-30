; Auto-generated. Do not edit!


(cl:in-package hector_move_base_msgs-msg)


;//! \htmlinclude MoveBaseResult.msg.html

(cl:defclass <MoveBaseResult> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MoveBaseResult (<MoveBaseResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveBaseResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveBaseResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_move_base_msgs-msg:<MoveBaseResult> is deprecated: use hector_move_base_msgs-msg:MoveBaseResult instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MoveBaseResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_move_base_msgs-msg:result-val is deprecated.  Use hector_move_base_msgs-msg:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MoveBaseResult>)))
    "Constants for message type '<MoveBaseResult>"
  '((:FAIL . 0)
    (:SUCCESS . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MoveBaseResult)))
    "Constants for message type 'MoveBaseResult"
  '((:FAIL . 0)
    (:SUCCESS . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveBaseResult>) ostream)
  "Serializes a message object of type '<MoveBaseResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveBaseResult>) istream)
  "Deserializes a message object of type '<MoveBaseResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveBaseResult>)))
  "Returns string type for a message object of type '<MoveBaseResult>"
  "hector_move_base_msgs/MoveBaseResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveBaseResult)))
  "Returns string type for a message object of type 'MoveBaseResult"
  "hector_move_base_msgs/MoveBaseResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveBaseResult>)))
  "Returns md5sum for a message object of type '<MoveBaseResult>"
  "35c0a98acc24f736228945127ef38683")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveBaseResult)))
  "Returns md5sum for a message object of type 'MoveBaseResult"
  "35c0a98acc24f736228945127ef38683")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveBaseResult>)))
  "Returns full string definition for message of type '<MoveBaseResult>"
  (cl:format cl:nil "uint8 FAIL=0~%uint8 SUCCESS=1~%uint8 result~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveBaseResult)))
  "Returns full string definition for message of type 'MoveBaseResult"
  (cl:format cl:nil "uint8 FAIL=0~%uint8 SUCCESS=1~%uint8 result~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveBaseResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveBaseResult>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveBaseResult
    (cl:cons ':result (result msg))
))
