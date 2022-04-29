#lang racket

(define (avg x y)
  (/ (+ x y) 2))

(define (sqrt-newton-estimate x y)
  (avg y (/ x y)))

(define (sqrt-newton-n x y n)
  (cond
    ((> n 0) (sqrt-newton-n x (sqrt-newton-estimate x y) (- n 1)))
    (else y)))

(define (sqrt-guess-within x y tol)
  (< (abs (- x (* y y))) tol))
  
(define (sqrt-newton-tol x y tol)
  (cond
    ((sqrt-guess-within x y tol) y)
    (else (sqrt-newton-tol x (sqrt-newton-estimate x y) tol))))

(define (sqrt-newton x)
  (sqrt-newton-tol x 1 .001))
