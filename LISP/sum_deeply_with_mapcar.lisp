;b) Sumar los elementos numéricos de una lista a profundidad utilizando la función mapcar.

(setq sum 0)

(defun sum_deeply_mapcar (tree)
    (print tree)
    (cond 
        ((listp tree)  (mapcar #'sum_deeply_mapcar tree))
        ((numberp tree) (setq sum (+ sum tree)) )
    )
)

(setq lst '(1 2 3 ((4) (a b) c) (5 6 7)8 )  ) 

(sum_deeply_mapcar lst)

(print sum)
