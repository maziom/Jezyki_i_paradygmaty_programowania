(defstruct ksiazka
  tytul
  autorzy
  wydawnictwo
  rok-wydania
  isbn)

(defvar *biblioteka* nil)

(defun dodaj-ksiazke (tytul autorzy wydawnictwo rok-wydania isbn)
  (push (make-ksiazka :tytul tytul :autorzy autorzy :wydawnictwo wydawnictwo :rok-wydania rok-wydania :isbn isbn)
        *biblioteka*))

(defun usun-ksiazke (isbn)
  (setf *biblioteka* (remove-if (lambda (k) (equal (ksiazka-isbn k) isbn)) *biblioteka*)))

(defun znajdz-ksiazke (szukany-tytul)
  (remove-if-not (lambda (k) (string= (ksiazka-tytul k) szukany-tytul)) *biblioteka*))

(defun wczytaj-string (prompt)
  (format t "~a: " prompt)
  (read-line))

(defun wczytaj-ksiazke ()
  (let ((tytul (wczytaj-string "Wpisz tytul"))
        (autorzy (wczytaj-string "Wpisz autorow"))
        (wydawnictwo (wczytaj-string "Wpisz wydawnictwo"))
        (rok-wydania (parse-integer (wczytaj-string "Wpisz rok wydania")))
        (isbn (wczytaj-string "Wpisz ISBN")))
    (dodaj-ksiazke tytul autorzy wydawnictwo rok-wydania isbn)))


(defun menu ()
  (format t "1. Dodaj ksiazke~%2. Usun ksiazke~%3. Znajdz ksiazke~%4. Wyjscie~%")
  (let ((wybor (read)))
    (case wybor
      (1 (wczytaj-ksiazke))
      (2 (usun-ksiazke (wczytaj-string "Wpisz ISBN ksiazki do usuniecia")))
      (3 (format t "~a~%" (znajdz-ksiazke (wczytaj-string "Wpisz tytul ksiazki do znalezienia"))))
      (4 (return-from menu))
      (otherwise (format t "Nieprawidlowy wybor.~%")))))

(loop (menu))
