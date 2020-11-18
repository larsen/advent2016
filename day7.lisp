(in-package #:advent2016)

(defun read-ip-addresses-list ()
  (read-input-file-as-lines "inputs/day7"))

(defun proper-palindrome? (string)
  (assert (= (length string) 4))
  (register-groups-bind (c1 c2)
      ("(.)(.)\\2\\1" string)
    (not (string= c1 c2))))

(defun has-abba-outside-parens? (ip-address)
  (let ((in-parens nil))
    (loop for c across ip-address
          for pos from 0
          when (char= #\[ c)
            do (setf in-parens t)
          when (char= #\] c)
            do (setf in-parens nil)
          when (and
                (< pos (- (length ip-address) 3))
                (proper-palindrome? (subseq ip-address pos (+ pos 4)))
                (not in-parens))
            do (return t))))

(defun has-abba-inside-parens? (ip-address)
  (let ((in-parens nil))
    (loop for c across ip-address
          for pos from 0
          when (char= #\[ c)
            do (setf in-parens t)
          when (char= #\] c)
            do (setf in-parens nil)
          when (and
                (< pos (- (length ip-address) 3))
                (proper-palindrome? (subseq ip-address pos (+ pos 4)))
                in-parens)
            do (return t))))

(defun support-tls? (ip-address)
  (and (has-abba-outside-parens? ip-address)
       (not (has-abba-inside-parens? ip-address))))

;; (support-tls? "abba[mnop]qrst") ;; yes
;; (support-tls? "abcd[bddb]xyyx") ;; no
;; (support-tls? "aaaa[qwer]tyui") ;; no
;; (support-tls? "ioxxoj[asdfgh]zxcvbn") ;; yes
;; (has-abba-outside-parens? "abcd[bdab]xyyx")
;; (support-tls? "abcd[bdab]xyyx") ;; yes

(defun day7/solution1 ()
  (length (remove-if-not #'support-tls? (read-ip-addresses-list))))

(defun day7/solution2 ()
  0)
