function v = lagranggeinterp(x,y,u)
if nargin<3
    u=sym('x');
end
n=length(x);
v=zeros(size(u));
for i= 1:n
    w=ones(size(u));
    for j=[1:i-1 i+1:n]
        w=(u-x(j))./(x(i)-x(j)).*w;
    end
    v=v+w*y(i);
     if nargin<3
         v=simplify(v);
         v=expand(v);
     end
end
end