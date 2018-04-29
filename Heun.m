function [t,y] = Heun(dydt, tspan, y0, h, es, maxit)
%SUMMMARY This algorithm solves differential equations using Heun's Method
%with Iteration.
%    The function finds the numerical solution to the differential equation dydt,
% over the span tspan, with an initial condition y0, and step size h. The variables
% es and maxit should be optional and default to 0.001 and 50 if a user does not
% specify values for those inputs. es and maxit refer to the stopping criterion
% and maximum number of iterations, respectively, for iterations involving the
% predictor-corrector.
% Sarah Verderame
% MECH 105
% April 25 2018
%% Input Error Check
clearvars -except dydt tspan y0 h es maxit
if nargin<1, error ('The function needs a differential equation input and all other parameters')
end
n = isa(dydt, 'function_handle');
if n~=1
    error('dydt needs to be an anonymous function')
end
if nargin<2, error ('The function needs a span from some number to a higher number the function is to be evaluated at, an initial condition, and a step size h')
end
tee = length(tspan);
if tee == 1
    error ('tspan needs to be an array from t0 to tf')
end
if nargin<3, error ('The function needs an initial condition and a step size h')
end
if nargin<4, error ('The function needs a step size h')
end
if nargin<5, es = 0.001;
end
if nargin<6, maxit = 50;
end
%% Solved Analytically
[a b] = ode45(dydt, tspan, y0); %the definite integral of dydt
plot (a,b,'Linewidth',1)
hold on
%% Heun's Approximation with Iteration
iter = 0;
te = tspan(1):h:tspan(end); %create an array with the values of t to be used, based on h
if te(end)/h ~= tspan(end)/h
    warning ('tspan is "out of whack" with step size, so it will use the step size for as long as it can in the interval, and then use the remaining distance as a new, last step size')
end
tar = zeros(1,length(te)); %create arrays of t and y values to plot later
yar = zeros(1,length(te));
if te(end)/h ~= tspan(end)/h %if step size is "out of whack" with h, the arrays of t and y will expand to factor  in the last, unequal step size
tar(1,length(te)+1) = tspan(end);
yar = zeros(1,length(te)+1);
te(1,end+1) = tspan(end);
else
tar(1,length(te)) = tspan(end);
end
yar(1,1)= y0;
i=1;
for t = te(1):h:te(end-1)
    newh = te(i+1)-te(i);      % new step size every time
    sl = dydt(t,y0);           % find slope left
    Etl = abs((b(i)-sl)/b(i)); % error of predictor to actual solution
    % CORRECTOR
    sr = dydt(t+newh,y0+(sl*newh));   % slope right
    es1 = 1;
    while es < es1 && iter <= maxit  % while max iteration is not met and the error is still greater than specified
        yi1 = y0 + (newh/2)*(sl+sr);  % new value of y with corrector
        sr = dydt(t+newh,yi1);  
        if iter~=0
            es1 = abs((yi1 - yi)/yi1); % error of approximate y value
        end
        iter = iter + 1;
        yi = yi1;   %iterate with respect to the last found approximation for the given t
    end
    i = i+1;
    tar(1,i-1) = t; % enter these new values into arrays for plotting
    yar(1,i) = yi;
    y0 = yi;        % make the new yi value the y0 value
    iter = 0;       % reset iterations
end

%% Plot the values
plot(tar,yar,'m*--') % plot the approximations
xlabel('t')
ylabel('y')
legend('Analytical Solution','Heuns Approximation w/ Iteration')
hold off
end