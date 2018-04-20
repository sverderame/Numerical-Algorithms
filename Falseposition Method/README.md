# Falseposition.m
This algorithm uses the *falseposition method* to approximate the **root** of a given function by finding the backets of a value of x that contain sign changes of the given function. This is a type of bracketing method for finding the roots of a function, and specifically 
uses the fact that in the initial interval [x1,x2], the function changes sign only once. Thus, the method finds an approximate root guess x3 in this interval, which is given by the intersection of the x axis and the straight line of the slope between the two origional points.

### Inputs:
* The input *func* is name of the function.
* *x1* and *x2* are values of x that when entered into the function give opposite signed values.
* *es* is the desired relative error (which will default to 0.0001% in this particular algorithm).
* The input *iter* is the number of iterations desired (which will default to 200).
* The *varargin{:}* input is simply any other parameters used by function given.

### Outputs:
* The *root* is the estimated root location by the algorithm.
* *fx* is the function evaulated at the root.
* The output *ea* is the approximate relative error as a percentage.
* *maxiter* tells the user how many iterations were performed before the algorithm gave an answer within the desired relative error or within the maximum number of iterations.

### Advantages:
This method is always convergent, thus the algorithms should always output an answer. 

### Disadvantages:
There are times this method can converge very slowly.

#### Other Useful Information:
The algorithm has a couple of bugs. For instance, the approximate error appears to be too low because of an incorrect match with the *maxiter* output, yet it is correct when studied closer.
