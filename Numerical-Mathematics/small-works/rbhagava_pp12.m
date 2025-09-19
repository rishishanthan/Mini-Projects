function [result] = rbhagava_pp12(f)
%RBHAGAVA_PP12 MATLAB Unit test to test pp11 function
%
% Inputs:
%   f - function handle to the rbhagava_pp11 function
%
% Outputs:
%   result - returns 1/0/-1 according to the test results

    g = @(x)deal(x^3-x^2-9,3*x^2-2*x);
    x0 = 2;
    eps = 0.000001;
    delta = 1000;
    itermax = 10;
    z = f(g, x0, eps, delta, itermax);
    expected_output = 2.4724;
    try 
        if abs(z - expected_output) < 0.00005
            result = 1;
        else
            result = 0; 
        end
    catch
        result = -1;
    end
end %rbhagava_pp12

