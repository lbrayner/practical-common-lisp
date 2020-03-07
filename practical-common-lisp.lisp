(defun hello-world () (format t "Hello, world!"))
(hello-world)
(+ 2 3)
(eql 'my-symbol 'my-symbol)

(first '(1 2 3))

(defun area (width &optional (height width))
  (* width height))

(area 3)

(subseq '(1 2 3 4 5 6) 3 6)
(append '(a :c d) '(1 2))

;; (defun range (max &key (min 1) (step 1))
;;    (loop for n from min to max by step
;;       collect n))

;; loop sucks
;; functional programming is lit
(defun range (max &key (min 1) (step 1))
  (if (not (> min max))
      (append (list min) (range max :min (+ min step) :step step))
      ()))

(range 4 :min 2)
(range 4)
(function range)

(progn
  (princ ".") (princ ".") (princ "."))

(when (> 5 4) (format t "Yes."))

(defun dots (n)
 "Prints n dots." 
 (when (> n 0)
   (princ ".")
   (dots (- n 1))))

(dots 2)

(function dots)

(find-package :com.gigamonkeys.pathnames)
(package-nicknames :com.gigamonkeys.pathnames)
