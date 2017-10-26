#lang racket

(define binary_tree '(((() 2 ()) 5 (() 7 ())) 10 ((() 12 ()) 15 (() 17 ()))))

(provide display_tree)

(define (display_tree tree)
  (begin (cond [(not (empty? (car tree)))
                (display_tree  (car tree))])
         (display  (cadr tree))(display"\n")
         (cond [(not (empty? (caddr tree)))
                (display_tree  (caddr tree))])))
(display "Binary Tree\n")
(display_tree  binary_tree)

(provide locate_in_tree)
(define (locate_in_tree item tree)
  (cond [(empty? tree) #f]
        [(equal? item (cadr tree)) #t]
        [(< item (cadr tree)) (locate_in_tree item (car tree))]
        [else (locate_in_tree item (caddr tree))]))
(display "\nLocated\n")
(locate_in_tree 10 binary_tree)

(provide insert)


(provide sort_list)

(provide ascending_order)