function [A] = FirstDerivative1(n, h)
%Create a n-by-n matrix
% h is the range
% n is the discretization steps
L = (h * n)/2;
e = ones(n,1);
A = spdiags([-e,e],0:1,n,n);
A(n,n) = 1;
A(n,n-1) = -1;
A = A/h;