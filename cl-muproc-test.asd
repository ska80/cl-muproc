;;; -*- lisp -*-
;;;
;;; This file contains property of Mu Aps.
;;; Copyright (c) 2005.  All rights reserved.
;;;

(in-package #:cl-user)
(defpackage #:dk.mu.muproc-test.system (:use #:asdf #:cl))
(in-package #:dk.mu.muproc-test.system)

(defsystem cl-muproc-test
  :depends-on (:cl-muproc :rt)
  :components
  ((:module "tests"
            :serial t
            :components
            ((:file "packages")
             (:file "muproc-test-util" :depends-on ("packages"))
             (:file "muproc-test" :depends-on ("muproc-test-util"))
             (:file "gensrv1" :depends-on ("muproc-test-util"))
             (:file "gensrv1-test" :depends-on ("gensrv1" "muproc-test-util"))))))
