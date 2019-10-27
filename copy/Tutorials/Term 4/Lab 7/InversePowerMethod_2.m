% Method 2

function [x, lambda] = InversePowerMethod_2(A, x, k)
    % - calculates the largest eigenvalue and corresponding eigenvector of
    %   matrix A by the power method using x as the starting vector.
    % - In each iteration, we solve L*w = x (k) , U*z = w, 
    %   and scale the solution z.
    %   then compute the Rayleigh quotient.
    % - note: A*y = x and so y = A \ x.

    [L,U] = lu(A);
    
    for ii = 1:k
        w = L \ x;
        z = U \ w;
        x = z / norm(z, inf);
        lambda = ((A*x)'*x) / (x'*x);
    end
end 