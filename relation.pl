female(jane).
female(doe).

male(bill).
male(gates).
male(junior_bill).

parent(bill,jane).
parent(bill,junior_bill).

parent(doe,jane).

father(gates,bill).
father(bill,junior_bill).

sister(jane,junior_bill).

mother(X,Y) :- parent(X,Y), female(X).
sibling(X,Y) :- parent(P,Y), parent(P,X), X \= Y.
sister(X,Y) :- sibling(X,Y), female(X).

grandparent(X,Y) :- parent(P,Y), parent(X,P).
greatgrandparent(X,Y) :- parent(P,Y), grandparent(X,P).

grandfather(Z,X):-father(Y,X),father(Z,Y),male(Z).
grandmother(P,S):-mother(P,Q),mother(Q,S),female(P).

entwined(X,Y) :- parent(X,Child), parent(Y,Child), X \= Y.

uncle(Uncle, N) :- parent(Par,N), sibling(Uncle,Par), male(Uncle).
uncle(Uncle, N) :- parent(Par,N), sibling(Par, Aunt), entwined(Aunt, Uncle), male(Uncle).

cousin(X,Y) :- grandparent(GP, X), grandparent(GP, Y), X \= Y, \+sibling(X,Y).
ancestor(X,Y) :- parent(X,Y). 
ancestor(X,Y) :- parent(P,Y), ancestor(X,P).
