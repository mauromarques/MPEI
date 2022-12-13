l = load('L.mat');
H = l.L;
somas = sum(l.L);

for i = 1:1:90
    coluna = H(:, i);
    for j = 1:1:length(coluna)
        if coluna(j) == 1
            H(j,i) = 1/somas(i);
        end
    end
end

h2 = ones(90)./90;
a = (0.85 * H) + (0.15 * h2)


x0 = (ones(1,90)./90)'

x = x0
epsilon = 1e-4;
while 1
    xold = x;
    x = a * x;
    if max(abs(x-xold))<epsilon 
        break; 
    end
end
x