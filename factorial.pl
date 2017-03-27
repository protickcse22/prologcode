factorial(NUM, Fact) :-
	NUM > 0,
	NUM1 is NUM - 1,
	factorial(NUM1, Fact1),
	Fact is NUM * Fact1.
	factorial(0, 1).
