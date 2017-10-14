sum1(X,Y,Z) :- Z is X+Y.
diff1(X,Y,Z) :- Z is X-Y.
mul1(X,Y,Z) :- Z is X*Y.
div1(X,0,Z) :- write(' Cannot divide by zero! ').
div1(X,Y,Z) :- Z is X/Y.