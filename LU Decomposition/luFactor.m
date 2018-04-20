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
%% Clear Variables 
clearvars -except A
%% Part 1; Error Checking
format short
% check if input A is given
if nargin ~= 1, error ('One matrix A is required')
end
%check is matrix is square
[r c] = size(A);
y = isvector(A)
if (r~=c) 
    error ('Matrix given needs to be a square!')
    %check if matrix is a vector
elseif y == 1
    error ('Matrix cannot be a vector, as that is essentially solved.')
end
%% Part 2; LU Factor
[s,s]=size(A);
%identity matrix L and P
L = eye(s);
P=L;
U=A;
for k=1:s
    %find maximum of desired column in case of pivot
    [x i]=max(abs(U(k:s,k)));
    i=i+k-1;
    if i~=k
        % pivot U
        U([k i],:) = U([i k],:);
        % pivot P
        P([k i],:) = P([i k],:);
        if k >= 2
            %pivot L
            L([k i],k-1) = L([i k],k-1);
        end
    end
    for f=k+1:s
        %substitute values into L
        L(f,k)=U(f,k)/U(k,k);
        %eliminate U(k+1,1)
        U(f,:)=U(f,:)-L(f,k)*U(k,:);
    end
end
PA = P*A;
LU = L*U;
LU = round(LU);
%check number of outputs
if nargout ~= 3
   error('Call the function to get 3 output arguments, using "[L,U,P]=luFactor(A)"')
%check if P*A=L*U
if PA == LU
    disp('P*A=L*U')
else
    error ('The code is wrong!')
end
end
end
