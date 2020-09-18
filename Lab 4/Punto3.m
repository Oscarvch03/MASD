clc

r0_con = 1;
h0_con = 2;

r0_cil = r0_con/sqrt(3);
h0_cil = 2;

v0_cil = pi* (r0_cil^2) * h0_cil;
v0_con = (pi* (r0_con^2) * h0_con)/3;

[X_cil,Y_cil,Z_cil] = cylinder(r0_cil); % cilindro Grande
[X1,Y1,Z1] = cylinder(r0_cil* 0.99); % clindro chuiquito

[X_con,Y_con,Z_con] = cylinder([0,r0_con]); % cono grande

t0 = 0;
tf = 1000;

[t1,v_cil] = ode45(@ODEx_cil,[t0:0.5:tf],v0_cil);
h_cil = v_cil./(pi* (r0_cil^2));

[t2,h_con] = ode45(@ODEx_con, [t0:0.5:tf],h0_con);
r_con = (r0_con/h0_con).*h_con;

x1 = 1;
y1 = 1;

x2 = 4;
y2 = 1;

figure(1)
xlim([0,5.5])
ylim([0,2])
zlim([0,h0_cil])
view(0,0)
grid on
hold on
for i = 1:length(h_cil)
    cla
    surf(X_cil+x1, Y_cil+y1, Z_cil*h0_cil, 'facecolor','y','FaceAlpha', 0.5,'Edgecolor','none')
    surf(X_con+x2, Y_con+y2, Z_con*h0_con, 'facecolor','y','FaceAlpha', 0.5,'Edgecolor','none')
    surf(X1+x1, Y1+y1, Z1*real(h_cil(i)), 'facecolor','b','FaceAlpha', 0.5,'Edgecolor','none')
    [X2,Y2,Z2] = cylinder([0,real(r_con(i))].* 0.99);
    surf(X2+x2, Y2+y2, Z2*real(h_con(i)), 'facecolor','b','FaceAlpha', 0.5,'Edgecolor','none')
    pause(0.01)
end