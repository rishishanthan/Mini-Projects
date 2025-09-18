# Gauss–Newton Nonlinear Regression (MATLAB)

This project implements a custom **Gauss–Newton solver** to fit a logistic regression model.

## Goal
- Fit a nonlinear logistic curve to data  
- Derive residuals and Jacobian manually  
- Iterate until convergence using step damping  

## Files
- `p1_solver.m` — Gauss–Newton solver with adaptive step control  
- `p2_residuals.m` — Residuals and Jacobian for logistic model  
- `demo.m` — Example script with synthetic dataset

## Model
Logistic curve:
\[
f(x; a) = \frac{a_1}{1 + \exp(a_2 + a_3 x)}
\]

## Results
- Solver converges in ~7 iterations on synthetic data  
- Achieves RMSE ≈ 0.003  
- Curve fitting closely matches the expected logistic trend

## How to Run
```matlab
addpath(genpath('.'));
cd numerical-mathematics/gauss-newton-regression
demo
