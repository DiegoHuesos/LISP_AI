;2.c) Calcule los elementos de una lista a profundidad
(setq counter 0)

(defun deep_amount_elements (lst)
    (cond 
        ((null lst) nil)
        (t 
            (cond
                ((atom (car lst))
                    (incf counter)
                    (deep_amount_elements (cdr lst))
                )
                (t (deep_amount_elements (car lst)) 
                    (deep_amount_elements (cdr lst)))
            )
        )
    )
)

(setq lst  '(1 2 ((3)) (((4))))   ) 
;(setq lst  '( a n (1 2 3) (((a))) )   ) 

(print lst) 

(deep_amount_elements lst) 

(print counter)