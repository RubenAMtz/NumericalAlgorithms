function [root, flag, iters] = Bisect(X1, X2, Xtol, MaxIts)
%This function applies the Bisect method for root finding.
%X2 should be X_upper
%X1 should be X_lower
%Xtol is the error tolerance (this value has to be lower than the 
%                               value of the root, half its value)
%Maxits is the max number of iterations allowed
    %if Xtol == 0.0
    %    Xtol = 0.05;
    %end
    lower = X1;
    upper = X2;
    % check if there is change of sign (root between points)
    if FUN(lower)*FUN(upper) > 0
        flag = -2; 
        iters = 0;
        root = X1;
        return
    end
                                          
    iters = 0;                              
    while(iters <= MaxIts)                   
        x_i = (upper + lower) / 2;
        if FUN(x_i)*FUN(lower) < 0
            upper = x_i;
            error_a = abs((x_i - lower) / x_i);
        elseif FUN(x_i)*FUN(lower) > 0
            lower = x_i;
            error_a = abs((x_i - upper) / x_i);
        else
            error_a = 0;
        end

        iters = iters + 1;
        
        if error_a <= Xtol
            root = x_i;
            flag = 0;
            if FUN(x_i) == 0.0
                flag = 1;
            end
            return
        end
    end
    % set return values after iteration process    
    root = x_i;
    flag = -1;
    %iters = MaxIts;
    %function y = FUN(x);  y = log2(x)/(x-1)-1/log(2);
        
% flag 
% = 0; x- sequence convergence satisfied
% = 1; f - value is zero (f = 0)
% = -1; Maxits reached without convergence
% = -2; Cannot proceed