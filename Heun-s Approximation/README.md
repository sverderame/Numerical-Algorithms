# Heun's Approximation With Iteration
This algorithm solves differential equations using Heun's Method with Iteration. The function finds the numerical solution to the differential equation *dydt*, over the span *tspan*, with an initial condition *y0*, and step size *h*. 
The variables *es* and *maxit* should be optional and default to **0.001** and **50** if a user does not specify values for those inputs. *es* and *maxit* refer to the stopping criterion and maximum number of iterations, respectively, for iterations involving the predictor-corrector.
#### Inputs:
* *dydt*: dydt is a ordinary differential equation in terms of t and y. It needs to be entered as an anonymous function (function handle) for this particular algorithm to work.
* *tspan*: the span of the t-values the user is identifying
* *y0*: intial condition
* *h*: step size
* *es*: the relative error or the corrector approximation within each iteration
* *maxit*: the maximum iterations the algorithm will allow before deciding the approximated value

#### Outputs:
* *t*: the values of t specified by h and tspan
* *y*: the approximations of the function at each specified t value using Heun's Method

