;; 1.8

(define (square x) (* x x))

(define (improve-guess guess x)
	(/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? guess prev)
	(< (abs (- guess prev)) (/ guess 20)))  ;;arbitrary precision

(define (cube-iter guess prev x)
	(if (good-enough? guess prev)
		guess
		(cube-iter (improve-guess guess x) guess x)))

(define (cuberoot x)
	(cube-iter 1.0 2.0 x))

(cuberoot 1000)