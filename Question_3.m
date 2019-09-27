clear, clc

% Loading in test data
load('A1.mat')
colormap(gray(256));
image(A);

sValues = [];
[U, S, V] = svd(A);

A_sz = size(A);
A_sv = zeros(1, A_sz(1));

for i = 1:A_sz(1)
    A_sv(i) = S(i, i);
end
A_sv_range = [max(A_sv), min(A_sv)];
