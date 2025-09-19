# Small MATLAB Homeworks (Numerical Mathematics)

This folder contains a collection of small MATLAB functions and exercises from coursework.  
They illustrate core ideas in **numerical methods, linear algebra, root finding, integration, graph theory, and basic MATLAB programming**.

---

## 📂 Contents

| File                | Description                                                    | Topic / Skill            |
|---------------------|----------------------------------------------------------------|--------------------------|
| factorial_for.m     | Computes factorial of `n` using a `for` loop                   | Control flow / loops     |
| factorial_while.m   | Computes factorial of `n` using a `while` loop                 | Control flow / loops     |
| adjacency_paths.m   | Counts paths between two nodes in a graph using adjacency matrix powers up to a given length | Graph theory / matrices  |
| rref_gaussian.m     | Gaussian elimination with pivoting to compute Reduced Row Echelon Form (RREF) | Linear algebra           |
| midpoint_rule.m     | Approximates definite integrals using the **midpoint rule**    | Numerical integration    |
| test_midpoint.m     | Unit test for `midpoint_rule.m`                                | Unit testing             |
| newton_raphson.m    | Root-finding solver using Newton–Raphson with tolerance and divergence checks | Root finding / analysis  |
| test_newton.m       | Unit test for `newton_raphson.m`                               | Unit testing             |
| rayleigh_quotient.m | Computes eigenvalue/eigenvector via Rayleigh Quotient Iteration | Eigenvalue problems      |

---

## 🚀 Usage Examples

### Factorial (loops)
```matlab
n = 5;
f1 = factorial_for(n)    % -> 120
f2 = factorial_while(n)  % -> 120
```

### Graph Paths (adjacency matrix)
```matlab
A = [0 1 0; 1 0 1; 0 1 0];   % simple 3-node line graph
s = 1; e = 3; len = 2;
paths = adjacency_paths(A, s, e, len);
disp(paths)   % -> 1 (one path of length 2 from node 1 to 3)
```

### RREF (Gaussian elimination)
```matlab
A = [1 2 3; 4 5 6; 7 8 10];
R = rref_gaussian(A);
disp(R)
% -> Reduced row echelon form of A
```

### Midpoint Rule (numerical integration)
```matlab
f = @(x) x.^2;
I = midpoint_rule(f, 0, 1, 100);
disp(I)   % -> ~0.3333 (integral of x^2 on [0,1])
```

### Newton–Raphson Root Finder
```matlab
% Solve g(x) = x^2 - 2 = 0
g = @(x) deal(x^2 - 2, 2*x);   % function and derivative
x0 = 1; eps = 1e-6; delta = 1e2; itermax = 100;
root = newton_raphson(g, x0, eps, delta, itermax);
disp(root)   % -> ~1.4142 (sqrt(2))
```

### Rayleigh Quotient Iteration
```matlab
A = [2 1; 1 2];
v0 = [1; 0];
[l,v] = rayleigh_quotient(A, v0, 1e-6, 100);
disp(l)   % -> ~3 (dominant eigenvalue)
disp(v)   % -> ~[0.707; 0.707]
```
