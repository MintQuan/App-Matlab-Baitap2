function [x,n] = PPTiepTuyen(fx, a, b, saiso)
fx = str2sym(fx);
DF1 = diff(fx);
DF2 = diff(DF1);
fx = matlabFunction(fx);
DF1 = matlabFunction(DF1);
DF2 = matlabFunction(DF2);
x0=(a+b)/2;
z = feval(fx,x0)/feval(DF1,x0);
n =1;
x=x0-z;
while abs(x-x0)>=saiso
    x0 = x;
    z = feval(fx,x0)/feval(DF1,x0);
    x=x0-z;
    n=n+1;
end
end