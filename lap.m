function [x0,n] = lap(fx,fp,a,b,saiso)
fx = str2func(['@(x)',fx]);
fp = str2func(['@(x)',fp]);
n=0;
c=(a+b)/2;
if(fx(a)*fx(c)<0)
    x0=a;
else
    x0=b;
end
while(1)
    x1=fp(x0);
    n=n+1;
    e=abs(x1-x0);
    if(e<saiso)
        break;
    end
    x0=x1;
end
end