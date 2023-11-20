#lang racket

(define-syntax effettui_il_comando_per_ogni
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


(define-syntax effettui_il_comando_finche
    (syntax-rules()
        [(_ cond body ...)
            (begin
                (unless (false? cond)
                (let loop ()
                    (begin
                        body ...
                            (unless (false? cond)
                                (loop))))))]))


(effettui_il_comando_per_ogni x dentro_a '(1 2 3 4) (displayln (add1 x)))
(define x 0)
(effettui_il_comando_finche (< x 5) (displayln x) (let x (sub1 x)))