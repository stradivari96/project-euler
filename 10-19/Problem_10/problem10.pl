problem10(Answer) :-
    numlist(1, 2000000, C),
    include(prime, C, R),
    sumlist(R, Answer).

composite(N) :- N<2.
composite(N) :-
    N>2,
    N2 is floor(sqrt(N)),
    between(2, N2, A),
    0 =:= mod(N, A).

prime(N) :- not(composite(N)).