;;;; advent2016.asd

(asdf:defsystem #:advent2016
  :description "Describe advent2016 here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :depends-on (#:cl-ppcre #:md5 #:fiveam)
  :components ((:file "package")
               (:file "day1")
               (:file "day2")
               (:file "day3")
               (:file "day4")
               (:file "day5")
               (:file "day6")
               (:file "day7")
               (:file "utils"))
  :in-order-to ((test-op (test-op #:advent2016/test))))

(asdf:defsystem #:advent2016/test
  :depends-on (#:advent2016
               #:fiveam)
  :components ((:module "tests"
                :components ((:file "main"))))
  :perform (test-op (op _) (symbol-call :fiveam :run-all-tests)))
                
