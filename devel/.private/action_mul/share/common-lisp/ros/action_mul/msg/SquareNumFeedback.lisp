; Auto-generated. Do not edit!


(cl:in-package action_mul-msg)


;//! \htmlinclude SquareNumFeedback.msg.html

(cl:defclass <SquareNumFeedback> (roslisp-msg-protocol:ros-message)
  ((percentage
    :reader percentage
    :initarg :percentage
    :type cl:float
    :initform 0.0))
)

(cl:defclass SquareNumFeedback (<SquareNumFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SquareNumFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SquareNumFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name action_mul-msg:<SquareNumFeedback> is deprecated: use action_mul-msg:SquareNumFeedback instead.")))

(cl:ensure-generic-function 'percentage-val :lambda-list '(m))
(cl:defmethod percentage-val ((m <SquareNumFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader action_mul-msg:percentage-val is deprecated.  Use action_mul-msg:percentage instead.")
  (percentage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SquareNumFeedback>) ostream)
  "Serializes a message object of type '<SquareNumFeedback>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'percentage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SquareNumFeedback>) istream)
  "Deserializes a message object of type '<SquareNumFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'percentage) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SquareNumFeedback>)))
  "Returns string type for a message object of type '<SquareNumFeedback>"
  "action_mul/SquareNumFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SquareNumFeedback)))
  "Returns string type for a message object of type 'SquareNumFeedback"
  "action_mul/SquareNumFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SquareNumFeedback>)))
  "Returns md5sum for a message object of type '<SquareNumFeedback>"
  "46302a97c06fe5a4416c427fe6ee8804")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SquareNumFeedback)))
  "Returns md5sum for a message object of type 'SquareNumFeedback"
  "46302a97c06fe5a4416c427fe6ee8804")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SquareNumFeedback>)))
  "Returns full string definition for message of type '<SquareNumFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%float64 percentage~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SquareNumFeedback)))
  "Returns full string definition for message of type 'SquareNumFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%float64 percentage~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SquareNumFeedback>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SquareNumFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'SquareNumFeedback
    (cl:cons ':percentage (percentage msg))
))
