#lang racket

(define-syntax iterazione_per
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


(iterazione_per x dentro_a '(1 2 3 4) (displayln (add1 x)))