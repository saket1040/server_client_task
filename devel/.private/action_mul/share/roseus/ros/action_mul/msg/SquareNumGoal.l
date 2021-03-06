;; Auto-generated. Do not edit!


(when (boundp 'action_mul::SquareNumGoal)
  (if (not (find-package "ACTION_MUL"))
    (make-package "ACTION_MUL"))
  (shadow 'SquareNumGoal (find-package "ACTION_MUL")))
(unless (find-package "ACTION_MUL::SQUARENUMGOAL")
  (make-package "ACTION_MUL::SQUARENUMGOAL"))

(in-package "ROS")
;;//! \htmlinclude SquareNumGoal.msg.html


(defclass action_mul::SquareNumGoal
  :super ros::object
  :slots (_max_sq_number _wait_duration ))

(defmethod action_mul::SquareNumGoal
  (:init
   (&key
    ((:max_sq_number __max_sq_number) 0)
    ((:wait_duration __wait_duration) 0.0)
    )
   (send-super :init)
   (setq _max_sq_number (round __max_sq_number))
   (setq _wait_duration (float __wait_duration))
   self)
  (:max_sq_number
   (&optional __max_sq_number)
   (if __max_sq_number (setq _max_sq_number __max_sq_number)) _max_sq_number)
  (:wait_duration
   (&optional __wait_duration)
   (if __wait_duration (setq _wait_duration __wait_duration)) _wait_duration)
  (:serialization-length
   ()
   (+
    ;; int64 _max_sq_number
    8
    ;; float64 _wait_duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _max_sq_number
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _max_sq_number (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _max_sq_number) (= (length (_max_sq_number . bv)) 2)) ;; bignum
              (write-long (ash (elt (_max_sq_number . bv) 0) 0) s)
              (write-long (ash (elt (_max_sq_number . bv) 1) -1) s))
             ((and (class _max_sq_number) (= (length (_max_sq_number . bv)) 1)) ;; big1
              (write-long (elt (_max_sq_number . bv) 0) s)
              (write-long (if (>= _max_sq_number 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _max_sq_number s)(write-long (if (>= _max_sq_number 0) 0 #xffffffff) s)))
     ;; float64 _wait_duration
       (sys::poke _wait_duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _max_sq_number
#+(or :alpha :irix6 :x86_64)
      (setf _max_sq_number (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _max_sq_number (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _wait_duration
     (setq _wait_duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get action_mul::SquareNumGoal :md5sum-) "a923de72443fd852afda9c9f98879218")
(setf (get action_mul::SquareNumGoal :datatype-) "action_mul/SquareNumGoal")
(setf (get action_mul::SquareNumGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal
int64 max_sq_number
float64 wait_duration

")



(provide :action_mul/SquareNumGoal "a923de72443fd852afda9c9f98879218")


