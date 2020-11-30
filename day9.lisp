(in-package #:advent2016)

(defun read-compressed-file ()
  (read-input-file "inputs/day9"))

(defun decompress (string)
  (apply #'concatenate 'string
         (let ((pos 0))
           (loop for next-elem = (subseq string pos (+ pos 1))
                 when (not (string= next-elem "("))
                   do (incf pos) and collect next-elem
                 when (string= next-elem "(")
                   append (destructuring-bind (match regs)
                              (multiple-value-list
                               (scan-to-strings "\\((\\d+)x(\\d+)\\)" (subseq string pos)))
                            (if match
                                (progn
                                  (incf pos (length match))
                                  (let* ((len (parse-integer (aref regs 0)))
                                         (repetitions (parse-integer (aref regs 1)))
                                         (result
                                           (loop repeat repetitions 
                                                 collect (subseq string pos (+ pos len)))))
                                    (incf pos len)
                                    result))
                                (progn
                                  (incf pos)
                                  next-elem)))
                 until (= pos (length string))))))

(defun day9/solution ()
  (length
   (string-trim '(#\Newline) (decompress (read-compressed-file)))))
