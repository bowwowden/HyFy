# Data Structures

pointer: memory address 0x034043 where cpu can retrieve data from this location.

two ways to place data structures into memory: 
- contiguous: memory structures are adjacent blocks.
- linked: lists, trees, and graphs. more overhead.

tuples: arbitrary data structure with an interface. a tuple can represent any structure. python's tuples are very ad hoc and lack efficiency because they are linked structures.

common lisp defines this with 
```lisp
(defstruct pair
    left right)
```

Hy translates its syntax into data structures in Python. 
These are ways to create lists, tuples, and sets.

```hy
[1, 2, 3]  ; list
#(1, 2, 3) ; tuples
#{1, 2, 3} ; set
```

call-by-value and call-by-reference

union-find: 
a data structure that requires an algorithm.
consider two nodes. if a path exists between them, they are in the same component. 
union find is an appropriate algorithm for set membership in dynamic situations, like watching a moving car in a video.

unions are a natural data structure in C and Python. 
Not so much in Lisp. However, this is the easy way in Python.

```python
x = {"apple", "banana", "cherry"}
y = {"google", "microsoft", "apple"}

z = x.union(y) 

print(z)
```

In Hy 

```hy
(setv x #{"apple" "banana" "cherry})
(setv y ${"google" "microsoft" "apple"})

(setv z (x.union y))
(print z)
```

