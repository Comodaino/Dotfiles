#lang racket
(displayln "ciao")

(define (say-hello) 
    (displayln "ciao"))

(define (greet name)
    (displayln (string-append "hello " name "!")))

(greet "paolo")

(define (greet-paolo name)
    (if (equal? name "andrea")
    (displayln (string-append "hello " name "!"))
    (displayln (string-append "no paolo!"))))

(greet-paolo "paolo")
(greet-paolo "paolone")
    
