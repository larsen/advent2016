(in-package #:advent2016)

(defun read-input-file (filename)
  (uiop:read-file-string
   (asdf:system-relative-pathname 'advent2016 filename)))

(defun read-input-file-as-lines (filename)
  (uiop:read-file-lines
   (asdf:system-relative-pathname 'advent2016 filename)))
