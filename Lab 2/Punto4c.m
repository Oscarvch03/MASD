% Ecuacion del Sistema: C[k + 1] = C[k](1 + r) 

clc

%% Parametros
years = 15;
N = 12 * years;
r = 0.01;
C_0 = 80000;

%% Iteraciones

C = zeros(1, N);
C(1) = C_0;

for k = 1:(N - 1)
    C(k + 1) = C(k) * (1 + r);
end

PM = C(N) / N;

%% Grafica

figure(1)
set(gcf, 'units', 'normalized', 'outerposition', [0 0 1 1])
stem(C, 'r')
title("Gráfica Punto 4c: El pago mensual debe ser " + num2str(PM))
xlim([0, N + 1])
ylim([0, max(C)])
xlabel('Tiempo en Meses')
ylabel('Capital Acumulado')
saveas(gcf, 'Punto4c.png')