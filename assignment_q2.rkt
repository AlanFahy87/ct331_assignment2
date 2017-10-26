#lang racket

(provide ins_beg)


(define (ins_beg el lst)
  (display "ins_beg!\n")
 (append (list el) lst))
(ins_beg 1 '(2 4 5))

(provide ins_end)

(define (ins_end el lst)
  (display "ins_end!\n")
 (append lst(list el)))
(ins_end 'a '(b c d))

(provide cout_top_level)

(define (cout_top_level lst)
  (if (empty? lst) 0
      (+ (cout_top_level(cdr lst)) 1)))
(display "Count is: \n")
(cout_top_level '(a b c d e))

(provide count_instances)

(define (count_instances item lst)
  (cond [(empty? lst) 0]
        [(equal? item(car lst))
         (+ 1 (count_instances item (cdr lst)))]
        [else (count_instances item(cdr lst))]))
(display "Number of intances: \n")
(count_instances '1 '(1 1 1 4 5))

(provide count_instances_tr)

(define (count_instances_tr item lst)
  (display "Number of intances_tr: \n")
  (count_instances_tr_helper item lst 0))
(define (count_instances_tr_helper item lst x)
  (cond
    [(empty? lst) x]
    [(equal? item (car lst))
     (count_instances_tr_helper item (cdr lst) (+ x 1))]
    [else (count_instances_tr_helper item (cdr lst) x)]))

(count_instances_tr '1 '(1 1 1 1 1 4 5))

(provide count_instances_deep)

(define (count_instances_deep item lst)
  (cond
    [(empty? lst) 0]
    [(equal? item (car lst))
     (+  (count_instances_deep item (cdr lst)) 1)]
    [(list? (car lst))
     (+ (count_instances_deep item (car lst))
        (count_instances_deep item (cdr lst)))]
    [else (count_instances_deep item (cdr lst))]))
(display "Number of intances_deep: \n")

(count_instances_deep '1 '(1 '(1 '('(1) 1) 1) 4 5))