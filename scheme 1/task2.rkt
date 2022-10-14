#lang scheme
(define (z2 h m)
  (abs
   (- (+ (* m 0.5) (* h 30)) (* 6 m))
   ))
(define (ang h m)
  (min
   (z2 h m)
   ( - 360 (z2 h m))
   )
)