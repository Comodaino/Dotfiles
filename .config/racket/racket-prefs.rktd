(
 (readline-input-history
  (
   #"exit"
   #"( test-cont )"
   #"( define ( test-cont )\n(let (( x 0))\n( call / cc\n( lambda (k ) ; k contains the continuation\n( set! saved-cont k ))) ; here is saved\n;; this *is* the continuation\n(set! x (+ x 1))\n( display x)\n( newline )))"
   #"( define saved-cont #f )"
   #"(+ 3\n( call / cc\n( lambda ( exit )\n( for-each ( lambda ( x )\n( when ( negative ? x )\n( exit x )))\n\342\200\231(54 0 37 -3 245 19))\n10)))"
   #"exit"
   #"quit"
   #"exit"
   #"clear"
   #"(let ([x 5])\n    (let ([x 2]\n          [y x])\n      (list y x)))"
   #"(let ([x 5]) (let ([y 2])[y x\n                           ]))"
   #"(let ([x 5]) (let ([x 2])x))"
   #"(let ([x 5]) (let ([x 2])) x)"
   #"(let ([(x, y)  (5,4)]) x)"
   #"(let ([y 5]) x)"
   #"(let ([x 5]) x)"
   #"(eq? \"casa\" (string-append \"ca\" \"sa\" ))"
   #"(equal? \"casa\" (string-append \"ca\" \"sa\" ))"
   #"(equal? 'casa (string-append \"ca\" \"sa\" ))"
   #"(equal? 'casa (string-append \"ca\" 'sa ))"
   #"(equal? 'casa (string-append 'ca 'sa ))"
  ))
)
