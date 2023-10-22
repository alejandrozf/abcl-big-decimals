# abcl-big-decimals
### _Alejandro Zamora Fonseca <ale2014.zamora@gmail.com>_


A way to make calculations with Big Decimals in Common Lisp (on ABCL). Work in progress

```
CL-USER> (abcl-big-decimals:make-big-decimal 23234)

#<java.math.BigDecimal 23234 {124A6BF1}>

CL-USER> (abcl-big-decimals:make-big-decimal 232.34)

#<java.math.BigDecimal 232.339996337890625 {27A25E9B}>

CL-USER> (abcl-big-decimals:make-big-decimal "12.23423423423432342344")

#<java.math.BigDecimal 12.23423423423432342344 {17B282B0}>

CL-USER> (abcl-big-decimals:divide * **)

#<java.math.BigDecimal 0.052656599927126416769363724116.... {56666654}>

CL-USER> (abcl-big-decimals:add * **)

#<java.math.BigDecimal 12.28689083416144984020936372411.... {7B769B95}>

CL-USER> (abcl-big-decimals:subtract * **)

#<java.math.BigDecimal 12.23423423423432342344000000000.... {403A0893}>

CL-USER> (abcl-big-decimals:multiply * **)

#<java.math.BigDecimal 150.3207004755979326418574956291.... {6651B006}>

CL-USER> (abcl-big-decimals:big-decimal->string *)

"150.3207004755979326418574956291764"

CL-USER> (abcl-big-decimals:big-decimal->plain-string **)

"150.3207004755979326418574956291764"

CL-USER>
```

There is also a way to reader macro to create quickly Big decimal objects (use with caution in the code)

```
CL-USER> B12
#<java.math.BigDecimal 12 {3D1B473A}>
CL-USER> B0.12d0
#<java.math.BigDecimal 0.119999999999999995559107901499.... {4E86AB45}>
CL-USER> B"0.121233"
#<java.math.BigDecimal 0.121233 {3CF0E3CF}>
CL-USER> B0
#<java.math.BigDecimal 0 {1A8502B7}>
CL-USER>
```

## License

MIT
