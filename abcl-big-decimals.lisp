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

(defun add (big-decimal-1 big-decimal-2)
  "Add two BIG-DECIMAL objects"
  ;; TODO: precision should be a parameter
  (let ((jmethod-instance (java:jmethod "java.math.BigDecimal" "add"
                                        "java.math.BigDecimal" "java.math.MathContext"))
        (precision (java:jfield "java.math.MathContext" "DECIMAL128")))
    (java:jcall jmethod-instance big-decimal-1 big-decimal-2 precision)))

(defun multiply (big-decimal-1 big-decimal-2)
  "Multiply two BIG-DECIMAL objects"
  ;; TODO: precision should be a parameter
  (let ((jmethod-instance (java:jmethod "java.math.BigDecimal" "multiply"
                                        "java.math.BigDecimal" "java.math.MathContext"))
        (precision (java:jfield "java.math.MathContext" "DECIMAL128")))
    (java:jcall jmethod-instance big-decimal-1 big-decimal-2 precision)))

(defun subtract (big-decimal-1 big-decimal-2)
  "Subtract two BIG-DECIMAL objects"
  ;; TODO: precision should be a parameter
  (let ((jmethod-instance (java:jmethod "java.math.BigDecimal" "subtract"
                                        "java.math.BigDecimal" "java.math.MathContext"))
        (precision (java:jfield "java.math.MathContext" "DECIMAL128")))
    (java:jcall jmethod-instance big-decimal-1 big-decimal-2 precision)))

(defun big-decimal->string (big-decimal)
  "Convert BIG-DECIMAL to a CL string (can use scientific notation if needed)"
  (let ((jmethod-instance (java:jmethod "java.math.BigDecimal" "toString")))
    (java:jcall jmethod-instance big-decimal)))

(defun big-decimal->plain-string (big-decimal)
  "Convert BIG-DECIMAL to a plain CL string"
  (let ((jmethod-instance (java:jmethod "java.math.BigDecimal" "toPlainString")))
    (java:jcall jmethod-instance big-decimal)))
