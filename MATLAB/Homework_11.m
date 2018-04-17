%% Homework 11

%% Problem 1
v0 = 55;
c = 15;
m = 80;
g = 9.8;
syms t
f = v0*exp(-(c/m)*t)-((m*g)/c)*(1-exp(-(c/m)*t))
f1 = diff(f,t)
t = 7
iter = 0
while iter<5
f_handle = matlabFunction(f);
ft = f_handle(t)
f_handle2 = matlabFunction(f1);
ft1 = f_handle2(t)
t1 = t - (ft/ft1)
iter = iter+1
t=t1
end

%% Problem 2
syms x, 
f = -(x^2)+10*x-12
max(double([x]))


%% 
fun =@(x) x^3-2*x-5
xl = 0;
xu = 2;
x = fminbnd(fun,xl,xu)

%%
f = @(x,y) 4*x+2*y*x^2-2*x^4+2*x*y-3*y^2
x = 1
y = 1
[xmin,fval] = fminsearch(f,[-0.5,0.5])

%% 
ka = 14
kb = 8
La = 15
Lb = 12
F1 = 1
F2 = 4
[x,f] = fminsearch(@PE,[-0.8,0.5],[],ka,kb,La,Lb,F1,F2)


%% Golden Section Method

f = @(x) 1.5*(x^6)+2*(x^4)-12*x
xl = 0;
xu = 2;
iter = 0;

phi = (1 + sqrt(5))/2;
d = (phi - 1)*(xu - xl);
x1 = xl + d; 
x2 = xu - d;
f1 = f(x1); 
f2 = f(x2);
while iter<3 
  if f1 < f2
    xopt = x1; 
    xl = x2; 
    x2 = x1; 
    f2 = f1;
    x1 = xl + (phi - 1)*(xu - xl); f1 = f(x1);
  else
    xopt = x2; xu = x1; x1 = x2; f1 = f2;
    x2 = xu - (phi - 1)*(xu-xl); f2 = f(x2); 
  end
  iter = iter + 1;
end
x = xopt 
fx = f(xopt)
iter





    






