clear, clc

% Loading in test data
load('A1.mat')
colormap(gray(256));
image(A);

[U, S, V] = svd(A);
A_sz = size(A);
A_sv = 0*A_sz;

for i = 1:A_sz(1)
    A_sv(i) = S(i, i);
end
A_sv_range = [max(A_sv), min(A_sv)];