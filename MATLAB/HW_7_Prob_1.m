%% Homework 7 Problem 1
% Create an algorithm for determining the machine epsilon used by computers
% by setting epsilon equal to 1, and if 1 plus epsilon is less than or
% equal to 1, multiply the epsilon by two. If it is greater than 1, divide
% the epsilpn by 2. Then, repeat the process to make sure it is greater
% than 1.

%initial variables:
%   epsilon is 1

e=1;
while true
    if 1+e<=1
        e=e*2;
        break;
    else
        e=e/2;
    end
end
b='The machine epsilon e for this program is ';
c=[b,num2str(e)];
disp(c)
        



    