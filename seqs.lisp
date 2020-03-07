(defparameter *x* (make-array 5 :fill-pointer 0))

(vector-push 'a *x*)
(vector-push 'b *x*)
(vector-push 'c *x*)

;; define range first
(defparameter *y* (range 5))

(setf *y* (append *y* '(6)))
(setf *y* (cons 0 *y*))
(push -1 *y*)
(reverse *y*)
(setf *y* (nreverse *y*))
(pop *y*)

(subseq *y* 1)
(find 1 *y*)
(substitute 'a 1 *y*)
(first *y*)
(rest *y*)
(car *y*)
(cadr *y*)
