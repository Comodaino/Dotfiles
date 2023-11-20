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


(ciclami_sto x in '(1 2 3 4 5) (displayln (add1 x)))