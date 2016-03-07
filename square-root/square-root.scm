(define (sqrt-iter approximation prev-approximation x)
  (if (check-better approximation prev-approximation x)
      approximation
      (sqrt-iter (improve approximation x) approximation x)))

(define (improve approximation x)
  (avarage approximation (/ x approximation)))

(define (square x)
  (* x x))

(define (avarage x y)
  (/ (+ x y) 2))

(define (check approximation x)
  (< (abs (- (square approximation) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 2.0 x))

(define (check-better approximation prev-approximation x)
  (< (abs (- approximation prev-approximation)) (* approximation 0.01)))

(display (sqrt 12345678987654321))
