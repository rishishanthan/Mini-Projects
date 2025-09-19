function [num] = adjacency_paths(A, i, j, len)
%ADJACENCY_PATHS MATLAB function that determines the total number of paths of a given length or less connecting two points i to j  in a matrix.
%
% Inputs:
%   A - The Adjacency Matrix
%   i - The departure point
%   j - The arrival point
%   len - The maximum path length
%
% Outputs:
%   num - The number of paths of length len or less

    num = 0;

    for k = 1:len
        l = A^k;
        n = l(i, j);
        num = num + n;
    end             

%Note:- Since it is explicitly mentioned as "number of paths of 'LENGTH LEN or LESS' the total summation has been done"
%If we need to seperately find for a specific len, the num is not added and printed for evey  iteration

    fprintf('The total number of paths of a given length %d or less is %d', len, num)

end %adjacency_paths

