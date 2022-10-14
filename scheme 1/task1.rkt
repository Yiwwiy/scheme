#lang scheme
(define (z1 a x y)
(cond ((>= y 0) (abs (- (sqrt (+ (* x x) (* y y))) (abs a))))
((< y 0) (if
(and
(>= (abs y) (abs a))
(>= (abs x) (abs a))
)
(* (sqrt (+ (* x x) (* y y)))(- 1 (/ (abs a) (abs y))))

(min
(abs (- (abs x) (abs a)))
(abs (- (abs y) (abs a)))
)
))
)
)