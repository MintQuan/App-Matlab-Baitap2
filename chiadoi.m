function [x,n] = chiadoi(fx, a, b, ex)
fx = matlabFunction(str2sym(fx));
n=0;
ea = b-a;
while ea>=ex
    x=(b+a)/2;
    ea = abs(b-a);
    test = fx(a)*fx(b);
    if (test < 0)
        b=x;
    else
        a=x;
    end
    if test == 0
        ea = 0;
    end
    n = n+1;
end
end
