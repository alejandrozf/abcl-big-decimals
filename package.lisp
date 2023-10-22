;;;; package.lisp

(defpackage #:abcl-big-decimals
  (:use #:cl)
  (:shadow #:>)
  (:export
   #:make-big-decimal
   #:divide
   #:add
   #:multiply
   #:subtract
   #:pow
   #:big-decimal->string
   #:big-decimal->plain-string
   #:big-decimal->double-float))

(in-package :abcl-big-decimals)

(export '>)
