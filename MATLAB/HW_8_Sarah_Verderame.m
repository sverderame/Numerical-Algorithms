%% Homework 8 Sarah Verderame
clc, clear, close all

%% Problem 1
%   Use zero through third-order Taylor Series Expansions to predict $f(3)$ for
%$$f(x)=25x?3+-6x?2+7x-88$$ using a base point at $x=1$. Compute the true
%percent relative error for each approximation.

%define x somehow
f=25*x^3-6*x^2+7*x-88
x=3
real_a=f(x)

%Zeroeth Order Prediction:
%base point x=1
x=1
f_0=25*x^3-6*x^2+7*x-88

% True % relative error:
Et=(real_a-f_0)/real_a *100

%First Order Prediction:
f_1=diff('f','x')


