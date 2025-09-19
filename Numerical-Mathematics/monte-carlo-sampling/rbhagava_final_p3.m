function x = rbhagava_final_p3(pdList, m)
%RBHAGAVA_FINAL_P3 function generates matrix of Latin Hypercube samples from given distributions
%
%   Inputs:
%       pdList - This is a cell array that contains objects representing different probability distributions.
%       m - This specifies the number of samples to generate from each distribution.
%
%   Outputs:
%       x - This is a matrix with m rows and as many columns as there are distributions in pdList, filled with Latin Hypercube samples.

    nIn = length(pdList);
    x = zeros(m, nIn);              
    for j = 1:nIn
        pd = pdList{j};
        p = (rand(m, 1) + (0:m-1)') / m;  
        x(:, j) = icdf(pd, p);      
    end
end %rbhagava_final_p3
