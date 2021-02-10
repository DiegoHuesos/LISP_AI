;a) Obtener el inverso de una lista a profundidad sin utilizar mapcar

(setq lst '(a (1 2 3) b c))

(setq lst1 nil)

(defun flip_deeply (lst)
    (cond
        ((null lst) lst1)
        ((atom (car lst))   
            (push (car lst) lst1)  (flip_deeply (cdr lst))
        )
        (t 
            (flip_deeply(car lst))
            (flip_deeply (cdr lst))
        )
    )
)

(print (flip_deeply lst))


