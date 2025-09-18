function [a, n] = p1_solver(fdf, a0, x, y, tol)
%P1_SOLVER Matlab function that computes a non-linear regression using Guass-Newton method
%
% Inputs:
%   fdf - An external function which returns the residual vector and Jacobian matrix. 
%   a0 - The initial guess at the coefficients, stored as a column vector.
%   x - The data to fit, both as column vectors
%   y - The data to fit, both as column vectors.
%   tol - Tolerance to solve to.
%
% Outputs:
%   a - A column array the same length as a with the converged coefficients.
%   n - The number of iterations it took to converge

    count = 0;
    a = a0;
    df = 0.5;
    %My fdf file is the second question, pass the second midterm filename when
    %passing the fdf,
    [r, J] = fdf(a0, x, y);

    while count < 100   

        for k = 1:10
            r_norm = norm(r);
            a1 = a - df * ((J) \ r);
            r_new = fdf(a1, x, y);

            if norm(r_new) < r_norm
                a = a1;
                r_norm = norm(r_new);
                break;
            else
                df = df / 2;
            end
        end
        if norm(r) < tol
            break; 
        end
        count = count + 1;
        if count == 100
            error('Maximum iterations reached without convergence.');
        end
    end
    n = count;
end %p1_solver


