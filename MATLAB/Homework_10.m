%% Homework 10
%Sarah Verderame
%Determine the value of x that satifies the equation.
%In other words, find the roots of the given function.
%I will do this by initializing the function then calling for the
%falseposition function to find the roots.

%Initialize variables
k = 0.05;
pt = 3; %atm

f = @(x)x/(1-x)*sqrt(2*pt/(2+x))-k; %function in terms of x

figure;
fplot(f,[-0.02,0.06]); %plot the function to guess the root bracket
ax = gca;
ax.XAxisLocation  = 'origin'; %move the x-axis to y=0

falseposition(f,0.01,0.5) %use the falseposition function to estimate the root of the function


