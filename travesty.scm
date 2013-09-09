;;; travesty.scm -- A travesty generator in the tradition of Dissociated Press.
;;;
;;;   Copyright © 2013 by Matthew C. Gushee <matt@gushee.net>
;;;   This program is open-source software, released under the
;;;   BSD license. See the accompanying LICENSE file for details.

(module travesty
        *
        (import scheme chicken)

        ;(use numbers)

;;; IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
;;; ------------------------------------------------------------------------

(define (fact n)
  (cond
    ((= n 0) 1)
    ((= n 1) 1)
    ((< n 0) (error "No negative numbers, please!"))
    (else
      (* n (fact (- n 1))))))

(define (nperms in-size out-size)
  (when (< in-size out-size)
    (error "Length of combinations cannot be greater than input set."))
  (/ (fact in-size) (fact (- in-size out-size))))

(define (ncombos in-size out-size)
  (when (< in-size out-size)
    (error "Length of combinations cannot be greater than input set."))
  (/ (fact in-size) (* (fact (- in-size out-size)) (fact out-size))))

;;; OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO

) ; END MODULE

;;; IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
;;; ------------------------------------------------------------------------

;;; OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO

;;; ========================================================================
;;; ------------------------------------------------------------------------

; vim:et:ai:ts=2 sw=2
