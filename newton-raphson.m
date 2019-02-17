function [root, flag, iters] = Newton(X1, Xtol, Maxits)
%This function applies the Newton-Raphson Method for root finding

%Algorithm
%Compute f(x) & df(x)
%Compute x_k+1 = x_k -f(x_k)/df(x_k), where _k refers to the kth iteration
%Test for convergence of failure: if abs(f(x_k)) < error tolerance or
% abs(x_k+1 - x_k)/abs(x_k) < error tolerance or k > N where N is Maxits
x_i = X1;
iters = 0;

%if Xtol == 0.0
%   Xtol = 0.05;
%end

%errors = [];
while(iters < Maxits)
    iters = iters + 1;
    f_x = FUN(x_i); %10
    df_x = DFUN(x_i); %1
    if df_x == 0
        root = x_i;
        flag = -2;
        return
    end
    
    x_temp = x_i;
    x_i = x_i - f_x / df_x;
    error_a = abs(x_i - x_temp)/abs(x_temp);
    % ...
    if error_a <= Xtol
        root = x_i;
        flag = 0;
        if FUN(x_i) == 0.0
            flag = 1;
        end
        return
    elseif abs(FUN(x_i)) <= Xtol
        root = x_i;
        flag = 0;
        if FUN(x_i) == 0.0 %0.0000000000000000e+00
            flag = 1;
        end
        return
    end
end
if iters >= Maxits
    root = x_i;
    flag = -1;
end

% flag
% = 0; x- sequence convergence satisfied
% = 1; f - value is zero (f = 0)
% = -1; Maxits reached without convergence
% = -2; Cannot proceed