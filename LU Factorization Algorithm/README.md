# LU Factorization Algorithm
Algortihm utilizes LU factorization in order to decompose a square matrix into an upper and lower triangular matrix, where Gaussian elimination is used to determine the upper triangular matrix, and correlating aN1/a11 values are plugged into L.

## Inputs:
- A = coefficient matrix

### Outputs
- L = lower triangular matrix
- U = upper triangular matrix
- P = permutation matrix

#### Notes:
1. Matrix evaluated must be a square matrix
2. Method uses partial rather than complete pivoting
3. System can be solved by using L and U in the following orientation:
      - L\b = d
      - U\d = x 
      - Where is the x solution to the system with b as the forcing terms of the system and d as the intermediate matrix to achieve the solution.
