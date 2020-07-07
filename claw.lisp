(uiop:define-package :%godot (:use))

(claw:defwrapper
    (bodge-godot
     (:base-path (asdf:system-source-directory :bodge-godot))
     (:headers "bodge_godot.h")
     (:includes "include/")
     (:include-definitions "(godot|GODOT)_\\w*")
     (:spec-path "spec/"))
  :in-package :%godot
  :trim-enum-prefix t
  :recognize-strings t
  :symbolicate-names (:by-removing-prefixes "godot_" "GODOT_"))
