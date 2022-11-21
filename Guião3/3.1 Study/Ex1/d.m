% 15 semanas, 2 aulas por semana, 30 aulas no total
% aulas vão de 0 a 29, sendo 0 a primeira aula em que
% o aluno foi

x0 = [0.85
      0.15];
t = [0.7 0.8
     0.3 0.2];

y = zeros(1,30);
x = zeros(1,30);

for i = 1:1:30
    x(i) = i;
    res = ((t^i)*x0);
    y(i) = res(2);
end
plot(x,y)