fibonacci(N,RES):-
	N<3,
	RES is 1.
fibonacci(N,RES):-
	fibonacci(N-1,RES1),
	fibonacci(N-2,RES2),
	RES is RES1+RES2.
