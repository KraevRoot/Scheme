(define (cube-root-iter approximation x)
  (if (check approximation x)
      approximation
      (cube-root-iter (improve approximation x) x)))

(define (square x)
  (* x x))

(define (cube x)
  (* x x x ))

(define (improve approximation x)
  (/ (+ (/ x (square approximation)) (* 2 approximation)) 3))

(define (check approximation x)
  (< (abs (- (cube approximation) x)) 0.001))

(define (cube-root x)
  (cube-root-iter 1.0 x))

(display (cube-root 3322110099))
