clc;

% x = X(1, :);
% y = X(2, :);
% xy = x.*y;
% A = [sum(y.^4) sum(xy.^2) sum(x.*(y.^3)) sum((y.^3)) sum(x.*(y.^2));...
%     sum(xy.^2) sum(x.^4) sum(y.*(x.^3)) sum(y.*(x.^2)) sum(x.^3); ...
%     sum(x.*(y.^3)) sum(y.*(x.^3)) sum(xy.^2) sum(x.*(y.^2)) sum(y.*(x.^2)); ...
%     sum(y.^3) sum(y.*(x.^2)) sum(x.*(y.^2)) sum(xy) sum(x.^2); ...
%     sum(x.*(y.^2)) sum(x.^3) sum(y.*(x.^2)) sum(xy) sum(x.^2)];
% 
% b = [sum(y.^2) sum(x.^3) sum(y.*(x.^2)) sum(xy) sum(x.^2)]';
% 
% c = A\b;
% 
% f = @(u, v) c(1)*u^2 + c(2)*v^2 + c(3)*u*v + c(4)*u + c(5)*v - 1;
% 
% %A = [ones(length(x), 1), x, y, xy, x.^2, y.^2];
