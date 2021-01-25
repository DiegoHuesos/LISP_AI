;d) Cuente cuántos números y cuántos símbolos hay en la lista (en forma lineal) 

;Public function
(defun amount_num_symb (lst)
    (setq count_num 0 count_sym 0)
    (amount_num_symb_aux lst)
    (print (format t "Cantidad de numeros: ~:d" count_num))
    (print (format t "Cantidad de simbolos: ~:d" count_sym))
)

;Auxiliar recursive function
(defun amount_num_symb_aux (lst)
    (cond
        ((null (cdr lst))
            (cond 
                ( (not (listp (car lst)) )
                    (progn 
                        (cond 
                            ( (numberp (car lst)) 
                                    (incf count_num)   
                            )
                            (t (incf count_sym) )
                        )
                        (amount_num_symb_aux (cdr lst))
                    )
                )
            )
        )
        (t (progn
                (cond 
                    ( (not (listp (car lst)) )
                        (cond 
                            ( (numberp (car lst)) 
                                (incf count_num)
                            )
                            (t (incf count_sym) )
                        )
                    )
                )
                (amount_num_symb_aux (cdr lst))
            )
        )
    )   
)

;Test
(setq lst '( 8 5 hola mexico a b (5)  '( a b c) d 1) )

(amount_num_symb lst)


;Otra forma

(setq num 0 sim 0)

(defun cuenta (lst)
    (cond 
        ((null lst))
        ((atom (car lst)) 
            (cond 
                (numberp (car lst)
                    (incf num)
                    (cuenta (cdr lst))
                )
                (t (incf sim) (cuenta (cdr lst)))
            )
        )
        (t (cuenta (cdr lst)))
    )
)