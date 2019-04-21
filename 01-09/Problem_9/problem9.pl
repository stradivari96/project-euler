problem9(Answer) :-
	between(1,1000,A),
	Bmin is A+1, Bmax is (1000-A),
	between(Bmin,Bmax,B),
	C is 1000-A-B,
	A*A + B*B =:= C*C,
	Answer is A*B*C, !.
