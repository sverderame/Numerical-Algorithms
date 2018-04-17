%% Ungraded Homework 2
%% Sarah Verderame
%% Problem 1
%Question 1
%Generate a plot of a function for the charge on a capacitor from time 0 to
%0.8 seconds given initial conditions/constants.
clc, clf, clear
t =linspace(0,0.8); 
q=10; R=60; L=9; C=0.00005; %intialize variables
Q = q*exp((-R*t)/(2*L)).*cos(sqrt((1/(L*C))-((R/(2*L))^2))*t);
subplot(3,1,1) %Puts a graph of certain dimensions on a single figure
plot(t,Q) %plot the graph of time versus charge
xlabel('Time'), ylabel('Charge on the Capacitor')
title('Charge on the Capacitor as a Function of Time')
grid on

% Question 2
%Create another plot, using the subplot function,
%showing when C is ten times greater (0.0005).
subplot(3,1,2); %puts another graph on same figure as Question 1
t = linspace(0,0.8);
q=10; R=60; L=9; C=0.0005;
Q = q*exp((-R*t)/(2*L)).*cos(sqrt((1/(L*C))-((R/(2*L))^2))*t);
plot(t,Q)
xlabel('Time'), ylabel('Charge on the Capacitor')
title('Charge on the Capacitor as a Function of Time')
grid on

% Question 3
%The response changed when the capacitance went up because dividing 1 by a
%larger number creates a smaller number to subtract from, which causes a
%small number to multiply by time, and taking the cosine of a small number
%will give the graph a small amplitude. The line is straighter than the
%origional graph. 

%% Problem 2
%Create a plot displaying both the data (using red diamond shaped) and the
%function (using a green dashed line). Plot the function for t=0 to 70
%minutes.

clc, clf, clear

mat_t=[10;20;30;40;50;60]; 
mat_c=[3.4;2.6;1.6;1.3;1.0;0.5];%inserting the data given as a matrix 
                                %for red diamond shaped line
t=linspace(10,70);
c=4.84*exp(-0.034*t); %now data from function

plot(mat_t,mat_c,'- diamond r');
hold on; %do not replace graph, just add another set of data
plot(t,c,'-- g');
xlabel('Time(minutes)'), ylabel('Concentration of Br(aq)')
title('Concentration versus Time')
grid on


