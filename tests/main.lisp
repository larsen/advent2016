(in-package #:advent2016/test)

(def-suite advent2016)
(in-suite advent2016)

(test day1
  (is (= (advent2016:day1/solution1) 273))
  (is (= (advent2016:day1/solution2) 115)))

(test day2
  (is (string= (advent2016:day2/solution1) "76792"))
  (is (string= (advent2016:day2/solution2) "A7AC3")))

(test day3
  (is (= (advent2016:day3/solution1) 1050))
  (is (= (advent2016:day3/solution2) 1921)))

(test day4
  (is (= (advent2016:day4/solution1) 137896))
  (is (= (advent2016:day4/solution2) 501)))

;; Slow
;; (test day5
;;   (string= (advent2016:day5/solution1 "abbhdwsy") "801b56a7")
;;   (string= (advent2016:day5/solution2 "abbhdwsy") "424a0197"))

(test day6
  (is (string= (advent2016:day6/solution1) "gyvwpxaz"))
  (is (string= (advent2016:day6/solution2) "jucfoary")))

(test day7
  (is (= (advent2016:day7/solution1) 105))
  (is (= (advent2016:day7/solution2) 258)))

(test day8
  (is (= (advent2016:day8/solution1) 119))
  (is (string= (advent2016:day8/solution2) "ZFHFSFOGPO")))

(test day9
  (is (= (length (decompress "ADVENT")) 6))
  (is (= (length (decompress "A(1x5)BC")) 7))
  (is (= (length (decompress "(3x3)XYZ")) 9))
  (is (= (length (decompress "A(2x2)BCD(2x2)EFG")) 11))
  (is (= (length (decompress "(6x1)(1x3)A")) 6))
  (is (= (length (decompress "X(8x2)(3x3)ABCY")) 18))
  (is (= (day9/solution) 150914)))
