function[c,n]= daycung(fx, a, b, ss)
fx = matlabFunction(str2sym(fx));
n=0;
while(abs(b-a)>=ss)
    n= n+1;
    c=(a*fx(b) - b*fx(a))/(fx(b)-fx(a));
    fafc= fx(a)*fx(b);
    if(fafc<0 && b~=c)
        b=c;
    elseif(fafc>0 && a~=c)
        a=c;
    end
end
end