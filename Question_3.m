clear, clc

% Loading in test data
load('A1.mat')
colormap(gray(256));
image(A);

sValues = [];
[U, S, V] = svd(A);

for i = 1:480
    sValues = [sValues S(i,i)];
end
max(sValues)
min(sValues)