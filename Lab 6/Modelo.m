clc

x1_0 = 60;
x2_0 = 50;
x3_0 = 40;
x4_0 = 30;

prop = 1.1; % Proporcion de ingreso cada año con respecto al anterior

X0 = [x1_0];
X1 = [x1_0];
X2 = [x2_0];
X3 = [x3_0];
X4 = [x4_0];
Xg = [0];

y = 10;

for k = 1:y
%     x0 = randi([60, 120]);
    X0(k + 1) = X0(k) * prop;
    
    X1(k + 1) = floor(X0(k)                  + X1(k) * (0.2) - X1(k) * (0.15));
    X2(k + 1) = floor(X1(k) - X1(k) * (0.2)  + X2(k) * (0.15) - X2(k) * (0.05));
    X3(k + 1) = floor(X2(k) - X2(k) * (0.15) + X3(k) * (0.1) - X3(k) * (0.02));
    X4(k + 1) = floor(X3(k) - X3(k) * (0.1)  + X4(k) * (0.05) - X4(k) * (0.01));
    
    Xg(k + 1) = floor(X4(k) - X4(k) * (0.05));
end

XT = X1 + X2 + X3 + X4;

figure(1)
hold on
title("Estudiantes por año en MACC")
xlim([0, y])
ylim([min([min(X1), min(X2), min(X3), min(X4)]), max([max(X1), max(X2), max(X3), max(X4)]) + 4])
xlabel("Año k")
ylabel("Cantidad de Estudiantes")
plot(0:y, X1)
plot(0:y, X2)
plot(0:y, X3)
plot(0:y, X4)
legend({'Año 1 del Pensum', 'Año 2 del Pensum', 'Año 3 del Pensum', 'Año 4 del Pensum'}, 'Location', 'southeast')
saveas(gcf, 'añodelpensum.png')

others = false;

if(others)
    
    figure(2)
    hold on
    title("Estudiantes que ingresan a MACC por año")
    xlim([0, y])
    ylim([min(X0), max(X0) + 4])
    xlabel("Año k")
    ylabel("Cantidad de Estudiantes")
    plot(0:y, X0, 'r')
    saveas(gcf, 'ingresoporaño.png')

    figure(3)
    hold on
    title("Estudiantes que se graduan de MACC por año")
    xlim([0, y])
    ylim([min(Xg), max(Xg) + 4])
    xlabel("Año k")
    ylabel("Cantidad de Estudiantes")
    plot(0:y, Xg, 'g')
    saveas(gcf, 'graduadosporaño.png')

    figure(4)
    hold on
    title("Estudiantes totales en MACC por año")
    xlim([0, y])
    ylim([min(XT), max(XT) + 4])
    xlabel("Año k")
    ylabel("Cantidad de Estudiantes")
    plot(0:y, XT, 'c')
    saveas(gcf, 'totalporaño.png')

end