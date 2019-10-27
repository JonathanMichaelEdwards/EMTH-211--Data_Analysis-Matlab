% Method 1

function [x, lambda] = InversePowerMethod(A, x, k)
    % - calculates the smallest eigenvalue and corresponding eigenvector of
    %   matrix A by the power method using x as the starting vector.
    % - note: A*y = x and so y = A \ x.
    
    for ii = 1:k
        y = A \ x;
        % lambda = (y'*x) / (x'*x);
        lambda = norm(y) / norm(x);
        x = y / norm(y, inf);
    end
    lambda = 1 / lambda;
end 