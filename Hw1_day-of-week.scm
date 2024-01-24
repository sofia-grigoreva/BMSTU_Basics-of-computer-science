(define (day-of-week d m g)
  (if (< m 3)
      (remainder (+ d (quotient (* 31 (+ m 10)) 12) (- g 1)
                    (- (quotient (- g 1) 4) (quotient (- g 1) 100))
                    (quotient (- g 1) 400)) 7)
      (remainder (+ d (quotient (* 31 (- m 2)) 12) g
                    (- (quotient g 4) (quotient g 100))
                    (quotient g 400)) 7)))
