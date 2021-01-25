
;a) Fucnión para calcular el último elemento de una lista:

(setq lista '(1 2 3 4 5))

(defun ultimo (lst)
    (cond 
        ((null (cdr lst))
            (car lst))
            (t (ultimo (cdr lst)))
    )
)

(print (ultimo lista))