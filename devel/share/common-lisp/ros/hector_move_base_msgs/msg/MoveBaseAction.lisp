; Auto-generated. Do not edit!


(cl:in-package hector_move_base_msgs-msg)


;//! \htmlinclude MoveBaseAction.msg.html

(cl:defclass <MoveBaseAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type hector_move_base_msgs-msg:MoveBaseActionGoal
    :initform (cl:make-instance 'hector_move_base_msgs-msg:MoveBaseActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type hector_move_base_msgs-msg:MoveBaseActionResult
    :initform (cl:make-instance 'hector_move_base_msgs-msg:MoveBaseActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type hector_move_base_msgs-msg:MoveBaseActionFeedback
    :initform (cl:make-instance 'hector_move_base_msgs-msg:MoveBaseActionFeedback)))
)

(cl:defclass MoveBaseAction (<MoveBaseAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveBaseAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveBaseAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_move_base_msgs-msg:<MoveBaseAction> is deprecated: use hector_move_base_msgs-msg:MoveBaseAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <MoveBaseAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_move_base_msgs-msg:action_goal-val is deprecated.  Use hector_move_base_msgs-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <MoveBaseAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_move_base_msgs-msg:action_result-val is deprecated.  Use hector_move_base_msgs-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <MoveBaseAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_move_base_msgs-msg:action_feedback-val is deprecated.  Use hector_move_base_msgs-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveBaseAction>) ostream)
  "Serializes a message object of type '<MoveBaseAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveBaseAction>) istream)
  "Deserializes a message object of type '<MoveBaseAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveBaseAction>)))
  "Returns string type for a message object of type '<MoveBaseAction>"
  "hector_move_base_msgs/MoveBaseAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveBaseAction)))
  "Returns string type for a message object of type 'MoveBaseAction"
  "hector_move_base_msgs/MoveBaseAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveBaseAction>)))
  "Returns md5sum for a message object of type '<MoveBaseAction>"
  "8d353c0b5b175819f2d8ccc26d92b8f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveBaseAction)))
  "Returns md5sum for a message object of type 'MoveBaseAction"
  "8d353c0b5b175819f2d8ccc26d92b8f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveBaseAction>)))
  "Returns full string definition for message of type '<MoveBaseAction>"
  (cl:format cl:nil "MoveBaseActionGoal action_goal~%MoveBaseActionResult action_result~%MoveBaseActionFeedback action_feedback~%~%================================================================================~%MSG: hector_move_base_msgs/MoveBaseActionGoal~%Header header~%actionlib_msgs/GoalID goal_id~%MoveBaseGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: hector_move_base_msgs/MoveBaseGoal~%geometry_msgs/PoseStamped target_pose~%float32 speed~%float32 distance~%bool exploration~%bool reverse_allowed~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: hector_move_base_msgs/MoveBaseActionResult~%Header header~%actionlib_msgs/GoalStatus status~%MoveBaseResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: hector_move_base_msgs/MoveBaseResult~%uint8 FAIL=0~%uint8 SUCCESS=1~%uint8 result~%================================================================================~%MSG: hector_move_base_msgs/MoveBaseActionFeedback~%Header header~%actionlib_msgs/GoalStatus status~%MoveBaseFeedback feedback~%~%================================================================================~%MSG: hector_move_base_msgs/MoveBaseFeedback~%# empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveBaseAction)))
  "Returns full string definition for message of type 'MoveBaseAction"
  (cl:format cl:nil "MoveBaseActionGoal action_goal~%MoveBaseActionResult action_result~%MoveBaseActionFeedback action_feedback~%~%================================================================================~%MSG: hector_move_base_msgs/MoveBaseActionGoal~%Header header~%actionlib_msgs/GoalID goal_id~%MoveBaseGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: hector_move_base_msgs/MoveBaseGoal~%geometry_msgs/PoseStamped target_pose~%float32 speed~%float32 distance~%bool exploration~%bool reverse_allowed~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: hector_move_base_msgs/MoveBaseActionResult~%Header header~%actionlib_msgs/GoalStatus status~%MoveBaseResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: hector_move_base_msgs/MoveBaseResult~%uint8 FAIL=0~%uint8 SUCCESS=1~%uint8 result~%================================================================================~%MSG: hector_move_base_msgs/MoveBaseActionFeedback~%Header header~%actionlib_msgs/GoalStatus status~%MoveBaseFeedback feedback~%~%================================================================================~%MSG: hector_move_base_msgs/MoveBaseFeedback~%# empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveBaseAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveBaseAction>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveBaseAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))
