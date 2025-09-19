function x = sampler_random(pdList, m)
%SAMPLER_RANDOM function is crafted to create a matrix of random samples from specified probability distributions
%
%   Inputs:
%       pdList - A cell array containing objects that represent various probability distributions.
%       m - Indicates the number of samples to extract from each distribution.
%
%   Outputs:
%       x - A matrix with m rows and as many columns as there are distributions in pdList, populated with random samples corresponding to those distributions.

    nIn = length(pdList);
    x = zeros(m, nIn);              

    for j = 1:nIn
        pd = pdList{j};
        x(:, j) = random(pd, m, 1); 
    end
end %sampler_random
