# Midterm — Gauss–Newton Nonlinear Regression (MATLAB)

**Goal:** Fit a logistic model to data using a custom **Gauss–Newton** solver with adaptive damping.

## Files
- `rbhagava_midterm_p1.m` — Gauss–Newton solver (line search via step halving, max-iter guard).
- `rbhagava_midterm_p2.m` — Residuals `r` and Jacobian `J` for the logistic model.
- `demo_midterm.m` — (example script) run end-to-end on synthetic data.
- `tests/test_midterm.m` — unit tests for convergence and correctness.

## Model
Logistic curve:
\[
f(x; a) = \frac{a_1}{1 + \exp(a_2 + a_3 x)}
\]
Residuals: \( r_i = y_i - f(x_i; a) \)

## How to Run
```matlab
addpath(genpath('.'));                      % once per session
cd numerical-mathematics/midterm-assignment
demo_midterm
