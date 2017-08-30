; Auto-generated. Do not edit!


(cl:in-package heatmap-srv)


;//! \htmlinclude signal_service-request.msg.html

(cl:defclass <signal_service-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass signal_service-request (<signal_service-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <signal_service-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'signal_service-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name heatmap-srv:<signal_service-request> is deprecated: use heatmap-srv:signal_service-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <signal_service-request>) ostream)
  "Serializes a message object of type '<signal_service-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <signal_service-request>) istream)
  "Deserializes a message object of type '<signal_service-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<signal_service-request>)))
  "Returns string type for a service object of type '<signal_service-request>"
  "heatmap/signal_serviceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'signal_service-request)))
  "Returns string type for a service object of type 'signal_service-request"
  "heatmap/signal_serviceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<signal_service-request>)))
  "Returns md5sum for a message object of type '<signal_service-request>"
  "58da7ff476f57ac5f5a609923bf16293")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'signal_service-request)))
  "Returns md5sum for a message object of type 'signal_service-request"
  "58da7ff476f57ac5f5a609923bf16293")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<signal_service-request>)))
  "Returns full string definition for message of type '<signal_service-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'signal_service-request)))
  "Returns full string definition for message of type 'signal_service-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <signal_service-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <signal_service-request>))
  "Converts a ROS message object to a list"
  (cl:list 'signal_service-request
))
;//! \htmlinclude signal_service-response.msg.html

(cl:defclass <signal_service-response> (roslisp-msg-protocol:ros-message)
  ((signal
    :reader signal
    :initarg :signal
    :type heatmap-msg:wifi_signal
    :initform (cl:make-instance 'heatmap-msg:wifi_signal)))
)

(cl:defclass signal_service-response (<signal_service-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <signal_service-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'signal_service-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name heatmap-srv:<signal_service-response> is deprecated: use heatmap-srv:signal_service-response instead.")))

(cl:ensure-generic-function 'signal-val :lambda-list '(m))
(cl:defmethod signal-val ((m <signal_service-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heatmap-srv:signal-val is deprecated.  Use heatmap-srv:signal instead.")
  (signal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <signal_service-response>) ostream)
  "Serializes a message object of type '<signal_service-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'signal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <signal_service-response>) istream)
  "Deserializes a message object of type '<signal_service-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'signal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<signal_service-response>)))
  "Returns string type for a service object of type '<signal_service-response>"
  "heatmap/signal_serviceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'signal_service-response)))
  "Returns string type for a service object of type 'signal_service-response"
  "heatmap/signal_serviceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<signal_service-response>)))
  "Returns md5sum for a message object of type '<signal_service-response>"
  "58da7ff476f57ac5f5a609923bf16293")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'signal_service-response)))
  "Returns md5sum for a message object of type 'signal_service-response"
  "58da7ff476f57ac5f5a609923bf16293")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<signal_service-response>)))
  "Returns full string definition for message of type '<signal_service-response>"
  (cl:format cl:nil "wifi_signal signal~%~%================================================================================~%MSG: heatmap/wifi_signal~%string essid~%uint8 link_quality~%uint8 link_quality_max~%int32 bitrate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'signal_service-response)))
  "Returns full string definition for message of type 'signal_service-response"
  (cl:format cl:nil "wifi_signal signal~%~%================================================================================~%MSG: heatmap/wifi_signal~%string essid~%uint8 link_quality~%uint8 link_quality_max~%int32 bitrate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <signal_service-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'signal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <signal_service-response>))
  "Converts a ROS message object to a list"
  (cl:list 'signal_service-response
    (cl:cons ':signal (signal msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'signal_service)))
  'signal_service-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'signal_service)))
  'signal_service-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'signal_service)))
  "Returns string type for a service object of type '<signal_service>"
  "heatmap/signal_service")