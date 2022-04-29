#lang racket

(define (square a)
  (* a a))

(define (sum-of-squares a b)
  (+ (square a) (square b)))

(define (least a b c)
  (cond
    ((and (< a b) (< a c)) a)
    ((and (< b a) (< b c)) b)
    (else c)))

(define (sum-of-greater-squares a b c)
  (cond
    ((= a (least a b c)) (sum-of-squares b c))
    ((= b (least a b c)) (sum-of-squares a c))
    (else (sum-of-squares a b))))
