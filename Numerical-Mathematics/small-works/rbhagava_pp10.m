function [result] = rbhagava_pp10(f)
%RBHAGAVA_PP10 MATLAB Unit test for pp9 function
%   
%   Inputs:
%       f -  input function that is rbhagava_pp9 that is used to perform unit test 
%
%   Outputs:
%       val - Returns 1/0/-1 according to the test results

    x = [0; 0.5; 1; 1.5; 2];
    y = @(x)(x^2);
    expected_output = 2.6250;
    try
        z = f(y,x);
        
        if z == expected_output
            result = 1;
        else
            result = 0; 
        end
    catch
        result = -1;
    end
    
end% rbhagava_pp10

