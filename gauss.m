function x = gauss (A,b)
    n = size(A,1);
    b = b(:); % Đảm bảo vector b luôn ở dạng cột
    nb = n+1; Ab = [A b] ; % ma tran mo rong
    % Qua trinh thuan
    for i = 1:n-1
        for j = i+1:n
            Ab(j,i:nb) = Ab(j,i:nb)-Ab(j,i)*Ab(i,i:nb)/Ab(i,i);
        end
    end
    % Qua trinh nghich
    x=zeros(n,1);
    x(n) = Ab(n,nb)/Ab(n,n);
    for i = n-1 :-1 :1
        x(i) = (Ab(i,nb)-Ab(i, i + 1 :n)*x(i + 1 :n) )/Ab(i, i);
    end
    
end