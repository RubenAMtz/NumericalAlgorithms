function [U,y,flag] = Gauss(A,b)
    rows = size(A,1);
    columns = size(A,2);

    if rank(A) < min(rows,columns)
        flag = -1;
        U = [];
        y = [];
        return
    end
    flag = 1;
    
    if rows ~= columns
        return
    end

    for j=1:(columns-1)
        for i=(j+1):rows
            L= eye(rows);
            L(i,j) = -A(i,j)/A(j,j);
            A = L*A;
            b = L*b;
        end
    end
    U = A;
    y = b;
end