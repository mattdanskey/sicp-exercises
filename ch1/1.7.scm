;; 1.7

(define (average x y)
	(/ (+ x y) 2))

(define (improve guess x)
	(average guess (/ x guess)))

(define (square x)
	(* x x))

(define (good-enough? guess x)
	(< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
	(if (good-enough? guess x)
		guess
		(sqrt-iter (improve guess x) x)))

(define (sqroot x)
	(sqrt-iter 1.0 x))

;; for very small numbers, the tolerance doesn't make sense.
;; For example, the sqroot squared of .001 is almost 70% larger than the
;; original number.
(sqroot .001) ;; ~.041245 which, when squared, is ~ .0168


;; For very large numbers, precision falls off and the condition
;; for ending is never met, resulting in an infinite loop.
;; (sqroot 1000981738913089812411241242490) ;; hangs

(define (close-enough? guess previous)
	(< (abs (- guess previous)) (/ guess 10)))

(define (sqrt-iter-v2 guess previous x)
	(if (close-enough? guess previous)
		guess
		(sqrt-iter-v2 (improve guess x) guess x)))

(define (sqroot2 x)
	(sqrt-iter-v2 1.0 2.0 x))
;; note that the .0 tells scheme not to be 'exact' (i.e. to use floating point rather than ints / fractions).
;; Without such, this procedure hangs on rather small numbers.

;; much better for smaller numbers
(sqroot2 .001)
(sqroot .001)

;; and able to handle larger numbers than sqroot
(sqroot2 1000981738490000000)
;; (sqroot 1000981738490000000) hangs (infinite loop)