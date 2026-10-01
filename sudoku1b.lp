num(1..4).

1 { sudoku(X,Y,N) : num(N) } 1 :- num(X), num(Y).
sudoku(X,Y,N) :- initial(X,Y,N).

:- sudoku(X,Y1,N), sudoku(X,Y2,N), Y1 < Y2.
:- sudoku(X1,Y,N), sudoku(X2,Y,N), X1 < X2.

% Subgrid of each cell: 2x2 blocks numbered row-major
subgrid(X,Y,((X-1)/2)*2 + ((Y-1)/2) + 1) :- num(X), num(Y).

#show subgrid/3.
#show sudoku/3.