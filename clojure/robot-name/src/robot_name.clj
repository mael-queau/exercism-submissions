(ns robot-name)

(def ^:private used-names (atom #{}))
(def ^:private valid-chars [\A \B \C \D \E \F \G \H \I \J \K \L \M \N \O \P
                            \Q \R \S \T \U \V \W \X \Y \Z])

(defn- generate-name []
  (let [cand-name (str (rand-nth valid-chars) (rand-nth valid-chars)
                       (rand-int 10) (rand-int 10) (rand-int 10))]
    (if (@used-names cand-name)
      (recur)
      (do
        (swap! used-names conj cand-name)
        cand-name))))

(defrecord Robot [name])

(defn robot []
  (->Robot (atom (generate-name))))

(defn robot-name [r]
  @(:name r))

(defn reset-name [r]
  (reset! (:name r) (generate-name)))
