# Simpson.m
## The Simpson's rule is a method for numerical integration, the numerical approximation of definite integrals. 
This particular algorithm integrates experimental data using **Simpson's 1/3 Rule**. The algorithm numerically evaluates the integral of the vector of function values *y* with respect to *x* by creating a second-order polynomial that approximates the shape of the given function. If there are an odd number of intervals in the data, this algorithm will use the **Trapezoidal Rule** for the last interval, and then add up both summations at the end to get an overall approximation of the data given.

### Inputs:
The inputs *x* and *y* are the two vectors that hold the experimentally derived data. They must be the same length and size, as each data point in *x* must correspond to one data point in *y*.

### Outputs:
The output *I* stands for the numerical approximation of the integral of the given data, and is propagated either by the simple Simpson's 1/3 Rule when the data has an **even** number of intervals, or by the Simpson's 1/3 Rule plus the Trapezoidal Rule for the last, odd numbered interval when the data has a total of **odd** number of intervals.

### Advantages:
This algorithm and the 1/3 method in general is *more accurate* than the Trapezoidal Rule for approximating the integral of a function, and it's *faster*.

### Disadvantages:
Numerical integrals allow you to get exact answers in terms of fundamental constants, and this is not possible with Simpson's Rule and this algorithm. 
