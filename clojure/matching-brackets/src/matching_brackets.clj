(ns matching-brackets)

(defn matching-opening-bracket [c]
  (case c
    \} \{
    \] \[
    \) \())

(defn valid? [s]
  (let [stack (reduce
               (fn [acc c]
                 (if (#{\{ \[ \(} c) (conj acc c)
                     (if (#{\} \] \)} c)
                       (if (= (peek acc) (matching-opening-bracket c))
                         (pop acc)
                         (conj acc :error))
                       acc)))
               []
               s)]
    (and (empty? stack) (not-any? #{:error} stack))))
