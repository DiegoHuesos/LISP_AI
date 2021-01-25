;2.d) Sume los números de una lista a profunidad:
(setq sum 0)

(defun sum_deeply (lst)
    (cond
        ((null lst))
        ((atom (car lst))
            (cond
                ((numberp (car lst)) 
                 (incf sum (car lst)) 
                 (sum_deeply (cdr lst))
                )
                (t (sum_deeply (cdr lst)))
            )  
        )
        (t 
            (sum_deeply(car lst))
            (sum_deeply (cdr lst))
        )
    )
)

(setq lst  '( a n (1 2 3) (((a))) )   ) 

(sum_deeply lst)

(print sum)
