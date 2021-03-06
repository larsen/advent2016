;;;; package.lisp

(defpackage #:advent2016
  (:use #:cl #:cl-ppcre #:md5)
  (:export day1/solution1
           day1/solution2

           day2/solution1
           day2/solution2

           day3/solution1
           day3/solution2

           day4/solution1
           day4/solution2

           day5/solution1
           day5/solution2

           day6/solution1
           day6/solution2

           day7/solution1
           day7/solution2

           day8/solution1
           day8/solution2

           day9/solution
           decompress))

(defpackage #:advent2016/test
  (:use #:cl
        #:advent2016
        #:fiveam))
