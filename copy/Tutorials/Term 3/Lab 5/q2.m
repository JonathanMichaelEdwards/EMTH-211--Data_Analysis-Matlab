% Part a
A = [2, 1; 1, 2];
[V,D] = eig(A)
a = eig(A)

for index = 1:size(a)
    [L, U] = lu([2-a(index), 1; 1, 2-a(index)]);
    U
end


% Part b
A = [2, 1, 3; 0, 2, -5; 0, 3, -6];
[V,D] = eig(A)
a = eig(A)

for index = 1:size(a)
    [L, U2] = lu([2-a(index), 1; 1, 2-a(index)]);
    U2
end
