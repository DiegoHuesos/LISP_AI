;c) Sume los números de una lista en forma lineal:

;Public function
(defun sum_list (lst)
    (setq sum 0)
    (sum_list_aux lst)
)

;Auxiliar recursive function
(defun sum_list_aux (lst)
    (cond
        ((null (cdr lst))
            (cond 
                ((numberp (car lst))
                    (incf sum (car lst))
                )
            )
            sum
        )

        (t (cond 
                ((numberp (car lst))
                    (incf sum (car lst))
                    (sum_list_aux (cdr lst))
                )
                (t (sum_list_aux (cdr lst)) )
            )
        )
    )   
)

;Test
(setq lst '( 8 5 hola (5) (a b c) d 1) ) 

(print (sum_list lst) )


#||
(defun suma1 (lst)
    (cond
        ((null lst))
            sum
        )
        (t (cond 
                ((numberp (car lst))
                    (incf sum (car lst))
                    (suma1 (cdr lst))
                )
                (t (suma1 (cdr lst)) )
            )
        )
)   

(defun suma2 (lst)
    (cond
        ((null lst))
        ((atom (car lst))
            (cond
                ((numbero (car lst)) (incf sum (car lst)) (suma2 (cdr lst)))
            )
            (t (suma2 (cdr lst)))
        )
        (t (suma2 (cdr lst)))
    )
)
||#
