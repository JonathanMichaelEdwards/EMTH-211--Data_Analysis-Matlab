clear, clc

% Data y and x
y = [12.2 11.9 11.5 11.9 11.5 11.5 11.0 11.4 11.0 ...
     11.07 11.08 11.60 10.97 10.54 10.82 10.94 10.75 10.93]';
   
x = [(0:4:8)'; (20:4:76)'];

% Fnding the different A matricies
A1 = [x.^0 x.^1];
A2 = [x.^0 x.^1 x.^2];
A3 = [x.^0 x.^1 x.^2 x.^3];


% ------------------ QR decomposition of A ------------------ %
% - We know Ax = y and Rx = Q'b thus we can rearrange to find
%   x. Thus wanting to solve x = [R | Q'*y]
% - We then want to use rref to find the x value.

% Find the Q's and R's for each of the Matricies
[Q1, R1] = qr(A1, 0);
[Q2, R2] = qr(A2, 0);
[Q3, R3] = qr(A3, 0);

% Find the new rref Matrix for finding the x values
qr_1 = rref([R1 Q1'*y]);
qr_2 = rref([R2 Q2'*y]);
qr_3 = rref([R3 Q3'*y]);

% The x values by using the QR decomp method
c_1 = qr_1(:,3);
c_2 = qr_2(:,4);
c_3 = qr_3(:,5);

% Checking the linear system using the backslash operator
c_system_1 = A1 \ y;
c_system_2 = A2 \ y;
c_system_3 = A3 \ y;  % Not the same as c_3 !!! Getting a warning

y1 = c_1(1) + c_1(2)*x;
y2 = c_2(1) + c_2(2).*x + c_2(3)*x.^2;
y3 = c_3(1) + c_3(2).*x + c_3(3)*x.^2 + c_3(4)*x.^3;

% The Residual Error for each fit
r1 = sumabs(y - y1) / length(y);
r2 = sumabs(y - y2) / length(y);
r3 = sumabs(y - y3) / length(y);

% Finding 2008 time
xt = 2008-1928;
y1t = c_1(1) + c_1(2)*xt;
y2t = c_2(1) + c_2(2)*xt + c_2(3)*xt^2;
y3t = c_3(1) + c_3(2)*xt + c_3(3)*xt^2 + c_3(4)*xt^3;
time2008 = (y1t + y2t + y3t) / 3;


% ------------------ Plotting ------------------ %
figure(1)
plot(x, y1, x, y2, x, y3);

hold on;
scatter(x, y);
scatter(2008-1928, time2008);
hold off;
xlabel('Years since 1928');
ylabel('Time (s)');
title('Least squares approximation for degrees 1, 2 and 3');
legend('Deg 1', 'Deg 2', 'Deg 3', 'Test data', 'Predicted data');
