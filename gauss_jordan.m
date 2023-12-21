function A=gauss_jordan(a,b)
    % gauss-jordan giải hệ Ax=b bằng phưong pháp Gauss-Jordan
    % Input: A là ma trận, b là kết quả của ma trận
    % Output: A là ma trận mở rộng sau khi đã biến đổi
    % cột cuối cùng của A chính là nghiệm X của hệ ban đầu.
    A = [a,b];
    s=size(A);
    n=min(s);
    for i=1:n
        [t,r]=max(abs(A(i:end,i))) ;
        t = A(r+i-1,:);
        A(r+i-1,:)= A (i,:);
        A(i,:) = t;
        % Elimination
        A(i,[1:i-1 i+1:end])= A(i,[1:i-1 i+1:end])/A(i,i);
        A(i,i)=1;
        s = A(i,i+1:end);
        for j = [1:i-1 i+1:n]
            A(j,i+1:end) = A(j,i+1:end)-A(j,i).*s;
        end
        A([1:i-1 i + 1 : end],i)=0;
    end
end