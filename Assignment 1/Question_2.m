% Question 2

clear, clc;

% Loading in test data
load('A1.mat')

% Extracting x and y values from test data
x = X(1, :)';
y = X(2, :)';

% Least squares array for equation: Ax^2 + By^2 + Cxy + Dx + Ey + F = 0
% Finds coefficients as matrix c
A = [x.^2 y.^2 x.*y x y]
b = ones(length(X), 1);
c = A\b;

% Initialising F as -1
F = -1;

% Ax^2 + By^2 + Cxy + Dx + Ey + F = 0
f = @(u, v) c(1)*u.^2 + c(2)*v.^2 + c(3)*u.*v + c(4)*u + c(5)*v + F;

% Plotting test data and least squares approximation onto figure(1)
figure(1);
scatter(x, y);
hold on
fimplicit(f);
hold off

% Additives for viewing purposes
grid
%title('Least Square Approximation for Conic Section in a Plane');
xlabel('x')
ylabel('y')
legend('Test Data', 'Approximation');
ylim([-0.8 0.5]) 
