(load "perc.lisp")
(load "medic.lisp")

(defun new-medic ()
  (let ((energy 100)
        (bullets 30))
    #'(lambda (p)
        (when (perc-hit p)
              (decf energy 10))
        (cond ((= bullets 0)
                (setf bullets 30)
                  'RELOAD)
              ((perc-enemy-front p)
                (dec bullets 30)
                  'SHOOT)
              ((< energy 100)
                (incf energy 5)
                  'HEAL)
              (T 'PATROL)))))
