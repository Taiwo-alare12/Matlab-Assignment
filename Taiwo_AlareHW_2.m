% Solving matrix equation Ax=B using Guassian Elimination Method
% A is the co-efficent matrix (n*n) and B is the source vector
disp('The co-efficent matrix should be in a bracket and the rows should be separated with ; [a b c; 1 2 3]')
disp('The source vector should be in a bracket and the rows should be separated with ; [a;b;c]')

A = input('Enter your coefficient matrix: ');
B = input('Enter the source vector: ');
x = GaussElim(A, B);% Calling the function x= GaussElim(A,B)
