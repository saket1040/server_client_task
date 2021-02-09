; Auto-generated. Do not edit!


(cl:in-package msg_serv-srv)


;//! \htmlinclude MulTwoInts-request.msg.html

(cl:defclass <MulTwoInts-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0))
)

(cl:defclass MulTwoInts-request (<MulTwoInts-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MulTwoInts-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MulTwoInts-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msg_serv-srv:<MulTwoInts-request> is deprecated: use msg_serv-srv:MulTwoInts-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <MulTwoInts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_serv-srv:a-val is deprecated.  Use msg_serv-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <MulTwoInts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_serv-srv:b-val is deprecated.  Use msg_serv-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MulTwoInts-request>) ostream)
  "Serializes a message object of type '<MulTwoInts-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MulTwoInts-request>) istream)
  "Deserializes a message object of type '<MulTwoInts-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MulTwoInts-request>)))
  "Returns string type for a service object of type '<MulTwoInts-request>"
  "msg_serv/MulTwoIntsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MulTwoInts-request)))
  "Returns string type for a service object of type 'MulTwoInts-request"
  "msg_serv/MulTwoIntsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MulTwoInts-request>)))
  "Returns md5sum for a message object of type '<MulTwoInts-request>"
  "775025c798d6c657309501de3b5e15ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MulTwoInts-request)))
  "Returns md5sum for a message object of type 'MulTwoInts-request"
  "775025c798d6c657309501de3b5e15ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MulTwoInts-request>)))
  "Returns full string definition for message of type '<MulTwoInts-request>"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MulTwoInts-request)))
  "Returns full string definition for message of type 'MulTwoInts-request"
  (cl:format cl:nil "int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MulTwoInts-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MulTwoInts-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MulTwoInts-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude MulTwoInts-response.msg.html

(cl:defclass <MulTwoInts-response> (roslisp-msg-protocol:ros-message)
  ((mul
    :reader mul
    :initarg :mul
    :type cl:integer
    :initform 0))
)

(cl:defclass MulTwoInts-response (<MulTwoInts-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MulTwoInts-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MulTwoInts-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msg_serv-srv:<MulTwoInts-response> is deprecated: use msg_serv-srv:MulTwoInts-response instead.")))

(cl:ensure-generic-function 'mul-val :lambda-list '(m))
(cl:defmethod mul-val ((m <MulTwoInts-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_serv-srv:mul-val is deprecated.  Use msg_serv-srv:mul instead.")
  (mul m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MulTwoInts-response>) ostream)
  "Serializes a message object of type '<MulTwoInts-response>"
  (cl:let* ((signed (cl:slot-value msg 'mul)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MulTwoInts-response>) istream)
  "Deserializes a message object of type '<MulTwoInts-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mul) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MulTwoInts-response>)))
  "Returns string type for a service object of type '<MulTwoInts-response>"
  "msg_serv/MulTwoIntsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MulTwoInts-response)))
  "Returns string type for a service object of type 'MulTwoInts-response"
  "msg_serv/MulTwoIntsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MulTwoInts-response>)))
  "Returns md5sum for a message object of type '<MulTwoInts-response>"
  "775025c798d6c657309501de3b5e15ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MulTwoInts-response)))
  "Returns md5sum for a message object of type 'MulTwoInts-response"
  "775025c798d6c657309501de3b5e15ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MulTwoInts-response>)))
  "Returns full string definition for message of type '<MulTwoInts-response>"
  (cl:format cl:nil "int64 mul~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MulTwoInts-response)))
  "Returns full string definition for message of type 'MulTwoInts-response"
  (cl:format cl:nil "int64 mul~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MulTwoInts-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MulTwoInts-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MulTwoInts-response
    (cl:cons ':mul (mul msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MulTwoInts)))
  'MulTwoInts-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MulTwoInts)))
  'MulTwoInts-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MulTwoInts)))
  "Returns string type for a service object of type '<MulTwoInts>"
  "msg_serv/MulTwoInts")