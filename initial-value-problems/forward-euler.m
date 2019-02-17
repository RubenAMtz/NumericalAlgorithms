function [t,y] =  ForwardEuler(f,u0,t0,tf,h)
%solving differential equations with initial value
if ~(tf>t0)
    error('upper limit must be greater than lower')
end    
t = (t0:h:tf)'; n = length(t);
    % if necessary, add an additional value of t
    % so that range goes from t = ti to tf
    if t(n)<tf
        t(n+1) = tf;
        n = n+1;
    end
    y = u0*ones(n,1); %preallocate y to improve efficiency
    for i = 1:n-1 %implement Euler's method
        y(i+1) = y(i) + f(t(i),y(i))*(t(i+1)-t(i));
    end
end