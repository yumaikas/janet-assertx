(use testament)
(use ../assertx)
(import err)
 
(exercise! 
  []
  (deftest all*-throws-as-expected
    (err/try*
      (assert-all number? [1 2 3 :x 5] "%q isn't a valid number!")
      (":x isn't a valid number!"
           (assert-expr true))))
  (deftest all*-returns-true-on-success
    (assert-expr (assert-all number? [1 2 3 4 5] "%q isn't a valid number!")
                 "err/all* should return true when it succeeds!")))
