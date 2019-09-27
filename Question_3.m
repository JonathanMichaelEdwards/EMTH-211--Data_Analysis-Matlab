clear, clc

% Loading in test data
load('A1.mat')
colormap(gray(256));

[U, S, V] = svd(A);
A_sz = size(A);
A_sv = zeros(1, A_sz(1));

for i = 1:A_sz(1)
    A_sv(i) = S(i, i);
end
A_sv_range = [max(A_sv), min(A_sv)];

image_sv = [2 6 10 15 20 30 50 100];
A_sv_com = zeros(1, length(image_sv));

for j = 1:length(image_sv)
    new_mat = zeros(A_sz(1), A_sz(2));
    for k = 1:image_sv(j)
        new_mat(k, k) = A_sv(k);
    end
    figure(j)
    image(U*new_mat*V');
end

% image(A_sv_com(8));