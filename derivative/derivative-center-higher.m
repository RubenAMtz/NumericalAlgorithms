function [A] = FirstDerivative2(n, h)
%Create a n-by-n matrix
% h is the range
% n is the discretization steps
L = (h * n)/2;
e = ones(n,2);
%we add zeros in the middle column 
z = zeros(n,1);
e(:,2) = z;
A = spdiags([-e,e],-1:1,n,n);

A(1,1) = -3;
A(1,2) = 4;
A(1,3) = -1;
A(n,n) = 3;
A(n,n-1) = -4;
A(n,n-2) = 1;

A = A/(2*h);