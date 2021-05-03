# Simpson's 1/3 Algorithm

This algorithm utilizes the Simpson's 1/3 algorithm to estimate integral of tabulated data.

## Inputs: 
- x = vector of evenly spaced independent variable points
- y = vector of function values correlating to each independent variable

### Outputs:
- I = estimated numerical integral

#### Notes:
1. This algorithm works for intervals that are both even and odd
2. Input vectors must be of the same length
3. Inputs must be spaced equivalently 
4. Trapezoidal rule will be used for the final interval of the tabulated data if there are an odd number of intervals.
