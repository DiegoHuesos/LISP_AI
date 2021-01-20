;;;; Comments

#||
(print (first '(1 2 3)))

(print 2.50)

(print '())

(print 'Maria)

(print (second '(4 3 2)))

;;;; con write no se imprimir
(write 45)
(write 59)
(write 00)



;;;; Función 1.- 
(defun primera (lst)
    (cond 
        ((atom lst) (print 'es_un_atomo))
        (t (print 'es_una_lista)) ;;;; t --> else
    )
)

(setq lst '(1 2 3 4))
(primera 'hola)
(primera lst)

(defun mayor_5 (numero)
    (cond 
        (>5 numero (print 'mayor a 5))
        (t (print 'false))
    )
)

(mayor_5 8)




;;;; Función 2

(defun segunda (param)
    (cond
        ((atom param) 
            (progn
                (print 'atomo_y_)
                (cond
                    ((numberp param) (print 'numero)))
                    (t (print 'simbolo)
                )
            )
        )
        (t (print 'lista))
    )
)
;;;;(segunda 45)
;;;;(segunda 'hola)
;;;;(segunda '(1 2 3))
(segunda "hola")


;;;; Operadores aritméticos:

(print (- 5 -2 8 -3 -5) )

(print (+ 5 12.5 (car '(1 2 3))) )

(print (- 5 -3 -2 6) )

(print (* 1 4 3) )

(print (/ 8 4) )

(print (/ 7 3) )

(print (float (/ 7 3) ) )





;;;; incf(varnum) : incrementa en uno el valor de una variable

;;;; incf(varnum, num) : incrementa en num el valor de varnum

;;;; decf(varnum) : decrementa en uno el valor de una variable

;;;; decf(varnum, num) : decrementa en num el valor de varnum


(setq aux 5)
(print aux)
(incf aux)
(print aux)
(incf aux 10)
(print aux)

(setq aux 5)
(print aux)
(decf aux)
(print aux)
(decf aux 10)
(print aux)

 (incf aux (decf aux 2))


 



;;;; Comparadores aritméticos

;/=  dist

(= 2 2.0 (/ 4 2))

(/= 2 2.0 (/ 4 2))

;;; Operadores lógicos
; not[object]
; and[form1, form2, ..., formn]  (Busca un valor negativo para detenerse)
; or[form1, form2, ... , formn] (Busca un valor positivo para detenerse)

(not t)
(not nil)
(not (atom '(1 2 3))

(and t t nil)

(and t t t t t)

(or t t nil)

(or nil nil nil nil t)


;Funciones de asignación 

;setq []
(setq aux 5)
(setq aux 'Mexico)
(setq aux '(1 2 3 4 5))

;Asignación múltiple
(setq aux1 1 aux2 2 aux3 3)

;Va de izquierda a derecha
(setq aux1 (+ aux2 aux3) aux2 (- aux1 aux3) aux3 (* aux1 aux2)))



;psetq : similar a setq pero el orden de asignacion es dis
;sólo puedo usar el valor inicial o previos

;Asignación múltiple
(psetq aux1 1 aux2 2 aux3 3)

(psetq aux1 (+ aux2 aux3) aux2 (- aux1 aux3) aux3 (* aux1 aux2)))



;setf --> macro más genera y poderosa usada

(setf lst '( a b c d ))
;(A B C D)
(setf (car lst) 'p (cadr lst) 'q)
;(P Q C D)



;Funciones recursivas:

;Calcular el último elemento de una lista:
(setq lista '(1 2 3 4 5))

(defun ultimo (lst)
    (cond 
        ((null (cdr lst))
            (car lst))
            (t (ultimo (cdr lst)))
    )
)

(print (ultimo lista))

||#

;Obtener el inverso de una lista en otra lista
;(setq lst1 nil)  ; lst1 : variable del medio ambiente
;(push 5 lst1) ; (5)
;(push 'a lst1) ; (a 5)
;(push  '(1 2 3) lst1 ) ; ( (1 2 3) a 5)
(setq lst '(a (1 2 3) b c))
(setq lst1 nil)

(defun inverso (lst)
    (cond
        ((null lst)
            (write lst1)
        )
        (t (push (car lst) lst1) (inverso (cdr lst))
        )
        
    )
)

(inverso lst)
