% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

num(1..4).

1 { sudoku(X,Y,N) : num(N) } 1 :- num(X), num(Y).

sudoku(X,Y,N) :- initial(X,Y,N).

:- sudoku(X,Y1,N), sudoku(X,Y2,N), Y1 < Y2.

:- sudoku(X1,Y,N), sudoku(X2,Y,N), X1 < X2.

#show sudoku/3.