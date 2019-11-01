clear, clc

%years = transpose(1928:4:2004); needed to scale this back, due to rank
%deficient error shown below
years = transpose(0:4:76);

years([4 5]) = [];


times = ([12.2, 11.9, 11.5, 11.9, 11.5, 11.5, 11.0, 11.4, 11.0, ...
    11.07, 11.08, 11.60,10.97,10.54, 10.82, 10.94, 10.75, 10.93]');

length(years);
length(times);

poly1 = [ones(18,1), years];
years2 = [poly1 years.^2];
years3 = [years2 years.^3]




c = poly1\times;
y = c(1) + c(2)*years;
plot(years, y);
% fprintf("polynomial with degree 1, is y=%d + %dx\n",c(1),c(2))



% plot(years2, y)

% poly2 = [poly1 years2];
c2 = years2\times;
% fprintf("polynomial with degree 2, is y=%d + %dx\n",c2(1),c2(2))



% poly3 = [ones(18,1), years3];
c3 = years3\times;                %Warning: Rank deficient, rank = 2, tol =  1.224114e-10. > In aassignment1 (line 28)

% fprintf("polynomial with degree 3, is y=%d %dx",c3(1),c3(2))



% Rx = Q'b  Formula find x, which is c  USE: x = [R | Q'*y]
% d = rref(c)
% 
% d =
% 
%     1.0000         0   -2.0000
%          0    1.0000    1.6667
% 
% d(:,3)
% 
% ans =
% 
%    -2.0000
%     1.6667
% 
% d(1,:)
% 
% ans =
% 
%      1     0    -2
