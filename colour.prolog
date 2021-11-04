:- use_module(library(reif)).

colour(red).
colour(green).
colour(blue).
colour(yellow).

compose(yellow, blue, green).

hailstone(N, N).
hailstone(N0, N) :-
    N0 #= 2*N1,
    hailstone(N1, N).

hailstone(N0, N) :-
    N0 #= 2*_ + 1,
    N1 #= 3*N0 + 1,
    hailstone(N1, N).

hailstone_(N, N).
hailstone_(N0, N) :-
    R #= N0 mod 2,
    if_(R = 0,
        N0 #= 2*N1,
        N1 #= 3*N0 + 1),
    hailstone(N1, N).


% :- hailstone_(X, 25).
%@    X = 25
%@ ;  X = 50
%@ ;  X = 100
%@ ;  X = 200
%@ ;  X = 400
%@ ;  X = 800
%@ ;  ...

% ?- hailstone_(25, X).
%@    X = 25
%@ ;  caught: error(existence_error(procedure,(=)/3),(=)/3)
