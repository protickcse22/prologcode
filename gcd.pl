gcd(X, X, G) :- G is X.
gcd(X, Y, G) :- X>Y, G1 is X-Y, gcd(Y, G1, G).
gcd(X, Y, G) :- X<Y, G1 is Y-X, gcd(X, G1, G).
