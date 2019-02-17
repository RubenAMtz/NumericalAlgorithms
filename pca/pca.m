%Input matrix X (random)
x1=rand(100,1)*4;
x2=rand(100,1)*4;
x3=rand(100,1)*4;
X = [x1 x2 x3];
%Calculate the mean of the columns
m = mean(X);
%Substract the mean from the rows
X = X-m;
%Calculate the covariance matrix
C = cov(X);
%Calculate the eigenvalues and eigenvectors V and D
[V,D]=eigs(C);
%Given that our initial matrix is of 3 dimensions, we try to reduce our
%dimensiones by selecting the two first PC's v1 and v2 which correspond to
%the greatest and the second greatest values.
v1 = V(:,1);
v2 = V(:,2);
%Plot the plane
plot3([0 v1(1)],[0 v1(2)],[0 v1(3)],'k','linewidth',6);
plot3([0 v2(1)],[0 v2(2)],[0 v2(3)],'k','linewidth',6);
ezmesh(@(s,t)v1(1)*s+v2(1)*t,@(s,t)v1(2)*s+v2(2)*t,@(s,t)v1(3)*s+v2(3)*t)
hold on
scatter3(X(:,1),X(:,2),X(:,3));
v0 = [0,0,0];
%long arrow for eigen vector with highest variance
vectarrow(v0,v1);
hold on
%short arrow for eigen vector that follows:
vectarrow(v0,v2);