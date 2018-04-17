function [L,U,P]=luFactor(A)
%The LU Factorization Algorithm
%   This function determines the LU Factorization of a square matrix by implementing the use of partial pivoting.
%   Sarah Verderame
%   Mech 105
%   3/21/18

% Inputs:
%   A = the coefficient matrix given
% Outputs:
%   L = lower triangular matrix
%   U = upper triangular matrix
%   P = pivot matrix
%% Part 1; Error Checking
format short
% check if input A is given
if nargin < 1, error ('Matrix A is required')
end
%check is matrix is square, if not, throw an error
[r c] = size(A);
if (r~=c), error ('Matrix given needs to be a square!')
end
%% Part 2; LU Factor
[s,s]=size(A);
L = [1 0 0;
     0 1 0;
     0 0 1];
P=L; 
U=A;
for k=1:s
    [x i]=max(abs(U(k:s,k)));
    i=i+k-1;
    if i~=k
        % pivot U
        U([k i],:) = U([i k],:)
        % pivot P
        P([k i],:) = P([i k],:)
        if k >= 2
        k = k
        L([k i],k-1) = L([i k],k-1)
        end
    end
    for p=k+1:s
        L(p,k)=U(p,k)/U(k,k);
        U(p,:)=U(p,:)-L(p,k)*U(k,:);
    end
end
PA = P*A
LU = L*U;
LU = round(g)
if h == g
disp('P*A=L*U')
else
    error ('The code is wrong')
end
end
