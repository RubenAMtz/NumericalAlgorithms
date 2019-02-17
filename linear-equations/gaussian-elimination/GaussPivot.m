function [U,y,flag] = GaussPivot(A, b, tol)
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
        P= zeros(rows);
        if A(j,j) < tol
            greatest = max(A(:,j));
            index = max(find(A(:,j)==greatest));
            P(j,index) = 1; %elemnt to be switched down
            P(index,j) = 1; %element to be swtiched up
            for z=1:rows
                if 0 == max(P(z,:))
                    P(z,z) = 1; 
                end
            end
            A = P*A;
        end
        L= eye(rows);
        L(i,j) = -A(i,j)/A(j,j);
        A = L*A;
        b = L*b;
    end
end
U = A;
y = b;
end