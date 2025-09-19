function D = simulate_dataset(f, pdList, N, sampleFcn, m)
%SIMULATE_DATASET function is designed to create a dataset by simulating values from a specified model function using the Monte Carlo technique
%
%   Inputs:
%       f - This is a function handle pointing to the model function you want to use.
%       pdList - A cell array containing several probability distribution objects, each created through the makedist function.
%       N- Specifies the total number of simulation trials to conduct.
%       sampleFcn-A function handle that determines the method of sampling to be used.
%       m-  The number of random input values to generate at once using sampleFcn.
%
%   Outputs:
%       D- An array with dimensions N by nOut, filled with the data generated from the model function across the specified number of trials.

    x = sampleFcn(pdList, m);
    b = size(x, 2);
    output = f(x);
    nOut = length(output);
    D = zeros(N, nOut);
    
    count = 0;
    while count < N
        num = min(m, N - count);
        x = sampleFcn(pdList, num);
        for i = 1:num
            for j = 1:b
                D(count + i, j) = f(x(i,j));
            end
        end
        count = count + num;
    end
end %simulate_dataset
