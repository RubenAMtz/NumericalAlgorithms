function [Xlo, Xhi] = GetDat(Method,FuncNo)

% C
% C      Xlow and Xhigh are the initial ranges for  4 methods and
% C      13 functions
% C
% C...   Function 1
           Xlow (1,1) = -1000.0;
           Xhigh(1,1) =  12345.0;
           Xlow (2,1) =  0.0;
           Xhigh(2,1) =  1.0;
           Xhigh(3,1) =  1.0;
           Xlow (3,1) =  2.0;
           Xlow (4,1) = -1000.0;
           Xhigh(4,1) = 12345.0;
%C...   Function 2
           Xlow (1,2) = -2.0;
           Xhigh(1,2) =  1.0;
           Xlow (2,2) =  4.0;
           Xhigh(2,2) =  5.0;
           Xhigh(3,2) =  4.0;
           Xlow (3,2) =  5.0;
           Xlow (4,2) = -2.0;
           Xhigh(4,2) =  1.0;
%C...   Function 3
           Xlow (1,3) = 0.1;
           Xhigh(1,3) = 2.0;
           Xlow (2,3) = 0.2;
           Xhigh(2,3) = 2.0;
           Xlow (3,3) = 0.5;
           Xhigh(3,3) = 1.5;
           Xlow (4,3) = 0.1;
           Xhigh(4,3) = 2.0;
%C...   Function 4
           Xlow (1,4) = -0.9;
           Xhigh(1,4) = 1.5;
           Xlow (2,4) =  1.5;
           Xhigh(2,4) =  5.0;
           Xlow (3,4)  = 2.0;
           Xhigh(3,4) =  1.9;
           Xlow (4,4) = 1.5;
           Xhigh(4,4) = -0.9;
%C...   Function 5
           Xlow (1,5) = 0.0;
           Xhigh(1,5) = 2.0;
           Xlow (2,5) = 1.5;
           Xhigh(2,5) = 5.0;
           Xlow (3,5) = 1.5;
           Xhigh(3,5) = 1.0;
           Xlow (4,5) = 0.0;
           Xhigh(4,5) = 2.0;
%C...   Function 6
           Xlow (1,6) = 0.0;
           Xhigh(1,6) = 1.0;
           Xlow (2,6) =  0.00000001;
           Xhigh(2,6) =  5.0;
           Xlow (3,6)  = 1.54;
           Xhigh(3,6) =  1.5;
           Xlow (4,6) = 0.0;
           Xhigh(4,6) = 1.0;
%C...   Function 7
           Xlow (1,7) = 1.0;
           Xhigh(1,7) = 3.0;
           Xlow (2,7) =  0.7;
           Xhigh(2,7) =  5.0;
           Xlow (3,7)  = 2.0;
           Xhigh(3,7) =  2.3;
           Xlow (4,7) = 1.0;
           Xhigh(4,7) = 3.0;
%C...   Function 8
           Xlow (1,8) = 8.0;
           Xhigh(1,8) = 13.0;
           Xlow (2,8) =  9.3;
           Xhigh(2,8) =  5.0;
           Xlow (3,8) = 9.2;
           Xhigh(3,8) =  9.3;
           Xlow (4,8) = 8.0;
           Xhigh(4,8) = 13.0;
%C...   Function 9
           Xlow (1,9) = 8.0;
           Xhigh(1,9) = 13.0;
           Xlow (2,9) =  8.431;
           Xhigh(2,9) =  5.0;
           Xlow (3,9) = 8.429;
           Xhigh(3,9) =  8.43;
           Xlow (4,9) = 8.0;
           Xhigh(4,9) = 13.0;
%C...   Function 10
           Xlow (1,10) = -1.0;
           Xhigh(1,10) = 4.0;
           Xlow (2,10) = 1.0;
           Xhigh(2,10) =  0.1;
           Xlow (3,10) = 5.0;
           Xhigh(3,10) =  0.2;
           Xlow (4,10) = -1.0;
           Xhigh(4,10) = 4.0;
%C...   Function 11
           Xlow (1,11) = -1.1e60;
           Xhigh(1,11) = 0.0;
           Xlow (2,11) =  -1.5e6;
           Xhigh(2,11) =  5.0;
           Xlow (3,11)  = -1.1e6;
           Xhigh(3,11) =  -1.2e6;
           Xlow (4,11) = -1001200.0;
           Xhigh(4,11) = 0.0;
%C...   Function 12
           Xlow (1,12) = -1.0e-250;
           Xhigh(1,12) = +2.0e-250;
           Xlow (2,12) =  1.39174520027073;
           Xhigh(2,12) =  100.0;
           Xlow (3,12) =  -1.4;
           Xhigh(3,12) =   4.741278845;
           Xlow (4,12) = -0.5;
           Xhigh(4,12) =  100.0;
%C...   Function 13
           Xlow (1,13) = -0.0;
           Xhigh(1,13) =  0.20;
           Xlow (2,13) =  0.3;
           Xhigh(2,13) =  100.0;
           Xlow (3,13) =  -3.5;
           Xhigh(3,13) =  3.5;
           Xlow (4,13) =  10.0;
           Xhigh(4,13) =  0.5;
%C
Xlo = Xlow(Method, FuncNo);
Xhi = Xhigh(Method, FuncNo);
