x0 = [-1 1 .5 1.5];
fun = @jfreact;
x = x0;
es = 0.0001;
err = 0;
cont = 0;
format long

for i=1:100
    x_old = x;
    dn = fsolve(fun,x);
    x = x + dn;
    err = (x - x_old) / x;
    cont = cont + 1
    if (err<es)
        break;
    end
end