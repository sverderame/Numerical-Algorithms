%% Homework 7 Problem 2

%   Determine the smallest positive real number used in MATLAB. The computer will be unable to reliably distinguish between zero and a quantitity that is smaller than this number.

clc,clear

%MATLAB already has the smallest positive value stored for its double precision value. We will use double-precision because MATLAB uses 64 bits.

str='The smallest positive double-precison value is:\n\t%g';
sprintf(str,realmin('double')) 

%Technically, this is the smallest positive real value MATLAB uses, so in a 64 bit program like this one, this is the lowest it can go. But, we can tests this theory with the following algorithm. These nunbers are classified as underflow, but MATLAB will still define them until they grow so small it believes the value is zero.

a=1e-308;       %starting with the lowest exponent
b='The smallest positive real number used in MATLAB is ';

while a>=0      %infinite loop until it reaches the "break" command
    a=a/10;     %divide a by 10 to keep the exponent decreasing
    if a==0 
        break;  %end loop as MATLAB thinks this small number is "zero"
    else
        c=[b,num2str(a)];
    end
end
disp(c)         %this displays the smallest number MATLAB defined before it found itself at "zero"


