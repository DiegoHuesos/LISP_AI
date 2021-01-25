(setq counter 0)

(defun amount_elements (lst)
    (cond 
        ((null lst) nil)
        (t (incf counter) (amount_elements (cdr lst)))
    )
)

(setq lst  '( a n (1 2 3) (((a))) )   ) 

(print lst) 

(amount_elements lst) 

(print counter)