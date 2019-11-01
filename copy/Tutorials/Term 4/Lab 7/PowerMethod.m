function [x, lambda] = PowerMethod(A, x, k)
    % - calculates the largest eigenvalue and corresponding eigenvector of
    %   matrix A by the power method using x as the starting vector.
    % - Use the Rayleigh quotient to find the dominant eigen value.

    for ii = 1:k
        y = A*x;
        x = (y / norm(y, inf));      % scaling the vector
        lambda = ((A*x)'*x) / (x'*x);
    end
end 