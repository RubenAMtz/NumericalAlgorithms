function [f]=jfreact(x,varargin)
df1dx1=0;
df1dx2=0;
df1dw1=1;
df1dw2=1;

df2dx1=x(3);
df2dx2=x(4);
df2dw1=x(1);
df2dw2=x(2);

df3dx1=2*x(3)*x(1);
df3dx2=2*x(4)*x(2);
df3dw1=x(1)^2;
df3dw2=x(2)^2;

df4dx1=3*x(3)*x(1)^2;
df4dx2=3*x(4)*x(2)^2;
df4dw1=x(1)^3;
df4dw2=x(2)^3;

J=[df1dx1 df1dx2 df1dw1 df1dw2; df2dx1 df2dx2 df2dw1 df2dw2; df3dx1 df3dx2 df3dw1 df3dw2; df4dx1 df4dx2 df4dw1 df4dw2];

f1=u(x(1),x(2),x(3),x(4));
f2=v(x(1),x(2),x(3),x(4));
f3=w(x(1),x(2),x(3),x(4));
f4=z(x(1),x(2),x(3),x(4));

f=[-f1;-f2;-f3;-f4];

function f=u(x1,x2,w1,w2)
f = w1 + w2 - 2;
function f=v(x1,x2,w1,w2)
f = w1*x1 + w2*x2;
function f=w(x1,x2,w1,w2)
f = w1*x1^2 + w2*x2^2 -2/3;
function f=z(x1,x2,w1,w2)
f = w1*x1^3 + w2*x2^3;