problem5(Answer) :-
	flag(answer,_,1),
	forall(between(2,20,N),flag(answer,A,A*N//gcd(A,N))),
	flag(answer,Answer,Answer).