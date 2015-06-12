;; 1.12

(define (pascal row element)
	(cond ((< element 1) 0)
		((> element row) 0)
		((= element 1) 1)
		(else (+ (pascal (- row 1) element)
				(pascal (- row 1) (- element 1))))))

(pascal 1 1) ;1
(pascal 2 1) ;1
(pascal 2 2) ;1
(pascal 3 2) ;1
(pascal 3 3) ;2
(pascal 4 2) ;3
(pascal 5 3) ;6