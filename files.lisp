(let ((path (merge-pathnames #p".file.txt")))
  (format t "~a~%" (pathname-directory path))
  (format t "~a~%" (pathname-name path))
  (format t "~a~%" (pathname-type path))
  (format t "~a~%" (namestring path))
  (pathname-directory path))

(directory "~/*")

(let ((home-dir "~/"))
  (directory (make-pathname :name :wild :type :wild :defaults home-dir)))
