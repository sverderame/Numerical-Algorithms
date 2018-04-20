This function integrates experimental data using Simpson's 1/3 Rule.
%   The function numerically evaluates the integral of the vector of
%   function values 'y' with respect to 'x'. If there are an off number of
%   intervals in the data, this function will use the trapezoidal rule for
%   the last interval, and then add up both summations at the end to get an
%   overall approximation of the data given.
