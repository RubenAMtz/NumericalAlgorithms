function [x, k] = jacobi(A, b, maxits, e, x0)
% Input arguments:
% - Input should be a n-by-n matrix A
% - Input vector b
% - An e tolerance, specifying the desired accuracy
% - The maximum number of iterations maxits
% - An initial solution x0

% Return arguments:
% - A solution x
% - The number of iterations k

dimensions = size(A);

%Check for dimensions (has to be n-by-n)
if dimensions(1) ~= dimensions(2)
    x = [];
    k = 0;
    error('Matrix has to be an n-by-n matrix');
end
x = x0;
residual_initial = x0;
% Iterate through rows
for iters=0:maxits
    % Iterate through columns
    for i=1:dimensions(1)
        %Reset sumation for every new row
        sum = 0;
        for j=1:dimensions(2)
            if i~=j
                sum = sum + A(i,j)*x(j);
            end
        end
        x(i) = (b(i)-sum)/A(i,i);
    end
    
    k = iters;
    % Save first residual
    if iters == 1
        residual_initial = b - A*transpose(x);
        norm(residual_initial)
    end
    %Calculate current residual
    residual = b-A*transpose(x);
    rel_residual = norm(residual,2)/norm(residual_initial,2);
    %If tolerance has been reached, return
    if rel_residual <= e
        return;
    end
end