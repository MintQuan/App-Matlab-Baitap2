function x = LUdec_sol(A,b)
    % LU decomposition of matrix A; returns A = [L\U].
    % USAGE: A = LUdec(A)
    % Solves L*U*b = x, where A contains both L and U;
    % that is A has the form [L\U].
    % USAGE: x = LUsol(A,b)
    n = size(A,1);
    for k = 1:n-1
        for i = k+1:n
            if A(i,k) ~= 0.0
                lambda = A(i,k)/A(k,k);
                A(i,k+1:n) = A(i,k+1:n) - lambda*A(k,k+1:n);
                A(i,k) = lambda;
            end
        end
    end
    if size(b,2) > 1; b = b';end
    n = length(b); 
    for k = 2:n
        b(k) = b(k) - A(k,1:k-1)*b(1:k-1);
    end
    for k = n:-1:1
        b(k) = (b(k) - A(k,k+1:n)*b(k+1:n))/A(k,k);
    end
    x = b;
end