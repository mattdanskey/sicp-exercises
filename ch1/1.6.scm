;; 1.6

;; This is a lot like 1.5. Because of applicative-order evaluation,
;; the else-clause for `new-if` gets evaluated before it gets passed in.
;; This results in an infinite loop, since the else-clause calls `sqrt-iter`.

;; (`if` is a special form that only evaluates either the second 
;; or third parameter, not both)