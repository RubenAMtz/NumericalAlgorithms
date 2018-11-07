function [x] = BackSubst(A, b)

rows = size(A,1);
columns = size(A,2);

if rows ~= columns
    return
end
x = zeros(1,columns);

x(rows) = b(rows)/A(rows,columns);

for i=(rows-1):-1:1
    sum = 0;
    for j=(i+1):columns
        sum = sum + A(i,j)*x(j);
    end
    x(i)=(b(i)-sum)/A(i,i);
end
