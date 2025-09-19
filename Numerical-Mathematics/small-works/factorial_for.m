function [f] = factorial_for(n)
%FACTORIAL_FOR Computing the factorial of a number using for-loop
%   n! = 1 x 2 x 3 x .... x n
%
% Inputs:
%   n - the number for which we have to compute the factorial
%
% Outputs:
%   f - the factorial of n

    f = 1;

    if  n == 0
        f = 1;
    elseif n < 0
        error('"n" must be non negative')
    else
        for i = 1:n     
            f = f * i;
        end
    end

end %factorial_for
