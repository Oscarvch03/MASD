clc

%% Punto 1a

v1 = [1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0];
v2 = [0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1];
A1 = [v1; v2; v1; v2; v1; v2; v1; v2; v1; v2; v1; v2; v1; v2; v1; v2];


%% Punto 1b

%figure(1)
%imshow(A1)

%imagesc(A1)
%colormap gray

%% Punto 1d

b = zeros(100, 100);
w = ones(100, 100);
v1 = [b, w, b, w, b, w, b, w];
v2 = [w, b, w, b, w, b, w, b];
A2 = [v1; v2; v1; v2; v1; v2; v1; v2];
%figure(2)
%imshow(A2)

%% Punto 1e

imwrite(A2, "ajedrez_oscar_velasco.bmp")

%% Punto 1f 

A3 = imread("ajedrez.bmp");
%figure(3)
%imshow(A3)

%% Punto 1g

[x, y] = size(A3);
aux = ones(x, y);
A4 = mod(A3 + aux, 2);
%figure(4)
%imshow(A4)
imwrite(A4, "ajedrez2_oscar_velasco.bmp")

%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Punto 2a

B1 = imread("balcones256.bmp");
%figure(1)
%imshow(B1)

%% Punto 2b

B1 = b_and_w(B1);
%figure(2)
%imshow(B1)

%% Punto 2c

imwrite(B1, "balconesBN_oscar_velasco.bmp")

%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Punto 3a

RGB = zeros(600, 1000, 3);

%% Punto 3b

%figure(1)
%imshow(RGB)

%% Punto 3c

RGB(1:400, 201:800, 1) = 255;

%% Punto 3d

%figure(2)
%imshow(RGB)

%% Punto 3e

RGB(201:600, 1:600, 2) = 255;

%% Punto 3f 

%figure(3)
%imshow(RGB)

%% Punto 3g

RGB(201:600, 401:1000, 3) = 255;

%% Punto 3h 

%figure(4)
%imshow(RGB)

%% Punto 3i

RGB_bandera = zeros(400, 600, 3);
RGB_bandera(1:150, 1:600, 1) = 255;
RGB_bandera(1:150, 1:600, 2) = 255;
RGB_bandera(151:275, 1:600, 3) = 255;
RGB_bandera(276:400, 1:600, 1) = 255;

%figure(1)
%imshow(RGB_bandera)
imwrite(RGB_bandera, "Colombia_oscar_velasco.bmp")

%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Punto 4a

G = imread("guacamaya.jpg");
[x, y, z] = size(G);
% figure(1)
% imshow(G)

G(1:x, 1:y, 2) = 0;
% figure(2)
% imshow(G)
imwrite(G, "guacamaya_oscar_velasco.bmp")

%% Punto 4b

R1 = imread("rostro1.jpg");
R2 = imread("rostro2.jpg");

figure(1)
imshow(R1)
figure(2)
imshow(R2)

R3 = (R1 + R2) / 2;
figure(3)
imshow(R3)
imwrite(R3, "rostro3_oscar_velasco.jpg")

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

