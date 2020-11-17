(in-package #:advent2016/test)

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
  (is (= (advent2016:day4/solution1) 137896)))
