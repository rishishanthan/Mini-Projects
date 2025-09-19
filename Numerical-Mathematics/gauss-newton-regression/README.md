# Gauss–Newton Nonlinear Regression (MATLAB)

This project demonstrates a custom **Gauss–Newton solver** for nonlinear least squares, applied to fitting a **logistic curve**.  
The solver is implemented fully in MATLAB from first principles, without using built-in optimization toolboxes.

---

## Model
We fit the logistic function:
\[
f(x; a) = \frac{a_1}{1 + \exp(a_2 + a_3 x)}
\]

where:  
- \(a_1\) = curve amplitude  
- \(a_2\) = horizontal shift  
- \(a_3\) = slope/steepness  

Residuals are defined as \( r = y - f(x; a) \).  
The Jacobian is derived analytically for faster and more stable convergence.

---

## Files
- `p1_solver.m` — Iterative Gauss–Newton solver with tolerance and max-iteration control  
- `p2_residuals.m` — Residuals and Jacobian for the logistic model  

---

## How to Run
```matlab
addpath(genpath('.'));

% Example data
x = linspace(-3,3,60)'; 
a_true = [1.2; 0.4; -1.1];
f = @(x,a) a(1)./(1+exp(a(2)+a(3).*x));
y = f(x,a_true);

% Initial guess and tolerance
a0 = [max(y); 0; -1];
tol = 1e-6;

% Solve
[a_hat, n_iter] = p1_solver(@p2_residuals, a0, x, y, tol);

% Evaluate
yhat = f(x, a_hat);
rmse = sqrt(mean((y - yhat).^2));
fprintf('iters=%d, rmse=%.3g\n', n_iter, rmse);
