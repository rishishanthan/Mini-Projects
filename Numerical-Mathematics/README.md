# Numerical Mathematics (EAS 501)

This repository contains small projects and works from **Numerical Mathematics**.
All implementations are written in **MATLAB from scratch** without relying on built-in solvers, to demonstrate a deep understanding of core numerical methods.

The work spans from **fundamental exercises** (loops, Gaussian elimination, root finding) to **full-scale algorithms** (Gauss–Newton nonlinear regression, Monte Carlo vs Latin Hypercube simulation).  
It reflects both **mathematical theory** and **practical coding ability**.

---

## 📂 Repository Structure

### 1. Gauss–Newton Regression
📁 `gauss-newton-regression/`  
Implementation of a **Gauss–Newton nonlinear least squares solver**, applied to fitting a **logistic curve**.

**Files:**
- `p1_solver.m` — iterative Gauss–Newton solver with step control  
- `p2_residuals.m` — residuals and Jacobian for the logistic model  
- `README.md` — usage instructions and explanation  

**Key points:**
- Nonlinear regression on logistic model  
- Analytical Jacobian derivation  
- Evaluation metrics: RMSE, R², residual norms  
- Demonstrates optimization and curve fitting

---

### 2. Monte Carlo & Latin Hypercube Sampling
📁 `monte-carlo-sampling/`  
Framework to generate synthetic datasets from probability distributions using **Monte Carlo sampling** and **Latin Hypercube Sampling (LHS)**.

**Files:**
- `simulate_dataset.m` — driver for dataset simulation  
- `sampler_random.m` — i.i.d. random sampling method  
- `sampler_lhs.m` — Latin Hypercube sampler (stratified sampling)  
- `README.md` — detailed explanation, demo, and usage  

**Key points:**
- Comparison of Monte Carlo vs LHS for variance reduction  
- Uses MATLAB probability distributions (`makedist`, `icdf`)  
- Reproducible, batch-based sampling framework  
- Highlights stochastic simulation and experimental design

---

### 3. Small Works
📁 `small-works/`  
A collection of concise MATLAB programs that implement fundamental numerical methods and algorithms.

**Files:**
- `factorial_for.m`, `factorial_while.m` — factorial via loops  
- `adjacency_paths.m` — path counting in graphs using adjacency matrices  
- `rref_gaussian.m` — Reduced Row Echelon Form via Gaussian elimination  
- `midpoint_rule.m`, `test_midpoint.m` — numerical integration and test harness  
- `newton_raphson.m`, `test_newton.m` — Newton–Raphson root finder and test  
- `rayleigh_quotient.m` — eigenvalue/eigenvector estimation  

**Key points:**
- Control flow fundamentals (loops, conditionals)  
- Linear algebra (Gaussian elimination, eigenvalue problems, adjacency matrices)  
- Numerical analysis (integration, root finding, stability)  
- Unit testing for correctness  

---

