function [r, J] = p2_residuals(af, x, y)
%P2_RESIDUALS Matlab function fitting logistic regression model
%
% Inputs:
%   af - The coefficient list.
%   x - The x-locations.
%   y - The y-locations.
%
% Outputs:
%   r - The residual vector
%   J - The Jacobian matrix

    f = @(x)(af(1) / 1 + (exp(af(2) + x * af(3))));
    r = zeros(length(y), 1);
    
    J(:, 1) = 1 ./ (1 + exp(af(3) .* x + af(2)));
    J(:, 2) = (-(1 ./ (1 + exp(af(2) + af(3) .* x).^2))) .* exp(af(2) + af(3) .* x);
    J(:, 3) = (-(1 ./ (1 + exp(af(2) + af(3) .* x).^2))) .* exp(af(2) + af(3) .* x) .* x;

    for i = 1:length(af)
        r(i) = y(i) - f(x(i));
    end
    
end %p2_residuals

