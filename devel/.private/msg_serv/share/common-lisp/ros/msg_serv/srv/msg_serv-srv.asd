
(cl:in-package :asdf)

(defsystem "msg_serv-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MulTwoInts" :depends-on ("_package_MulTwoInts"))
    (:file "_package_MulTwoInts" :depends-on ("_package"))
  ))