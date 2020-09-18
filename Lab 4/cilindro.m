clc

r = 1;
h = 2;
x = 1;
y = 1;

[X, Y, Z] = cylinder(r);
surf(X + x, Y + y, Z * h, 'facecolor', 'b', 'FaceAlpha', 0.5, 'Edgecolor', 'none')