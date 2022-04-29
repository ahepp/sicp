#lang racket

(define (avg x y)
  (/ (+ x y) 2))

(define (sqrt-newton-estimate x y)
  (avg y (/ x y)))

(define (pct x y)
  (abs (/ (- x y) x )))

(define (sqrt-newton-delta-pct x y delta-pct)
  (cond
    ((> (pct y (sqrt-newton-estimate x y)) delta-pct) (sqrt-newton-delta-pct x (sqrt-newton-estimate x y) delta-pct))
    (else y)))

(define (sqrt-newton x)
  (sqrt-newton-delta-pct x 1 .001))
