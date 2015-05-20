;; 1.11

;; recursive
(define (recursive-f n)
	(if (< n 3)
		n
		(+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))

(recursive-f 0)
(recursive-f 1)
(recursive-f 2)
(recursive-f 3)
(recursive-f 4)
(recursive-f 5)
(recursive-f 6)
(recursive-f 7)
(recursive-f 8)

;; iterative

;; getting a feel for the structure / flow
;; (f 3) = (+ (f 2) +_(* 2 (f 1)) (* 3 (f 0)))
;; (f 4) = (+ (f 3) (* 2 (f 2)) (* 3 (f 1)))
;; (f 5) = (+ (f 4) (* 2 (f 3)) (* 3 (f 2)))

(define (f n)
	(define (total first second third)
		(+ first (* 2 second) (* 3 third)))
	(define (f-iter n current first second third)
		(cond ((< n 3) n)
		((= current n) (total first second third))
		(else
		(f-iter n
			(+ 1 current)
			(total first second third)
			first
			second))))
	(f-iter n 3 2 1 0))

(f 0)
(f 1)
(f 2)
(f 3)
(f 4)
(f 5)
(f 6)
(f 7)
(f 8)