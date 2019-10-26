function x = TDsolver(a,b,d)
    % a is the diagonal element b is the off diagonal element, d is the
    % righthand side vector
    n = length(d); % n is the number of rows
    % Modify the first-row coefficients
    c(1) = b / a;
    % assuming a not zero.
    % c is a vector of the super diagonal elements
    % after reduction.
    d(1) = d(1) / a;
    % Reduced vector d.

    for i = 2:n-1
        temp = a - b * c(i-1);
        c(i) = b / temp;
        d(i) = (d(i) - b * d(i-1))/temp;
    end

    d(n) = (d(n) - b * d(n-1))/( a - b * c(n-1));

    % Now back substitute.
    x(n) = d(n);
    for i = n-1:-1:1
        x(i) = d(i) - c(i) * x(i + 1);
    end
    x = x’; % convert to a column vector.
end