;; Auto-generated. Do not edit!


(when (boundp 'msg_serv::MulTwoInts)
  (if (not (find-package "MSG_SERV"))
    (make-package "MSG_SERV"))
  (shadow 'MulTwoInts (find-package "MSG_SERV")))
(unless (find-package "MSG_SERV::MULTWOINTS")
  (make-package "MSG_SERV::MULTWOINTS"))
(unless (find-package "MSG_SERV::MULTWOINTSREQUEST")
  (make-package "MSG_SERV::MULTWOINTSREQUEST"))
(unless (find-package "MSG_SERV::MULTWOINTSRESPONSE")
  (make-package "MSG_SERV::MULTWOINTSRESPONSE"))

(in-package "ROS")





(defclass msg_serv::MulTwoIntsRequest
  :super ros::object
  :slots (_a _b ))

(defmethod msg_serv::MulTwoIntsRequest
  (:init
   (&key
    ((:a __a) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _b (round __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; int64 _a
    8
    ;; int64 _b
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _a
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _a (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _a) (= (length (_a . bv)) 2)) ;; bignum
              (write-long (ash (elt (_a . bv) 0) 0) s)
              (write-long (ash (elt (_a . bv) 1) -1) s))
             ((and (class _a) (= (length (_a . bv)) 1)) ;; big1
              (write-long (elt (_a . bv) 0) s)
              (write-long (if (>= _a 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _a s)(write-long (if (>= _a 0) 0 #xffffffff) s)))
     ;; int64 _b
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _b (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _b) (= (length (_b . bv)) 2)) ;; bignum
              (write-long (ash (elt (_b . bv) 0) 0) s)
              (write-long (ash (elt (_b . bv) 1) -1) s))
             ((and (class _b) (= (length (_b . bv)) 1)) ;; big1
              (write-long (elt (_b . bv) 0) s)
              (write-long (if (>= _b 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _b s)(write-long (if (>= _b 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _a
#+(or :alpha :irix6 :x86_64)
      (setf _a (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _a (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _b
#+(or :alpha :irix6 :x86_64)
      (setf _b (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _b (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass msg_serv::MulTwoIntsResponse
  :super ros::object
  :slots (_mul ))

(defmethod msg_serv::MulTwoIntsResponse
  (:init
   (&key
    ((:mul __mul) 0)
    )
   (send-super :init)
   (setq _mul (round __mul))
   self)
  (:mul
   (&optional __mul)
   (if __mul (setq _mul __mul)) _mul)
  (:serialization-length
   ()
   (+
    ;; int64 _mul
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _mul
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _mul (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _mul) (= (length (_mul . bv)) 2)) ;; bignum
              (write-long (ash (elt (_mul . bv) 0) 0) s)
              (write-long (ash (elt (_mul . bv) 1) -1) s))
             ((and (class _mul) (= (length (_mul . bv)) 1)) ;; big1
              (write-long (elt (_mul . bv) 0) s)
              (write-long (if (>= _mul 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _mul s)(write-long (if (>= _mul 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _mul
#+(or :alpha :irix6 :x86_64)
      (setf _mul (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _mul (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass msg_serv::MulTwoInts
  :super ros::object
  :slots ())

(setf (get msg_serv::MulTwoInts :md5sum-) "775025c798d6c657309501de3b5e15ed")
(setf (get msg_serv::MulTwoInts :datatype-) "msg_serv/MulTwoInts")
(setf (get msg_serv::MulTwoInts :request) msg_serv::MulTwoIntsRequest)
(setf (get msg_serv::MulTwoInts :response) msg_serv::MulTwoIntsResponse)

(defmethod msg_serv::MulTwoIntsRequest
  (:response () (instance msg_serv::MulTwoIntsResponse :init)))

(setf (get msg_serv::MulTwoIntsRequest :md5sum-) "775025c798d6c657309501de3b5e15ed")
(setf (get msg_serv::MulTwoIntsRequest :datatype-) "msg_serv/MulTwoIntsRequest")
(setf (get msg_serv::MulTwoIntsRequest :definition-)
      "int64 a
int64 b
---
int64 mul

")

(setf (get msg_serv::MulTwoIntsResponse :md5sum-) "775025c798d6c657309501de3b5e15ed")
(setf (get msg_serv::MulTwoIntsResponse :datatype-) "msg_serv/MulTwoIntsResponse")
(setf (get msg_serv::MulTwoIntsResponse :definition-)
      "int64 a
int64 b
---
int64 mul

")



(provide :msg_serv/MulTwoInts "775025c798d6c657309501de3b5e15ed")


