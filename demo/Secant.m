function [root, flag, iters] = Secant(X1, X2, Xtol, Maxits)
    %This function applies the Secant Method for root finding
    
    %Algorithm
    % Compute f(x_k) & f(x_k-1) , being k the kth iteration
    % Compute the next approximation: x_k+1 = x_k - [f(x_k)*(x_k-x_k-1)] / [f(x_k)-f(x_k-1)]
    % If abs(x_k+1 - x_k) < error tolerance or k > N , stop.
    first = X1; % x_k-1
    second = X2; %x_k
    
    iters = 0;
    %if Xtol == 0.0
    %   Xtol = 0.05;
    %end
    
    error_a = 0;
    %x_i = first;
    
    while(iters < Maxits)
        iters = iters + 1;
        f_first = FUN(first); % x1
        f_second = FUN(second); % x2
        
        if f_first == f_second % 0 division
            root = second;
            flag = -2;
            return
        end
        
        if isnan(f_first) || isnan(f_second)
            root = second;
            flag = -2;
            return
        end
        %x_old = x_i; %for testing
        % Compute the next approximation: x_k+1 = x_k - [f(x_k)*(x_k-x_k-1)] / [f(x_k)-f(x_k-1)]
        x_i = second - (f_second*(second-first)) / (f_second-f_first);
        %if isnan(x_i)
        %    root = x_old;
        %    error = error_a;
        %    flag = -2;
        %    return
        %end
        
        first = second;
        second = x_i;
        error_a = abs(second - first);
       
        if error_a <= Xtol
            root = second;
            flag = 0;
            if FUN(second)==0.0
                flag = 1;
            end
            return
        end

    end
    
    if iters >= Maxits
        root = x_i;
        flag = -1;
    end
    
    %function y = FUN(x);  y = log2(x)/(x-1)-1/log(2);
    % flag
    % = 0; x- sequence convergence satisfied
    % = 1; f - value is zero (f = 0)
    % = -1; Maxits reached without convergence
    % = -2; Cannot proceed