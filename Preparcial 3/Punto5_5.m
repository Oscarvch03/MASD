clc

alpha = 1/4;
beta = 1/4;

c = 800000;
d = 1000000;

X1 = [c];
X2 = [d];

k = 1;

while(true)
    if(abs(X2(k) - X1(k)) < 0.01)
        break
    end
    X1(k + 1) = (1 - alpha) * X1(k) + alpha * X2(k);
    X2(k + 1) = beta * X1(k) + (1 - beta) * X2(k);
    k = k + 1;
end

X1
X2
k

figure(1)
hold on
plot(X1, 'r')
plot(X2, 'g')