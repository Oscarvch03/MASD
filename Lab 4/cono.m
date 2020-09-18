clc

r = 2;
h = 3;
x = 2;
y = 4;

[X, Y, Z] = cylinder([2, r]);
surf(X + x, Y + y, Z * h, 'facecolor', 'b', 'FaceAlpha', 0.5, 'Edgecolor', 'none')