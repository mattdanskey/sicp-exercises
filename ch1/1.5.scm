;; 1.5

;; With applicative-order evaluation, evaluating `(p)` will go on indefinitely.
;; Assuming `if` doesn't evaluate the result until the test is evaluated,
;; with normal order evaluation, `test` becomes `(if (= 0 0) 0 (p))`
;; which means that (p) doesn't get evaluated, and 0 is returned.