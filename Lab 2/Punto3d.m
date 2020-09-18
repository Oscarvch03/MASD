% Ecuacion del Sistema: D[K+1] = D[K](1 - p) + D[0]

clc

%% Parametros

D_0 = 2;
p = 0.25;

N = 100;

%% Iteraciones

D = zeros(1, N);
D(1) = D_0;

for k = 1:(N - 1)
    D(k + 1) = D(k)*(1 - p) + D(1);
end


%% Grafica 

figure(1)
set(gcf, 'units', 'normalized', 'outerposition', [0 0 1 1])
stem(D, 'r')
title('Gráfica Punto 3d')
xlim([0, N + 1])
xlabel('Tiempo en Horas')
ylabel('Cantidad de Droga en la Sangre (cc)')
saveas(gcf, 'Punto3d.png')

