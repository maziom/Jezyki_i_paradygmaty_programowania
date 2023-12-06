
(defun oblicz-wyrazenie-1 ()
  (+ 2 (/ (* 3 4) 8)))


(defun oblicz-wyrazenie-2 ()
  (+ (sin 12) (cos (mod 256 32))))


(defun suma (a b)
  (+ a b))


(defun czy-parzysta (liczba)
  (= (mod liczba 2) 0))


(defun silnia (n)
  (if (= n 0)
      1
      (* n (silnia (- n 1)))))


(defun fibonacci (n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (t (+ (fibonacci (- n 1)) (fibonacci (- n 2))))))


(defun suma-nieparzystych (start koniec)
  (let ((suma 0))
    (loop for liczba from start to koniec do
          (when (not (= (mod liczba 2) 0))
            (setq suma (+ suma liczba))))
    suma))


(defun suma-kwadratow (start koniec)
  (let ((suma 0))
    (loop for liczba from start to koniec do
          (setq suma (+ suma (* liczba liczba))))
    suma))
