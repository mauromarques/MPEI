notas = [5, 50, 100];
probabilidades = [0.9, 0.09, 0.01];
y = 1:1:3;

for i = 1:1:length(notas)
    y(i) = probabilidades(i);
end

y = [0 y 0];
notas = [1 notas 110];
stairs(notas, y, 'r')