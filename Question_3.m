clear, clc

% Loading in test data
load('A1.mat')
colormap(gray(256));
image(A);

[U, S, V] = svd(A);
