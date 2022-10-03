; struct point
; point parent, if parent is null, point is root
(defclass Point []
    (defn __init__ [self data parent]
        (setv self.data data)
        (setv self.parent parent)
        )
    )

; (setv p1 (Point 15))
; (print p1.parent)

(setv p1 (Point 1 None))
(setv p2 (Point 2 p1))

(print "p1 data" p1.data)
(print "p2 data" p2.data)

; function union (point 1 point 2)
; join the subsets of point1 and point2

; for now, traverse point
(defn uf-find [point]
    (print point.data)
    (if (is None point.parent)
        (print "found root")
        (uf-find point.parent))
        )

(print "starting with p2 as first node")
(uf-find p2)

; function union find (point)
; determine id of subset