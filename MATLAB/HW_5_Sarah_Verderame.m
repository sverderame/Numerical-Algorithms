function [A] = HW_5_Sarah_Verderame(n,m)
%HOMEWORK 5, SARAH VERDERAME This is a function that returns an n by m matrix with spcefic elements.
%   The value of each element in the first row is the number of the column.
%   The value of each element in the first column is the number of the row.
%   The rest of the elements each has a value equal to the sum of the element above it and element to the left.
%   The function must return a sensible error if the user does not input
%   exactly two arguments.

n=8; %gave function two input arguments
m=8;

fun = 'HW_5_Sarah_Verderame';
nargin(fun); %checking to make sure there are two arguments

if nargin(fun) ~= 2
    error ('This function does not have two input arguments!') %will throw an error if not exactly two arguments
    
end

for R = 1:n
    for C = 1:m
        if R==1
            A(R,C)=C; %same number as C
        elseif C==1
            A(R,C)=R; %same number as R
        else
            A(R,C)= A(R,C-1)+ A(R-1,C); %The sum of the element above it and the element to the left
        end
    end
end
end



