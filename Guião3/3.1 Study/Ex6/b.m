t = [0.8 0   0 0.3 0
     0.2 0   0 0.2 0
     0   0.3 1 0   0
     0   0.1 0 0.4 0
     0   0.6 0 0.1 1];

y = zeros(1,100);
x = zeros(1,100);

x0 = [1 0 0 0 0]';

for i = 1:1:99
    x(i) = i;
    z = t^i * x0;
    y(i) = z(2);
end

plot(x, y)