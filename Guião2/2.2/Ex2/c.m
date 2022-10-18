% 100 notas: 90 - 5   euros
%            9  - 50  euros
%            1  - 100 euros

x = [5, 50, 100];
px = [0.9, 0.09, 0.01];
xd = [0, x, 110];
y = zeros(1,3)

for i = 1:1:length(x)
    for j = 1:1:i
        y(i) = y(i) + px(j);
    end
end

y = [0, y, 0];
stairs(xd, y, 'r')