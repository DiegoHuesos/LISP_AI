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
        ( (> numero 5) (print 'mayor_a_5))
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
                    ((numberp param) (print 'numero))
                    (t (print 'simbolo) )
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
(not (atom '(1 2 3)))

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
            lst1
        )
        (t (push (car lst) lst1) (inverso (cdr lst))
        )
        
    )
)

(print (inverso lst) )



;c) Sume los números de una lista en forma lineal
( setq lst '( 8 5 'hola a b (5) (a b c) 'd 1) )  ;=14


(defun sum_list (lst)
    (setq sum 0)
    (sum_list_aux lst)
)

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

;d) Cuente cuántos números y cuántos símbolos hay en la lista (en forma lineal) 
(defun amount_num_symb (lst)
    (setq count_num 0 count_sym 0)
    (amount_num_symb_aux lst)
    (print count_num)
    (print count_sym)
)

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
||#


;incf y defc modifican la lista:

(setq lst '( 1 2 3 4))

(incf (car lst))
;( 2 2 3 4)

(decf (cadr lst))
;(2 1 3 4)



; eq[atom1, atom2]
;Para comparar números pequeños enteros y símbolos. 
;Función económica, pero hay que ser cuidadosos (buscar equilibrio).

(eq 5 5 )
;T

(eq 5.0 5.0)
;NIL --> ¡Cuidado! No usar eq para comparar diferentes tipos de números

(eq 'hola 'mexico)
;NIL

(eq '(1 2 3) '(1 2 3) )
;NIL --> ¡Cuidado! eq no sirve para comparar listas, sólo funciona con atom



;eql[atom1, atom2]
;se utiliza para comparar átomos ¡no listas!
(eql 5 5 )
;T

(eql 5.0 5.0)
;T (Sí sirve para comparar números reales)

(eql 'hola 'mexico)
;NIL

(eql '(1 2 3) '(1 2 3) )
;NIL --> ¡Cuidado! eql no sirve para comparar listas, sólo funciona con atom



;equal[lst1, lst2] (corre de manera recursiva) (no lo uses para comparar cosas sencillas como números o símbolos)
;Se utiliza para comprar todo: átomos, listas y listas a profundidad
;La mejor función, pero la más costosa. Hay que saber cuando usarla.

(equal 5 5 )
;T

(equal 5 5.0)
;T (Sí sirve para comparar números reales)

(equal 'hola 'mexico)
;NIL

(equal '(1 2 (3 4 5) 6 7)  '(1 2 (3 4 5) 6 7) )
;T



;Dos funciones poderosas para trabajar con listas y árboles

;push[obj, lst]  ;inserta obj a lst

(setq pila nil)

(push 5 pila)

(push 'hola pila)

(push '(1 2 3) pila)

;(  (1 2 3) hola 5 )

;En recursividad no hay que usar (pop) porque destrosas la lista  original



(setq lst '( 1 2 3 4 5))
;(1 2 3 4 5)

(push (+(pop lst) 4) lst)
;(5 2 3 4 5)

( push  (+  (+(pop lst)5) (*(pop lst)3) )   lst)
;(16 3 4 5)

;5+5 = 10 --> (2 3 4 5)
;2*3 = 6  --> (3 4 5)
;10 + 6 = 16 --> (16 3 4 5)


;Familia de construcción: para construir listas

;cons[obj, lst] ;Similar a push, pero no modifica la lista

(setq lst '(1 2 3))
;(1 2 3)
(cons 5 lst)
;(5 1 2 3)
(lst)
;(1 2 3)

;adjoin[obj, lst]:test
;Agrega obj a lst si no se encunetra obj en lst. 
;Utiliza eql para las comparaciones.

(adjoin 5 '(1 2 3 4))
;(5 1 2 3 4)

(adjoin 1 '(1 2 3) )
;(1 2 3)

(adjoin '(a) '( (a) (b) (d) )  )
;( (a) (a) (b) (d) )
;porque el eql no compara listas

;Si quieres que sea a profundidad, hay que redefinir el eql por el equal()
(adjoin '(a) '( (a) (b) (d) ) : test #'equal  ) 
;( (a) (b) (d) )



;list[obj1, obj2, obj3]  Hace una lista con los n obj

(list 'a 5 'b '(1 2))
;(a 5 b (1 2))



;append[list1, list2, ... , litn]
;Hace una lista con las nlistas
;No redefine al menos que hagas un setq y esa función

(append '(a) '(b) '(c))
;(a b c)

(append '(a) '((b)) '(1 2 3))
;(a (b) 1 2 3)



(defun rango (mi ma cua)
    (>= ma cua mi)
)


;En forma lineal
;Función recursiva con equal
(defun miembro (obj lst)
    (cond 
        ((null lst) nil)
        ((equal obj (car lst)) t)
        (t (miembro (cdr lst)))
    )
)

;paso basico cuando acaba la lista 

;voltea la lista pero no la redefine
(setq lst '(1 2 3 4 (a b)))
(reverse lst)

;Voltear la lista y redefinirla
;nreverse[lst] Regresa el inverso de una lista y  la redefine
(setq lst '(1 2 3 4 (a b)))
(nreverse lst)

;length[lst] --> Regresa la longitud (lineal) de la lista
(length '(1 2 3 4 5))
;>5
(length '(1 2 (a b) 3 4 ))
;>5


;member[obj, lst] --> Determina si un elemento (obj) es miembro de una lista. 
;Regresa la lista a partir de donde se encuentra el elemento
(member 2 '(1 2 3 4 5))
;>(2 3 4 5)

(member 'a '(b c d))
;>nil



;nthcdr[n, lst] --> regresa el cdr de lst a partir de n, sin incluir n
(nthcdr 2 '(1 2 3 4 5))
;> (3 4 5)

(nthcdr 5 '(a b 9 c d))
;> nil

(nthcdr 2 '(a b c d e))
;> (c d e)

(nthcdr 0 '(a b c 7 y))
;> (a b c 7 y)


;nth[n, lst] --> Regresa el car de nthcdr
(nth 2 '(a b c d e))
;> c

(nthcdr 5 '(a b 9 c d))
;> nil

(nthcdr 0 '(a b c 7 y))
;> a


;Estructuras de control 
;Permiten controlar de forma explícita la evaluación 
;de las formas en la definición de funciones.
;cond[cond1, cond2,... , condn]
;*una función lambda es una función oculta

(setq num 3)
(setq sign (cond
        ((plusp num) 'positivo)
        ((minusp num) 'negativo)
        (t 'nulo)
    )
)

(setq p 6 res(cond
    ((> p 0.75) 'improbable)
    ((> p 0.50) 'probable)
    ((> p 0.20) 'poco_probable)
    (t 'improbable)
))


;Tipos de pensamiento lógico:
;   Deductivo --> 
;   Inductivo --> 
;   Adbuctivo --> 
;   Retroductivo --> 

;Sistema experto: conjunto de reglas grandes de conocimento particular


;if (tiene cuerpo)
;(if <prueba> <forma da evaluar si es true>
;            <forma a evaluar si prueba es false>
;)
(setq dia 'lunes)
(if (symbolp día) 'dia 'fecha)
;>dia

(setq p 6)
(if (numberp p) (write 'hola) (write 'adiós))
;>hola

(defun prueba (obj)
    (if (atom obj) (write 'atomo) (write 'lista))
    (write 'sigue_codigo)
)
;> (prueba 3)
;> atomo
;> sigue_codigo


;when : es como el if pero no tiene else
;(when <prueba> <forma a evaluar si prueba es true>)
(setq alta 90 temp 100)
(when (> temp alta) (setq alta temp))

(defun prueba (num)
    (when (> 10 num) (write 'hola))
    (write 'sigue_codigo)
)


;Funciones recursivas con if y when

;Potencia
;m^n 
;   m x m^n-1    si   n>0
;   1            si   n=0


(defun potencia (m n)
    (if (= n 0) 1
        (* m (potencia m (decf n)) ) 
    )  
)

(defun potencia (m n)
    (cond 
        ((eq n 0) 1)
        (t (* m (potencia m (decf n)) ) )
    )  
)

;Fibonacci
(defun fibonacci (n)
    (if (or (= n 1 ) (= n 0)) 
        1
        (+ (fibonacci (- n 1)) (fibonacci (- n 2)) )
    )
)

(defun fibonacci (n)
    (cond 
        ((= n 0) 0)
        ((= n 1) 1) 
        (t (+ (fibonacci (- n 1)) (fibonacci (- n 2)) ))
    )
)


;Funciones let, apply, funcall, mapcar

;let --> permite crear variables locales
#|
(let (
        (var1 value-1)
        (var2 value-2)
    )
    body
)
|#

(defun promedio (x y)
    (let ((sum (+ x y))))
    (list x y `promedio : )
)

;Apply --> macro que permite ejecutar funciones
(apply #'first '((a b c d)))

(apply #'append '((a b) (c d)))

(apply #'+ (2 3 5))


;funcall --> macro que permite ejecutar funciones
(funcall #'first '(a b c d))

(funcall #'append '(a b) '(c d) )

(funcall #'+ 2 3 5 )


;mapcar--> macro que facilita la tranformación de la lista.
;Debemos proporcionar el nombre del procedimiento de transformación
;junto con la lista de los elementos que serán transformados.

(mapcar #'oddp '(1 8 17 21))
;> (T NIL T T)

(mapcar #'= '(a b) '(a e) )
;> (T NIL)

(mapcar #'+ '(1 3 6 9) '(2 3 5 11) )
;>(3 6 11 20)


(defun self-and-double (x)
    (list x (+ x x))
)

(mapcar ())


(defun tree-reverse (tree)
    (print tree)
    (if (listp tree)
        (mapcar #'tree-reverse (reverse tree))
        tree
    )
)

(setq lst '(1 2 3 ((4) (a b) c) (5 6 7)8 )  ) 

(tree-reverse lst)

;> (8 (7 6 5) (C (B A) (4)) 3 2 1)
