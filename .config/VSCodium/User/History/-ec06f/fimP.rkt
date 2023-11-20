#lang racket
(displayln "ciao")

(define (say-hello) 
    (displayln "ciao"))

(define (greet name)
    (displayln (string-append "hello " name "!")))

(greet "paolo")