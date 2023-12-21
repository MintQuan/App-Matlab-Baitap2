function [a,b] = HoiQuyxmu(x,y)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
n = length(x);
X = log10(x);
Y = log10(y);
A = [sum(X.^2) sum(X);sum(X) n];
B = [sum(X.*Y);sum(Y)];
heso = A\B;
a = 10^heso(2);
b = heso(1);
plot(x,y,'*');
hold on;
yi = a.*x.^b;
plot(x,yi);
y = a*9^b
end