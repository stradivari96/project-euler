%! [problem2].
%! problem2(X).
%! halt.

problem2(Answer) :- findall(N,fibEven(N),L), sumlist(L,Answer).

step(N,X) :- N = X; plus(3,N,N1), step(N1,X).

fibEven(X) :- step(2,N), fib(N,X), (X < 4000000 -> true; !, false).

fib(0, 1) :- !.
fib(1, 1) :- !.
fib(N, Result) :- N1 is N - 1, N2 is N - 2, fib(N1, Result1), fib(N2, Result2), Result is Result1 + Result2.
