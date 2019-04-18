%! [problem3].
%! problem3(X).
%! halt.

problem3(Answer) :- prime_factors(600851475143,L), max_list(L,Answer).

prime_factors(N,X) :- prime_factors(N,2,X).
prime_factors(N,P,[N])   :- N < P*P, !.
prime_factors(N,P,[P|L]) :- N rem P =:= 0, !, N1 is N//P, prime_factors(N1,P,L).
prime_factors(N,2,X)     :- !, prime_factors(N,3,X).
prime_factors(N,P,X)     :- !, plus(P,2,P1), prime_factors(N,P1,X).