
; instead of (make-array 3)
(setv q [3])

; dynamic vectors and mapping in common lisp
; (defun map-vec (fn vec)
;   "Map function FN over each element of VEC
;    and return the new vector with the results."
; (let ((rez (make-array (length vec)))) (dotimes (i (length vec))
;       (:= (aref rez i) (call fn (aref vec i))))
;     rez))

; in python, dynamic arrays are the default
(defn addition [n] 
    (+ n n))

(setv numbers [1, 2, 3, 4])
(setv result (map addition numbers))
(print (list result))

; also, indices are accessed with a get function
(get numbers 1)



; binary search
(defn binary-search [arr x]
    (setv low 0)
    (setv high (- (len arr) 1))
    (setv mid 0)

    (while (<= low high)
        (setv mid (// (+ high low) 2))
        
        ; if x is greater, ignore left half
        (if (< (get arr mid) x)
            (setv low (+ mid 1))
            
            (if (> (get arr mid) x)
                (setv high (- mid 1))
                (return mid)
            ))
    )
    ; else return -1
    -1
)

; testing
(setv arr [2 3 4 10 40])
(setv x 10)

(setv result (binary-search arr x))
(print (+ "searching for 10 in " (str arr)))
(print result)

