%% Homework 1

%% Problem 8
clc, clear
%create a plot of density versus Celcius
%X = temperature in Celcius
%y = density (g/cm^3)
F = 32:3.6:93.2;
X = 5/9*(F-32);
y = 5.5289e-8*X.^3-8.5016e-6*X.^2+6.5622e-5*X+0.99987
plot(X,y), xlabel('Temperature in Celcius')
ylabel('Density(g/cm^3)'), title('Density versus Celcius')
grid on

%% Problem 9
clc, clear
%%The charge on a capacitor Q as a function of time
%t = time, q = initial charge, R = resistance, 
%L = inductance, C = capacitance
dbstop if error
t =linspace(0,0.8)
q=10; R=60; L=9; C=0.00005
Q = q*exp((-R*t)/(2*L)).*cos(sqrt((1/(L*C))-((R/(2*L))^2))*t)
plot(t,Q)
xlabel('Time'), ylabel('Charge on the Capacitor')
title('Charge on the Capacitor as a Function of Time')
grid on

%% Problem 10
clc, clear
%plot this function from
z = -5:0.05:5
e = 10
f=1/(sqrt(2*pi))*e.^(-(z.^2)/2)
plot(z,f)
xlabel('z'), ylabel('Frequency')
title('Standard Normal Probability Density Function')
grid on
