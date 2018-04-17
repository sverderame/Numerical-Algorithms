function [I] = Simpson(x,y)
%This function integrates experimental data using Simpson's 1/3 Rule.
%   The function numerically evaluates the integral of the vector of
%   function values 'y' with respect to 'x'. If there are an off number of
%   intervals in the data, this function will use the trapezoidal rule for
%   the last interval, and then add up both summations at the end to get an
%   overall approximation of the data given.
clearvars -except x y
%% General Check for Errors
if nargin<1, error('The function must be given an input')
end
if nargin<2, error('The function must be given two inputs, in terms of independent and dependent variable data.')
end
a = isvector(x);
if a~= 1,
    error('The input of x must be a vector.')
end
b = isvector(y);
if b~= 1, error('The input of y must also be a vector')
end

%% Specific Checking of Errors for this Function
if length (x) ~= length (y)
    error('Vectors x and y must be the same length, which each data point corresponding to another.')
end
A = diff(x);
if all(A ~= A(1))
    error('The elements in vector x are not equally spaced.')
end
if rem(length(x), 2) ~= 1 %if x does not have an odd number of points
    warning('This function has an odd number of intervals, so the trapezoidal rule will be used for the last interval in the data.')
end
    %% Function Time
if isrow(x) == 1
    x = x'
end
if isrow(y) == 1
    y = y'
end
[i] = size(x,1);
[f] = size(y,1);
n = f-1; % n is the number of intervals
if mod(n,2) == 0 %if number of intervals is even, do Simp Rule
    S = (x(i)-x(1))*(y(1)+sum(4*y(3:2:end-1))+sum(2*y(2:2:end-1))+y(end))/(3*n);
    I = S
else %function has an odd # of intervals
    %re-do simp with an even # of intervals, so subtract last point from both x
    %and y
    xt = x(end-1:end)
    yt = y(end-1:end)
    T = trapz(xt,yt)
%     [i] = size(x,1)-1
%     [f] = size(y,1)-1
%     T = (x(end)-x(i))*((y(i))+y(end))/2
    %redefine simps and do simp equation
    n = i-1
    S = (x(i)-x(1))*((y(1)+sum(4*y(3:2:i-1))+sum(2*y(2:2:i-1))+y(i)))/(3*n)
    %for last element of x and y perform trap rule
    %%trap = (x(i-1)-x(i)) * y(j-1)+2*y(diff((j-1,j))/2)
    I = T + S
end
end

