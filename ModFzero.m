function [root, flag, iters] = ModFzero(X1, X2, Xtol, Maxits)

count = 0;

options = optimset('Display', 'off', 'TolX', Xtol);
try
    [x, ~, exitflag] = fzero(@F,[X1 X2], options);
catch
    % catch if function is not available anymore
    flag = -1;
    root = X1;
    iters = count;
    clear count
    return
end

if exitflag == 1
    flag = 0;
    if FUN(x)==0.0
        flag = 1;
    end
elseif exitflag == -3
    flag = -2;
elseif exitflag == -6
    flag = -2;
end

root = x;
iters = count;
clear count

    function y = F(x)
        if count >= Maxits
            return
        end
        y = FUN(x);
        count = count + 1;
    end
end
