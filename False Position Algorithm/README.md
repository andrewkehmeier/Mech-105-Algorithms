# False Position Algorithm
Algorithm utilizes the false position root finding method in order to bracket the root and determine a solution within a default stopping criterion of 0.0001%.

## Inputs:
- func = function input using anonymous function handle or symbolic math toolbox
- xl = x value for initial lower bound on bracket surrounding the root
- xu= x value for initial upper bound on bracket surrounding the root
- maxit = maximum number of iterations the function will go through before terminating
- es = stopping criterion calculated using approximate relative error
- varargin = variable to describe any additional parameters used within the function
### Outputs:
- root = root of the function esimated to within 0.0001%
- fx = y value of the function at the estimated value of zero
- ea = approximate error between final estimate and previous estimate of root
- iter = number of iterations falsePosition has gone through
#### Notes:
1. Function requires input of function, upper and lower bounds.  Without specified es and maxit, these values will default to 0.0001% and 200 respectively.
2. Function outputs an error message if the root is not bracketed or a sign change is not observed 
3. Function cannot find roots for repeated roots that have no sign change.  
