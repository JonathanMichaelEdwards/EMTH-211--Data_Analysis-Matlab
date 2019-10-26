clear, clc

% Loading in test data
load('A1.mat')
store_images = [];

[U, S, V] = svd(A);
A_sz = size(A);
A_sv = zeros(1, A_sz(1));

for i = 1:A_sz(1)
    A_sv(i) = S(i, i);
end

A_sv_range = [max(A_sv), min(A_sv)];

image_sv = [2 6 10 15 20 30 50 100];

A_sizes = zeros(1, length(image_sv));

for j = 1:length(image_sv)
    
    new_mat = zeros(A_sz(1), A_sz(2));
    
    for k = 1:image_sv(j)
        new_mat(k, k) = A_sv(k);
    end
    
    new_A = U * new_mat * V';
    
    A_sizes(j) = image_sv(j)*(A_sz(1)+A_sz(2));
    
%     figure(j)
    colormap(gray(256));
    image(new_A);
%     a = imadd(new_A, 1);

%     store_images = [new_A]
    
end

og_size = A_sz(1) * (A_sz(1)+A_sz(2));
A_sizes = (A_sizes/og_size) * 100;

disp(A_sizes);