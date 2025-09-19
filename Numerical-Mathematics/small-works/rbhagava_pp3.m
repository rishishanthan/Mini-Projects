function [f] = rbhagava_pp3(n)
%RBHAGAVA_PP3 Computing the factorial of a number using while-loop
%   n! = 1 x 2 x 3 x .... x n
%
% Inputs:
%   n - the number for which we have to compute the factorial
%
% Outputs:
%   f - the factorial of n

    i = 1;
    f = 1;
    
    if  n == 0
        f = 1;
    elseif n < 0
        error('"n" must be non negative')
    else
        while i <= n
            f = f * i;
            i = i + 1;
        end
    end

end %rbhagava_pp3

