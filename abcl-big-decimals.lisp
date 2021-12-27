;;;; abcl-big-decimals.lisp

(in-package #:abcl-big-decimals)

(defun make-big-decimal (big-decimal-designator)
  "BIG-DECIMAL-DESIGNATOR can be a real or a string"
  (java:jnew "java.math.BigDecimal" big-decimal-designator))

(defun divide (big-decimal-1 big-decimal-2)
  "Divide two BIG-DECIMAL objects"
  ;; TODO: precision should be a parameter
  (let ((jmethod-instance (java:jmethod "java.math.BigDecimal" "divide"
                                        "java.math.BigDecimal" "java.math.MathContext"))
        (precision (java:jfield "java.math.MathContext" "DECIMAL128")))
    (java:jcall jmethod-instance big-decimal-1 big-decimal-2 precision)))

(defun big-decimal->string (big-decimal)
  "Convert BIG-DECIMAL to a CL string"
  (let ((jmethod-instance (java:jmethod "java.math.BigDecimal" "toString")))
    (java:jcall jmethod-instance big-decimal)))
