clc

a = 1000;
b = 200;
c = 0;

X1 = [a];
X2 = [b];
X3 = [c];

k = 1;
while(true)
   if(X1(k) < 1 && X2(k) < 1)
       break
   end
   X1(k + 1) = (1/2) * X1(k);
   X2(k + 1) = (1/2) * X1(k) + (3/4) * X2(k);
   X3(k + 1) = (1/4) * X2(k) + X3(k);
   k = k + 1;
end

X1
X2
X3
k

figure(1)
hold on
plot(0:k-1, X1, 'b')
plot(0:k-1, X2, 'r')
plot(0:k-1, X3, 'g')

