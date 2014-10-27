(load "perc.lisp")
(load "medic.lisp")

(defun new-medic ()
  (let ((energy 100)
        (bullets 30))
    (let ((patrolling 0))
      #'(lambda (p)
          (cond ((perc-hit p)
                  (setf energy (- energy 10))))
          (cond ((= bullets 0)
                  (setf bullets 30)
                    'RELOAD)
                ((perc-enemy-front p)
                  (setf bullets (- bullets 1))
                    'SHOOT)
                ((< energy 100)
                  (setf energy (+ energy 5))
                    'HEAL)
                (T (incf patrolling)
                  'PATROL))))))