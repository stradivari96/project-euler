%! [problem4].
%! problem4(X).
%! halt.

problem4(Answer) :- problem4(999,999,0,Answer), !.
problem4(99,_,A,A).
problem4(X,Y,Z,A) :- (X*Y =< Z; Y =:= 99), X1 is X-1, problem4(X1,X1,Z,A).
problem4(X,Y,_,A) :- N is X*Y, palindrome(N), X1 is X-1, problem4(X1,X1,N,A).
problem4(X,Y,Z,A) :- Y1 is Y-1, problem4(X,Y1,Z,A).

tolist(N, X) :- number_chars(N,X),format('',[X]).
palindrome(N) :- tolist(N, X), reverse(X, X).
