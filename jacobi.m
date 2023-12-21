function [X,numites]=jacobi(A,B)
% Input: _ A is an nxn strictly diagonally dominant matrix
% _ B is an nxl matrix
% _ xo is an nxl matrix: the initial guess
% _ tol is the tolerance for X
% _ maxi is the maximum of number of iteration
% Output: _ X is the jacobi approximation to the solution
% _ numites is number of iterations
    if nargin<5
        maxl=100;
    end
    if nargin<4
        tol=le-5;
    end
    n=length(B);
    X=X0; numites=0;
    for k=l:maxi
        for i=l:n
            X (i) = (B ( i ) -A ( i , [ l : i - l i +1 : n ] )*X0 ( [1 : i - 1 i + l : n ] ) ) / A ( i , i ) ;
        end
        err=abs(norm(X-XO)); relerr=err/(norm(X)+eps);
        X0=X; numites=numites+l;
        if (err<tol)||(relerr<tol)
            break
        end
    end
end