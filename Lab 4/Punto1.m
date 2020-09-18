clc

v = VideoWriter('Punto1.avi'); 
v.FrameRate = 20; 

open(v); 

for x =-1:0.1:1 
    plot(x, 0, 'Marker', 'o', 'MarkerSize', 10);
    xlim([-1.5, 1.5]); 
    ylim([-1.5, 1.5]); 
    F = getframe(gcf); 
    writeVideo(v,F);
end

close(v); 
% implay('Punto1.avi')
