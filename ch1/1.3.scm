;1.3
(define (sum-squares-of-biggest a b c)
	(define (least a b c) (and (not (> a b)) (not (> a c))))
	(define (sum-squares a b)
		(+ (* a a) (* b b)))
	(cond ((least a b c) (sum-squares b c))
		((least b c a) (sum-squares c a))
		(else (sum-squares b a))))

(sum-squares-of-biggest 1 2 3)
(sum-squares-of-biggest 2 1 3)
(sum-squares-of-biggest 3 1 2)
(sum-squares-of-biggest 3 2 1)
(sum-squares-of-biggest 2 2 2)