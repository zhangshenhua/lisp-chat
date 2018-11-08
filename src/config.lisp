;; Common Lisp Script
;; Manoel Vilela

(defpackage :lisp-chat-config
  (:use :cl)
  (:export :*debug*
           :*host*
           :*port*))

(in-package :lisp-chat-config)

(defparameter *debug* t)
(defparameter *host* "0.0.0.0")
(defparameter *port* 5558)
