function [val] = midpoint_rule(f, x)
%MIDPOINT_RULE MATLAB function that uses the midpoint rule to integrate a function.
%   
%   Inputs:
%       f-  function handle
%       x- limits
%
%   Output:
%       val- output

    val = 0;

    
    n = length(x);

    
    if isrow(x)
        x = x.';
    end

    dx = x(2:end) - x(1:end-1);
    mid = (x(1:end-1) + x(2:end)) / 2;
    for i = 1:(n-1)
        val = val + f(mid(i)) * dx(i);
    end 

end %midpoint_rule

