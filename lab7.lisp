
(defun laczenie-list (lista1 lista2)
  (append lista1 lista2))
  
  (defun laczenie2 (ListaA ListaB)
   (let ((wynik '()))
        (dolist ( item ListaA)
           (push item wynik))
        (dolist (item ListaB)
           (push item wynik))
        (reverse wynik)))		   
		
(defun odwroc-liste (lista)
  (reverse lista))


(defun czy-palindrom (lista)
  (equal lista (reverse lista)))


(defun sortuj-rosnaco (lista)
  (sort (copy-list lista) #'<))


(defun iloczyn-list (lista1 lista2)
  (mapcar #'* lista1 lista2))


(defun liczby-podzielne-przez-trzy (lista)
  (count-if (lambda (x) (zerop (mod x 3))) lista))


(defun liczby-podzielne-przez-n (lista n)
  (count-if (lambda (x) (zerop (mod x n))) lista))


(defun podzielne-przez-piec (stos)
  (let ((wynik nil))
    (dolist (element stos)
      (when (zerop (mod element 5))
        (push element wynik)))
    wynik))


(defun generuj-liste (a b)
  (let ((lista nil))
    (do ((i a (+ i 1)))
        ((> i b) (nreverse lista))
      (push i lista))))


(defun generuj-liste-ascii (a b)
  (let ((lista nil))
    (do ((i a (+ i 1)))
        ((> i b) (nreverse lista))
      (push (code-char i) lista))))
