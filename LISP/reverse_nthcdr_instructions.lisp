(setq lst '(1 2 3 4 5 6 7 8 9 10))
(setq n 2  m 3)

;a) Dado como dato n y lst, escriba una instrucción que regrese 
;los primeros n elementos de lst.
(print (reverse (nthcdr  (- (length lst) n) (reverse lst) )))


;b) Dado como dato n y lst, escriba una instrucción que regrese la 
;lista sin los últimos n números 
(print      ( reverse (nthcdr n (reverse lst) ) )        )


;c) Dado como dato n, m y lst, escriba una instrucción que regresa
;la lista sin los primeros n y sin los últimos m elementos de lst
(print      ( reverse (nthcdr m (reverse (nthcdr n lst)) ) )        )

;Buscar función (butlast)