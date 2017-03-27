sum(A,B,X):-
	X is A+B.
subtract(A,B,X):-A>B,X is A-B.
subtract(A,B,X):-B>A,X is B-A.

multiply(A,B,X):-
	X is A*B.

maximum(A,B,C):-
	maximum(A,B,C):-A>B,A>C,write(A).
	maximum(A,B,C):-A<B,B>C,write(B).
	maximum(A,B,C):-C>B,A<C,write(C).
	maximum(A,B,C):-A=B,A<C,write(C).
	maximum(A,B,C):-A<B,A=C,write(B).
	maximum(A,B,C):-B=C,A>B,write(A).
	maximum(A,B,C):-A=B,A>C,write(A).
	maximum(A,B,C):-A=C,B<C,write(A).
	maximum(A,B,C):-B=C,A<C,write(C).

power(X,Y,ANS):-
	ANS is X**Y.
