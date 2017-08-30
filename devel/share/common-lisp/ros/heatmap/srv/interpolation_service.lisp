; Auto-generated. Do not edit!


(cl:in-package heatmap-srv)


;//! \htmlinclude interpolation_service-request.msg.html

(cl:defclass <interpolation_service-request> (roslisp-msg-protocol:ros-message)
  ((spacing
    :reader spacing
    :initarg :spacing
    :type cl:float
    :initform 0.0)
   (shepard_power
    :reader shepard_power
    :initarg :shepard_power
    :type cl:float
    :initform 0.0))
)

(cl:defclass interpolation_service-request (<interpolation_service-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <interpolation_service-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'interpolation_service-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name heatmap-srv:<interpolation_service-request> is deprecated: use heatmap-srv:interpolation_service-request instead.")))

(cl:ensure-generic-function 'spacing-val :lambda-list '(m))
(cl:defmethod spacing-val ((m <interpolation_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heatmap-srv:spacing-val is deprecated.  Use heatmap-srv:spacing instead.")
  (spacing m))

(cl:ensure-generic-function 'shepard_power-val :lambda-list '(m))
(cl:defmethod shepard_power-val ((m <interpolation_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heatmap-srv:shepard_power-val is deprecated.  Use heatmap-srv:shepard_power instead.")
  (shepard_power m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <interpolation_service-request>) ostream)
  "Serializes a message object of type '<interpolation_service-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'spacing))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'shepard_power))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <interpolation_service-request>) istream)
  "Deserializes a message object of type '<interpolation_service-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'spacing) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'shepard_power) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<interpolation_service-request>)))
  "Returns string type for a service object of type '<interpolation_service-request>"
  "heatmap/interpolation_serviceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'interpolation_service-request)))
  "Returns string type for a service object of type 'interpolation_service-request"
  "heatmap/interpolation_serviceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<interpolation_service-request>)))
  "Returns md5sum for a message object of type '<interpolation_service-request>"
  "bd9ec5953508bf6d64d0b75ca3f20626")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'interpolation_service-request)))
  "Returns md5sum for a message object of type 'interpolation_service-request"
  "bd9ec5953508bf6d64d0b75ca3f20626")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<interpolation_service-request>)))
  "Returns full string definition for message of type '<interpolation_service-request>"
  (cl:format cl:nil "float32 spacing~%float32 shepard_power~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'interpolation_service-request)))
  "Returns full string definition for message of type 'interpolation_service-request"
  (cl:format cl:nil "float32 spacing~%float32 shepard_power~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <interpolation_service-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <interpolation_service-request>))
  "Converts a ROS message object to a list"
  (cl:list 'interpolation_service-request
    (cl:cons ':spacing (spacing msg))
    (cl:cons ':shepard_power (shepard_power msg))
))
;//! \htmlinclude interpolation_service-response.msg.html

(cl:defclass <interpolation_service-response> (roslisp-msg-protocol:ros-message)
  ((b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0))
)

(cl:defclass interpolation_service-response (<interpolation_service-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <interpolation_service-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'interpolation_service-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name heatmap-srv:<interpolation_service-response> is deprecated: use heatmap-srv:interpolation_service-response instead.")))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <interpolation_service-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heatmap-srv:b-val is deprecated.  Use heatmap-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <interpolation_service-response>) ostream)
  "Serializes a message object of type '<interpolation_service-response>"
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <interpolation_service-response>) istream)
  "Deserializes a message object of type '<interpolation_service-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<interpolation_service-response>)))
  "Returns string type for a service object of type '<interpolation_service-response>"
  "heatmap/interpolation_serviceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'interpolation_service-response)))
  "Returns string type for a service object of type 'interpolation_service-response"
  "heatmap/interpolation_serviceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<interpolation_service-response>)))
  "Returns md5sum for a message object of type '<interpolation_service-response>"
  "bd9ec5953508bf6d64d0b75ca3f20626")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'interpolation_service-response)))
  "Returns md5sum for a message object of type 'interpolation_service-response"
  "bd9ec5953508bf6d64d0b75ca3f20626")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<interpolation_service-response>)))
  "Returns full string definition for message of type '<interpolation_service-response>"
  (cl:format cl:nil "int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'interpolation_service-response)))
  "Returns full string definition for message of type 'interpolation_service-response"
  (cl:format cl:nil "int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <interpolation_service-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <interpolation_service-response>))
  "Converts a ROS message object to a list"
  (cl:list 'interpolation_service-response
    (cl:cons ':b (b msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'interpolation_service)))
  'interpolation_service-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'interpolation_service)))
  'interpolation_service-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'interpolation_service)))
  "Returns string type for a service object of type '<interpolation_service>"
  "heatmap/interpolation_service")