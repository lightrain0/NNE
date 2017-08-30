; Auto-generated. Do not edit!


(cl:in-package heatmap-msg)


;//! \htmlinclude wifi_signal.msg.html

(cl:defclass <wifi_signal> (roslisp-msg-protocol:ros-message)
  ((essid
    :reader essid
    :initarg :essid
    :type cl:string
    :initform "")
   (link_quality
    :reader link_quality
    :initarg :link_quality
    :type cl:fixnum
    :initform 0)
   (link_quality_max
    :reader link_quality_max
    :initarg :link_quality_max
    :type cl:fixnum
    :initform 0)
   (bitrate
    :reader bitrate
    :initarg :bitrate
    :type cl:integer
    :initform 0))
)

(cl:defclass wifi_signal (<wifi_signal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wifi_signal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wifi_signal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name heatmap-msg:<wifi_signal> is deprecated: use heatmap-msg:wifi_signal instead.")))

(cl:ensure-generic-function 'essid-val :lambda-list '(m))
(cl:defmethod essid-val ((m <wifi_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heatmap-msg:essid-val is deprecated.  Use heatmap-msg:essid instead.")
  (essid m))

(cl:ensure-generic-function 'link_quality-val :lambda-list '(m))
(cl:defmethod link_quality-val ((m <wifi_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heatmap-msg:link_quality-val is deprecated.  Use heatmap-msg:link_quality instead.")
  (link_quality m))

(cl:ensure-generic-function 'link_quality_max-val :lambda-list '(m))
(cl:defmethod link_quality_max-val ((m <wifi_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heatmap-msg:link_quality_max-val is deprecated.  Use heatmap-msg:link_quality_max instead.")
  (link_quality_max m))

(cl:ensure-generic-function 'bitrate-val :lambda-list '(m))
(cl:defmethod bitrate-val ((m <wifi_signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader heatmap-msg:bitrate-val is deprecated.  Use heatmap-msg:bitrate instead.")
  (bitrate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wifi_signal>) ostream)
  "Serializes a message object of type '<wifi_signal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'essid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'essid))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'link_quality)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'link_quality_max)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'bitrate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wifi_signal>) istream)
  "Deserializes a message object of type '<wifi_signal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'essid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'essid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'link_quality)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'link_quality_max)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bitrate) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wifi_signal>)))
  "Returns string type for a message object of type '<wifi_signal>"
  "heatmap/wifi_signal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wifi_signal)))
  "Returns string type for a message object of type 'wifi_signal"
  "heatmap/wifi_signal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wifi_signal>)))
  "Returns md5sum for a message object of type '<wifi_signal>"
  "b1bcb6a0e5568de595abd530de98b7d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wifi_signal)))
  "Returns md5sum for a message object of type 'wifi_signal"
  "b1bcb6a0e5568de595abd530de98b7d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wifi_signal>)))
  "Returns full string definition for message of type '<wifi_signal>"
  (cl:format cl:nil "string essid~%uint8 link_quality~%uint8 link_quality_max~%int32 bitrate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wifi_signal)))
  "Returns full string definition for message of type 'wifi_signal"
  (cl:format cl:nil "string essid~%uint8 link_quality~%uint8 link_quality_max~%int32 bitrate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wifi_signal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'essid))
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wifi_signal>))
  "Converts a ROS message object to a list"
  (cl:list 'wifi_signal
    (cl:cons ':essid (essid msg))
    (cl:cons ':link_quality (link_quality msg))
    (cl:cons ':link_quality_max (link_quality_max msg))
    (cl:cons ':bitrate (bitrate msg))
))
