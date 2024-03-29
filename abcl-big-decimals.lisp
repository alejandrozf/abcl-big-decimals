;;;; abcl-big-decimals.lisp

(in-package #:abcl-big-decimals)

(defun make-big-decimal (big-decimal-designator)
  "BIG-DECIMAL-DESIGNATOR can be a real or a string"
  (java:jnew "java.math.BigDecimal" big-decimal-designator))


(macrolet ((defoperator (name)
             `(defun ,name (big-decimal-1 big-decimal-2)
                ,(format nil "~a two BIG-DECIMAL objects" name)
                ;; TODO: precision should be a parameter
                (let ((jmethod-instance (java:jmethod "java.math.BigDecimal"
                                                      ,(string-downcase (write-to-string name))
                                                      "java.math.BigDecimal" "java.math.MathContext"))
                      (precision (java:jfield "java.math.MathContext" "DECIMAL128")))
                  (java:jcall jmethod-instance big-decimal-1 big-decimal-2 precision)))))

  (defoperator divide)
  (defoperator add)
  (defoperator multiply)
  (defoperator subtract))


(defun big-decimal->string (big-decimal)
  "Convert BIG-DECIMAL to a CL string (can use scientific notation if needed)"
  (let ((jmethod-instance (java:jmethod "java.math.BigDecimal" "toString")))
    (java:jcall jmethod-instance big-decimal)))

(defun big-decimal->plain-string (big-decimal)
  "Convert BIG-DECIMAL to a plain CL string"
  (let ((jmethod-instance (java:jmethod "java.math.BigDecimal" "toPlainString")))
    (java:jcall jmethod-instance big-decimal)))

(defun big-decimal->double-float (big-decimal)
  "Convert BIG-DECIMAL to a double-float value"
  (let ((jmethod-instance (java:jmethod "java.math.BigDecimal" "doubleValue")))
    (java:jcall jmethod-instance big-decimal)))

(defun pow (big-decimal n)
  (let ((result (make-big-decimal 1)))
    (dotimes (i n result)
      (setf result (multiply big-decimal result)))))


(defun > (big-dec-a big-dec-b)
  (= (java:jcall
      "compareTo"
      big-dec-a big-dec-b)
     1))


(defun read-big-decimal (stream char)
  (declare (ignore char))
  `(abcl-big-decimals:make-big-decimal ,(read stream t nil t)))


(set-macro-character #\B #'read-big-decimal)
