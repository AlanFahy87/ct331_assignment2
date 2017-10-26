#lang racket
(cons 1 2)
(cons 1 (cons 2 (cons 3 empty)))
(cons "Cons"(cons 8 (cons(cons 1 (cons 2 (cons 3 empty)))'())))
(list "List" 8(list 1 2 3 ))
(append '("string") '(8) '((567)))