%% FALSEPOSITION.M ALGORITHM
% Sarah Verderame
% February 14, 2018
% Colorado State University

function [root,fx,ea,iter] = falseposition(func,xl,xu,es,maxiter)
%Function "falseposition" uses the falseposition method to approximate the
%root of a given function by finding the backets of a value of x that
%contain sign changes of the given function
%
%inputs:
%   func = name of function
%   x1,x2 = values of x that when entered into the function give opposite
%signed values
%   es = the desired relative error (which will default to 0.0001%)
%   iter = the number of iterations desired (which will default to 200)
%   varargin{:} = other parameters used by function
%outputs:
%   root = the estimated root location
%   fx = the function evaulated at the root
%   ea = the approximate relative error as a percentage
%   maxiter = how many iterations were performed
format long

if nargin < 3, error ('at least 3 arguments are required')
end
if nargin < 4, es = 0.0001; maxiter = 200;
end

root = xl;       %root needs to have a value
ea = 100;        %start at an approximate relative error of 100%
iter = 0;   %define the maximum iterations this program will run
 
%Run the Program
while ea>=es || iter == maxiter
    if func(xl)*func(xu)<0  %as long as the two initial values create a bracket, run the code
        rootold = root;
        root = xu-((func(xu)*(xl-xu))/(func(xl)-func(xu)));
    else
        error ('The two initial guesses were not valid lower and upper limits!') 
    end
    fx=func(root); %find the value of the function at the new root
    if func(xl)*fx<0
        %the root lies in the first subinterval and the new root becomes the upper limit
        xu = root;
    else
        %the root lies in the second subinterval and the new root becomes the lower limit
        xl = root;
    end
    ea = ((root-rootold)/root)*100;
    ea = double(ea); %The approximate relative error
    iter = iter+1;  %increase the number of iterations
end
A = ['The number of iterations used was: ', num2str(iter)];
disp(A)
root=double(root);
R = ['The root approximation is: ', num2str(root)];
disp(R)
end


