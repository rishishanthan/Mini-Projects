function [R] = rbhagava_pp8(A)
%RBHAGAVA_PP8 Matlab function that returns the Reduced Row Echelon Form of a matrix using Gaussian Elimination with pivoting.
%
% Inputs:
%   A - The RREF of matrix A.
%
% Outputs:
%   R - The matrix to be converted.

    [m, n] = size(A);
    i = 1;
    j = 1;

    while i <= m && j <= n
        [~,k] = max(abs(A(i:m, j)));
        k = k + i -1;
        A([i k], :) = A([k i], :);
        if abs(A(i, j)) > (10^(-16))
            a = A(i, j);
            for k = j:n
                A(i,k) = A(i,k)/a;
            end
            for k = [1:i-1, i+1:m]
                a = A(k,j);
                for l = j:n
                    A(k,l) = A(k,l) - A(i,l)*a;
                end
            end
            i = i+1;
        end
        j = j+1;
    end
    R = A;
end %rbhagava_pp8