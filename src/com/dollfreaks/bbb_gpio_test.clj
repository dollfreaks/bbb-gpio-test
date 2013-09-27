(ns com.dollfreaks.bbb-gpio-test
  (:gen-class)
  (:require [com.dollfreaks.gpio.pin :as pin]))

(defn -main
  [& args]
  (let [p 66]
    (pin/export! p)
    (prn "exported?" (pin/exported? p))
    (pin/output! p)
    (prn "output?" (pin/output? p))
    (pin/high! p)
    (prn ":high?" (pin/high? p))
    (pin/input! p)
    (prn "input?" (pin/input? p))
    (pin/unexport! p)
    (prn "exported?" (pin/exported? p))
    (println "Hello, World!")))
