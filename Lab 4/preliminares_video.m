% preliminares: creaci�n de vieo
% 
x=(-1:0.01:1); %creamos la variable independiente para graficar la l�nea

v = VideoWriter('prueba.avi'); %creamos un objeto 'v' donde se almacenar�n las im�genes que conforman el video
v.FrameRate=20; %definimos la cantidad de im�genes por segundo que tendr� el video

open(v); %par iniciar a adicionar las im�genes en v

for m =-1:0.1:1 % m es la pendiente de la l�nea
    y = m*x; %variable dependite de la l�nea
    plot(x,y,'LineWidth',2);
    xlim([-1.5, 1.5]); %fijamos los l�mites del eje x de la gr�fica
    ylim([-1.5, 1.5]); %fijamos los l�mites del eje y de la gr�fica
    F = getframe(gcf); %transformamos la im�gen que se est� mostrando en un frame
    writeVideo(v,F); %adicionamos el frame a 'v'
end

close(v); % finalizamos el video
