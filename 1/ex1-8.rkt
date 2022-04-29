#lang racket

(define (cbrt-newton-estimate x y)
  (/ (+ (/ x (* y y)) (* 2 y)) 3))

(define (cbrt-guess-within x y tol)
  (< (abs (- x (* y y y))) tol))

(define (cbrt-newton-tol x y tol)
  (cond
    ((cbrt-guess-within x y tol) y)
    (else (cbrt-newton-tol x (cbrt-newton-estimate x y) tol))))
