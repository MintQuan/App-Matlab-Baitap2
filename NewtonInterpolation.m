function result = NewtonInterpolation(xa, ya, x)
d = DividedDifference(xa, ya);
result = NewtonForm(xa, d, x);
end