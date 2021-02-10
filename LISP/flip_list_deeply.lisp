;a) Obtener el inverso de una lista a profundidad sin utilizar mapcar

(setq lst '(a (1 2 3) b c))


(defun flip_deeply (lst)
    (cond
        ((null lst) '())
        ((listp (car lst)) 
            ( append (flip_deeply (cdr lst)) (list (flip_deeply (car lst))) ))
        (t (append (flip_deeply (cdr lst)) (list (car lst))) )
    )
)

(print (flip_deeply lst))


