function NewtonPoly = NewtonInterpolationSyms(xa, ya)
    syms x;
    n = length(xa);
    d = ya;
    for i = 2:n
        for j = n:-1:i
            d(j) = (d(j) - d(j-1)) / (xa(j) - xa(j-i+1));
        end
    end
    NewtonPoly = ya(n);
    for i = n-1:-1:1
        term = 1;
        for j = 1:i
            term = term * (x - xa(j));
        end
        NewtonPoly = NewtonPoly + d(i) * term;
    end
end