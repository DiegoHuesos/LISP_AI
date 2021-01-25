;b) Obtener el inverso de una lista en otra lista

;(setq lst1 nil)  ; lst1 : variable del medio ambiente
;(push 5 lst1) ; (5)
;(push 'a lst1) ; (a 5)
;(push  '(1 2 3) lst1 ) ; ( (1 2 3) a 5)


(setq lst '(a (1 2 3) b c))

(setq lst1 nil)


(defun inverso (lst)
    (cond
        ( (null lst)
            lst1
        )
        (t  (push (car lst) lst1)  (inverso (cdr lst))  )  
    )
)


(print (inverso lst) )

#||
;Tratar de hacer así
(defun inverso1 (lst)
    (cond
        ((null lst))
        (t (append (inverso1 (cdr lst)) (list (car lst))) )
    )
)
||#
