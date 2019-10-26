x = [1 0]';
k = 6;

% Q1)
% Approximate for the 'dominant' eigenvalue and eigenvector    (Power Method)
A1 = [7 2; 2 3];
[x1, lambda1] = PowerMethod(A1, x, k);



% Q2)
% 1. Approximate for the 'dominant' eigenvalue and eigenvector (Power Method)
% 2. Approximate for the second eigenvalue and eigenvector     (shifting method)

% 1)
A2 = [3.5 1.5; 1.5 -0.5];
[x2_1, lambda2] = PowerMethod(A2, x, k);

% Create identity matrix
I = eye(2, 2);
% I = diag(ones(2, 1));
% 2)
B2 = (A2 - lambda2*I);
[x2_2, lambda2_2] = PowerMethod(B2, x, lambda2);
lambda_2_2 = lambda2_2 + lambda2;


% Q3
% Approximate for the 'least/smallest' eigenvalue and eigenvector (Inverse Power Method / 2 examples)
A3 = [7 2; 2 3];
[x3, lambda] = InversePowerMethod_2(A3, x, k);

A4 = [0.8 0.4; 0.2 0.6];
x4 = [1 0]';
[x4, lambda4] = InversePowerMethod_2(A4, x4, 1)