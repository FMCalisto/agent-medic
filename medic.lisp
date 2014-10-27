(load "perc.lisp")

(defun medic (p)
  (cond ((perc-enimy-front p) 'SHOOT)
        ((perc-hit p) 'HEAL)
        (T 'PATROL)))
