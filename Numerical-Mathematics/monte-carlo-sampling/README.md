# Monte Carlo & Latin Hypercube Sampling (MATLAB)

Generate synthetic datasets by sampling input distributions and evaluating a model function `f`. Includes both **i.i.d. random sampling** and **Latin Hypercube Sampling (LHS)**.

## Files
- `simulate_dataset.m` — Driver that builds an output dataset by repeatedly:
  1) sampling inputs with a chosen sampler,
  2) evaluating the model function `f`,
  3) stacking the results into `D` (dataset).
- `sampler_random.m` — Draws `m` i.i.d. samples per input distribution (Monte Carlo).
- `sampler_lhs.m` — Draws `m` stratified samples per input distribution via inverse CDF (Latin Hypercube).

> These are renamed from the originals to be portfolio-ready. Logic unchanged.

## Quick Start
```matlab
addpath(genpath('.'));

% 1) Define input distributions (examples)
pdList = {
  makedist('Normal', 0, 1), ...  % X1 ~ N(0,1)
  makedist('Uniform', -1, 1)     % X2 ~ U(-1,1)
};

% 2) Pick a model function f
% Expectation: f takes a matrix X (m × nIn) and returns either a column (m × 1)
% or a matrix (m × nOut). This example returns two outputs per row.
f = @(X) [ X(:,1) + X(:,2), X(:,1) .* X(:,2) ];  % [sum, product]

% 3) Choose a sampler and run the simulation
sampler = @sampler_random;   % or @sampler_lhs
N = 1000;                    % total samples desired
m = 100;                     % batch size per iteration (driver uses loops)
D = simulate_dataset(f, pdList, N, sampler, m);

% 4) Inspect results
size(D)           % -> [N × 2] for the example f above
mean(D,1), var(D,0,1)
