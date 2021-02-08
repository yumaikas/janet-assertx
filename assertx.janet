(defn assert-all [pred ind msg-fmt]
  (assert (or (bytes? ind) (indexed? ind)) "assert-all expectes either a bytes or indexed type!")
  (loop [i :in ind
         :when (not (pred i))]
    (errorf msg-fmt i))
  true)
