; Auto-generated. Do not edit!


(cl:in-package action_mul-msg)


;//! \htmlinclude SquareNumGoal.msg.html

(cl:defclass <SquareNumGoal> (roslisp-msg-protocol:ros-message)
  ((max_sq_number
    :reader max_sq_number
    :initarg :max_sq_number
    :type cl:integer
    :initform 0)
   (wait_duration
    :reader wait_duration
    :initarg :wait_duration
    :type cl:float
    :initform 0.0))
)

(cl:defclass SquareNumGoal (<SquareNumGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SquareNumGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SquareNumGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name action_mul-msg:<SquareNumGoal> is deprecated: use action_mul-msg:SquareNumGoal instead.")))

(cl:ensure-generic-function 'max_sq_number-val :lambda-list '(m))
(cl:defmethod max_sq_number-val ((m <SquareNumGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader action_mul-msg:max_sq_number-val is deprecated.  Use action_mul-msg:max_sq_number instead.")
  (max_sq_number m))

(cl:ensure-generic-function 'wait_duration-val :lambda-list '(m))
(cl:defmethod wait_duration-val ((m <SquareNumGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader action_mul-msg:wait_duration-val is deprecated.  Use action_mul-msg:wait_duration instead.")
  (wait_duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SquareNumGoal>) ostream)
  "Serializes a message object of type '<SquareNumGoal>"
  (cl:let* ((signed (cl:slot-value msg 'max_sq_number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'wait_duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SquareNumGoal>) istream)
  "Deserializes a message object of type '<SquareNumGoal>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max_sq_number) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wait_duration) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SquareNumGoal>)))
  "Returns string type for a message object of type '<SquareNumGoal>"
  "action_mul/SquareNumGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SquareNumGoal)))
  "Returns string type for a message object of type 'SquareNumGoal"
  "action_mul/SquareNumGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SquareNumGoal>)))
  "Returns md5sum for a message object of type '<SquareNumGoal>"
  "a923de72443fd852afda9c9f98879218")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SquareNumGoal)))
  "Returns md5sum for a message object of type 'SquareNumGoal"
  "a923de72443fd852afda9c9f98879218")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SquareNumGoal>)))
  "Returns full string definition for message of type '<SquareNumGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%int64 max_sq_number~%float64 wait_duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SquareNumGoal)))
  "Returns full string definition for message of type 'SquareNumGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%int64 max_sq_number~%float64 wait_duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SquareNumGoal>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SquareNumGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'SquareNumGoal
    (cl:cons ':max_sq_number (max_sq_number msg))
    (cl:cons ':wait_duration (wait_duration msg))
))
