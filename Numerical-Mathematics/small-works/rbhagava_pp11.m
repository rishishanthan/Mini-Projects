function [x] = rbhagava_pp11(g, x0, eps, delta, itermax)
%RBHAGAVA_PP11 MATLAB function using undamped Newton-Raphson's method to determine the root
%
% Inputs:
%   g - The function handle g has the following call and returns two variables: [f, fx] = g(x) where f is the function and fx is the derivative
%   x0 - Initial guess
%   eps - The convergence criteria
%   delta - the divergence criteria
%   itermax - the maximum number of iterations to use
%
% Outputs:
%   x - The root for the given function

    n = 1;
    x = x0;
    while n < itermax
        [f, fx] = g(x);
        xn  = x - f / fx;
        if abs(xn-x) > delta
            error("Divergence")
        end
        if abs(xn-x) < eps
            break;
        else
            x = xn;
        end
        n = n + 1;
    end
    if n == itermax
        error("Maximum iterations exceeded")
    end
end %rbhagava_pp11

