; struct Node
; point parent, if parent is null, point is root

(defclass Node []
    (defn __init__ [self data parent]
        (setv self.data data)
        (setv self.parent parent)
        )
    )

; in common lisp, this might be implemented like
; (defstruct point parent)

(setv p1 (Node 1 None))
(setv p2 (Node 2 p1))

(print "p1 data" p1.data)
(print "p2 data" p2.data)

; for now, traverse point to parent
(defn parent-find [point]
    (print point.data)
    (if (is None point.parent)
        (print "found root")
        (uf-find point.parent))
        )  

(print "starting with p2 as first node")
(parent-find p2)

