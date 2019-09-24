clear, clc

y = [12.2 11.9 11.5 11.9 11.5 11.5 11.0 11.4 11.0 ...
     11.07 11.08 11.60 10.97 10.54 10.82 10.94 10.75 10.93]';
   

x = [(0:4:8)'; (20:4:76)'];
x2 = [(1928:4:1936)'; (1948:4:2004)'];

A1 = [x2.^0 x2.^1];
% A2 = [x.^0 x.^1 x.^2];
% A3 = [x.^0 x.^1 x.^2 x.^3];


A1 \ y

%A1_update = [];

% [Q, R] = qr(A1, 0);
% for i = 1:20
%     if ~isnan(y(i,1))
%          %A1(i,:) \ y(i)
%          %A1(i,:)
%     end
% end

% pg 60
% 
figure(1);
scatter(x, y);
lsline;

% I think this one is more accurate
figure(2);
scatter(x2, y);
lsline;
