(define (square n) (* n n))

(define (pow base exp) 
  (if (= exp 0)
      1
      (if (even? exp)
          (pow (* base base) (/ exp 2))
          (* base (pow (* base base) (/ (- exp 1) 2))))))

(define (repeatedly-cube n x)
  (if (zero? n)
      x
      (let ((y (repeatedly-cube (- n 1) x)))
        (* y y y))))

(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))
