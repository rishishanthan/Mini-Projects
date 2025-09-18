# Gauss–Newton Nonlinear Regression (MATLAB)

This project implements a custom **Gauss–Newton solver** for fitting a logistic curve.

## Model
\[
f(x; a) = \frac{a_1}{1 + \exp(a_2 + a_3 x)}
\]

## Files
- `p1_solver.m` — Gauss–Newton solver  
- `p2_residuals.m` — Residuals and Jacobian for the logistic model  

## How to Run
```matlab
addpath(genpath('.'));
x = linspace(-3,3,60)'; 
a_true = [1.2; 0.4; -1.1];
f = @(x,a) a(1)./(1+exp(a(2)+a(3).*x));
y = f(x,a_true);

a0 = [max(y); 0; -1];  % initial guess
tol = 1e-6;

[a_hat, n_iter] = p1_solver(@p2_residuals, a0, x, y, tol);
yhat = f(x, a_hat);
rmse = sqrt(mean((y - yhat).^2));
fprintf('iters=%d, rmse=%.3g\n', n_iter, rmse);
