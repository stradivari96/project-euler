problem6(Answer) :-
	numlist(1,100,L),
	sumlist(L,X), square(X,X1),
	maplist(square,L,Y), sumlist(Y,Y1),
	Answer is X1-Y1.

square(N,N*N).