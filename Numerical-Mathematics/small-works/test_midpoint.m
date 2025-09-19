function [result] = test_midpoint(f)
%TEST_MIDPOINT MATLAB Unit test for midpoint_rule function
%   
%   Inputs:
%       f -  input function that is midpoint_rule that is used to perform unit test 
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
    
end %test_midpoint

