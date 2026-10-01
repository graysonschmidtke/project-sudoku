num(1..4).

1 { sudoku(X,Y,N) : num(N) } 1 :- num(X), num(Y).
sudoku(X,Y,N) :- initial(X,Y,N).

:- sudoku(X,Y1,N), sudoku(X,Y2,N), Y1 < Y2.
:- sudoku(X1,Y,N), sudoku(X2,Y,N), X1 < X2.

subgrid(X,Y,((X-1)/2)*2 + ((Y-1)/2) + 1) :- num(X), num(Y).

% No repeated number within a subgrid
:- sudoku(X1,Y1,N), sudoku(X2,Y2,N),
   subgrid(X1,Y1,G), subgrid(X2,Y2,G),
   (X1,Y1) < (X2,Y2).

#show sudoku/3.