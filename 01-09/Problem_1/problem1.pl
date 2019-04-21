%! [problem1].
%! problem1(X)

problem1(Sum) :- findall(N,num(N),L), sumlist(L,Sum).

num(N) :- between(1,999,N), multiple(N).

multiple(N) :- (N rem 3) =:= 0, !.
multiple(N) :- (N rem 5) =:= 0.