;;;; abcl-big-decimals.lisp

(in-package #:abcl-big-decimals)

(defmethod divide ())

;; CL-USER> (jnew "java.math.BigDecimal" 34)
;; #<java.math.BigDecimal 34 {2BA4CEA}>
;; CL-USER> (jnew "java.math.BigDecimal" 548)
;; #<java.math.BigDecimal 548 {53B46CED}>
;; CL-USER> (jnew "java.math.BigDecimal" 1041)
;; #<java.math.BigDecimal 1041 {6EAFFCBF}>
;; CL-USER> (jmethod "java.math.BigDecimal" "divide"  "java.math.BigDecimal")
;; #<method public java.math.BigDecimal java.math.BigDecimal.divide(java.math.BigDecimal)>
;; ION java.lang.ArithmeticException: Non-terminating decimal expansion; no exact representable decimal result. {7E8C0AE0}>
;; CL-USER> (jfield "java.math.MathContext" "DECIMAL128")
;; #<java.math.MathContext precision=34 roundingMode=HALF_E.... {15D53D64}>
;; CL-USER> (jmethod "java.math.BigDecimal" "divide"  "java.math.BigDecimal" "java.math.MathContext")
;; #<method public java.math.BigDecimal java.math.BigDecimal.divide(java.math.BigDecimal,java.math.MathContext)>
;; CL-USER> (jcall #v11 #v8  #v9 #v10)
;; #<java.math.BigDecimal 1.899635036496350364963503649635.... {1504E6F9}>
;; CL-USER>
