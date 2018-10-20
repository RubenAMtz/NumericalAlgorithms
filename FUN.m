function y = FUN(x);

% This is a function picker. E.g., if FuncNo = 4 then this returns y=F4(x)
% Also, it keeps track of the number of times each function is called in the
% array NEvals(FuncNo)
%

global FuncNo;
global NEvals;

switch FuncNo
    case 1
        y = F1(x);
    case 2
        y = F2(x); 
    case 3
        y = F3(x);
    case 4
        y = F4(x);  
    case 5
        y = F5(x);
    case 6
        y = F6(x); 
    case 7
        y = F7(x);
    case 8
        y = F8(x);
    case 9
        y = F9(x);
    case 10
        y = F10(x); 
    case 11
        y = F11(x);
    case 12
        y = F12(x);
    otherwise
        error('Global var FuncNo must be set to one of 1,2,...,12  before using this function')
end;

NEvals(FuncNo) = NEvals(FuncNo) + 1;
    
function y = F1(x);  y = x-cos(x);
function y = F2(x);  y = exp(x+1.00202)-exp(1.0);
function y = F3(x);  y = log2(x)/(x-1)-1/log(2);
function y = F4(x);  y = x^20-1;
function y = F5(x);  y = -1.4+x^2+log(abs(1+3*(1-x)))/80;
function y = F6(x);  z = (x-1.01*1.0e-9)*1.0e8; y = (z-4.0)*(z+2.0)*(z+41.0);
function y = F7(x);  y = (x^2-2.2*x+1.21)*(x-1.1)/abs(x-1.1);
function y = F8(x);  y = abs(x-9.1)^4.5;
function y = F9(x);  y = abs(x-8.4317)^0.4;
function y = F10(x);  
    if abs(x) < 3.8e-4
        y = 0.0;
    else
        y = x*exp(-1.0/x^2);
    end;
    
function y = F11(x);  
    if x > -1.0e6
        y = exp(x);
    else
        y = exp(-1.0e6) - (x+1.0+1.0e6)^2;
    end;
        
function y = F12(x);
    y = atan(x);
    
    