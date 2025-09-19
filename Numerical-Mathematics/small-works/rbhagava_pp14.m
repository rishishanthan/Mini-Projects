function [l, v] = rbhagava_pp14(A, v0, tol, itermax)
%RBHAGAVA_PP14 This function computes eigenvalues and eigenvectors using the Rayleigh-Quotient iteration method.
%
% Inputs:
%   A - the matrix 
%   v0 - the initial vector 
%   tol - the tolerance level for convergence
%   itermax - the maximum number of iterations allowed
%
% Outputs:
%   l - eigenvalue
%   v - eigenvector

    [m, n] = size(A);
    if m ~= n
        error('Matrix A must be square');
    end

    v = v0 / norm(v0);
    v = v(:);
    l = (v' * A * v) / (v' * v);

    for iter = 1:itermax
        v = (A - l * eye(n)) \ v;
        v = v / norm(v);
        l_old = l;
        l = (v' * A * v) / (v' * v);

        if abs((l - l_old) / l) < tol
            break;
        end
    end
    if iter == itermax
        error('Maximum number of iterations is exceeded');
    end
end %rbhagava_pp14