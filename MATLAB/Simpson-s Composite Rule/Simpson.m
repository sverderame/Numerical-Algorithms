function [I] = Simpson(x,y)
%This function integrates experimental data using Simpson's 1/3 Rule.
%   The function numerically evaluates the integral of the vector of
%   function values 'y' with respect to 'x'. If there are an off number of
%   intervals in the data, this function will use the trapezoidal rule for
%   the last interval, and then add up both summations at the end to get an
%   overall approximation of the data given.
clearvars -except x y
%% General Check for Errors
if nargin<1
    error('The function must be given an input')
end
if nargin<2
    error('The function must be given two inputs, in terms of independent and dependent variable data.')
end
a = isvector(x);
if a~= 1
    error('The input of x must be a vector.')
end
b = isvector(y);
if b~= 1, error('The input of y must also be a vector')
end

%% Specific Checking of Errors for this Function
if length (x) ~= length (y)
    error('Vectors x and y must be the same length, which each data point corresponding to another.')
end
A = diff(x); %make sure matrix X is equally spaced
B = all(A==A(1));
if B ~= 1
    error('The elements in vector x are not equally spaced.')
end
if rem(length(x), 2) ~= 1 %if x does not have an odd number of points
    warning('This function has an odd number of intervals, so the trapezoidal rule will be used for the last interval in the data.')
end
    %% The Function
if isrow(x) == 1 %change both x and y inputs into n x 1 arrays
    x = x'
end
if isrow(y) == 1
    y = y'
end
[i] = size(x,1);
[f] = size(y,1);
n = i-1 % n is the number of intervals
if mod(n,2) == 0  %if number of intervals is even, do Simp Rule
    S = (x(i)-x(1))*(y(1)+4*sum(y(3:2:end-1))+2*sum(y(2:2:end-1))+y(end))/(3*n);
    I = S;
else %the number of intervals is odd
    %for last element of x and y perform trap rule
    xt = x(end-1:end);
    yt = y(end-1:end);
    T = (xt(end)-xt(end-1))*((yt(end-1))+yt(end))/2;
    %redefine matrices and do Simp Rule
    n = i-2;
    if mod(n,2) ~= 0
        error('The number of intervals is still not even, something is wrong.')
    end
    S = (xt(1)-x(1))*(y(1)+4*sum(y(3:2:n))+2*sum(y(2:2:n))+yt(1))/(3*n);
I = S+T;
end
end

