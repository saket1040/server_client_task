; Auto-generated. Do not edit!


(cl:in-package action_mul-msg)


;//! \htmlinclude SquareNumActionGoal.msg.html

(cl:defclass <SquareNumActionGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal
    :reader goal
    :initarg :goal
    :type action_mul-msg:SquareNumGoal
    :initform (cl:make-instance 'action_mul-msg:SquareNumGoal)))
)

(cl:defclass SquareNumActionGoal (<SquareNumActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SquareNumActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SquareNumActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name action_mul-msg:<SquareNumActionGoal> is deprecated: use action_mul-msg:SquareNumActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SquareNumActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader action_mul-msg:header-val is deprecated.  Use action_mul-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <SquareNumActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader action_mul-msg:goal_id-val is deprecated.  Use action_mul-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <SquareNumActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader action_mul-msg:goal-val is deprecated.  Use action_mul-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SquareNumActionGoal>) ostream)
  "Serializes a message object of type '<SquareNumActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SquareNumActionGoal>) istream)
  "Deserializes a message object of type '<SquareNumActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SquareNumActionGoal>)))
  "Returns string type for a message object of type '<SquareNumActionGoal>"
  "action_mul/SquareNumActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SquareNumActionGoal)))
  "Returns string type for a message object of type 'SquareNumActionGoal"
  "action_mul/SquareNumActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SquareNumActionGoal>)))
  "Returns md5sum for a message object of type '<SquareNumActionGoal>"
  "8eb3c167d68d7e587ae1d66a797a3f13")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SquareNumActionGoal)))
  "Returns md5sum for a message object of type 'SquareNumActionGoal"
  "8eb3c167d68d7e587ae1d66a797a3f13")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SquareNumActionGoal>)))
  "Returns full string definition for message of type '<SquareNumActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%SquareNumGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: action_mul/SquareNumGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%int64 max_sq_number~%float64 wait_duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SquareNumActionGoal)))
  "Returns full string definition for message of type 'SquareNumActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%SquareNumGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: action_mul/SquareNumGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%int64 max_sq_number~%float64 wait_duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SquareNumActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SquareNumActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'SquareNumActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
