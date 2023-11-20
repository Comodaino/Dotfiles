#lang racket

(define-syntax ciclami_sto
    (syntax-rules (dentro_a) 
        [(_ item dentro_a lst body ...)    
            (begin
                (unless (list? lst) (error "Fratm passami na cazzo di lista"))
                (let loop ([item (car lst)]
                           [rest (cdr lst)])
                    (begin
                        body ...
                        (unless (null? rest)
                            (loop (car rest) (cdr rest))))))]))


(ciclami_sto x dentro_a "sc" (displayln (add1 x)))