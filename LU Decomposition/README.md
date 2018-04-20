# LU Factorization
In numerical analysis and linear algebra, LU factorization factors a matrix as the product of a lower triangular matrix *L* and an upper triangular matrix *U*. This algorithm uses partial pivoting (row permutations only) and is designed specifically to be the matrix form of Naive Gauss Elimination. This algorithm uses the law of *PA=LU*, where *P* is a permutaion matrix which reorders the rows of *A* (the origional matrix). This algorithm is only designed for square matrices.
### Inputs:
* *A* is the coefficient square matrix given.

### Outputs:
* *L* is lower triangular matrix, *U* is the upper triangular matrix, and *P* is the pivot matrix.

### Advantages:
Memory is not a problem which this algorithm because it overwrites the entries of A with the entries of U and put entries of L into the newly created zero entries of A. Thus no more memory is technically required than was used to store A in the first place. In less memory-intensive applications you can store A,L,U separately with no real difficulty.
This algorithm is fast, easy to program, and finds all solutions. 

### Disadvantages:
This method can easily be unstable and mistakes can easily be made in programming. In terms of this particular algorithm, it only solves the system of equations of a **square** matrix, which is a large disadvantage as that only covers a small variety of systems of equations. 

#### Other Useful Information:
This algorithm was reported giving an incorrect output for a "hard matrix". Thus, this algorithm is limited in how large of a matrix it can solve. There are probably also roundoff errors that cause major issues when teh algorithm is working with small numbers in the given matrix.
