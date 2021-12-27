# abcl-big-decimals
### _Alejandro Zamora Fonseca <ale2014.zamora@gmail.com>_


A way to make calculations with Big Decimals in Common Lisp (on ABCL). Work in progress

CL-USER> (abcl-big-decimals:make-big-decimal 23234)

#<java.math.BigDecimal 23234 {70F51768}>

CL-USER> (abcl-big-decimals:make-big-decimal 232.34)

#<java.math.BigDecimal 232.339996337890625 {3FE260F9}>

CL-USER> (abcl-big-decimals:make-big-decimal "12.23423423423432342344")

#<java.math.BigDecimal 12.23423423423432342344 {738BE701}>

CL-USER> (abcl-big-decimals:divide * **)

#<java.math.BigDecimal 0.052656599927126416769363724116.... {2B9DF04F}>

CL-USER> (abcl-big-decimals:big-decimal->string *)

"0.05265659992712641676936372411657100"

CL-USER>

## License

MIT
