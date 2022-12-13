t = [0.1  0.1 0.3 0.3
     0.4  0.1 0.3 0.3
     0.25 0.5 0.1 0.3
     0.25 0.3 0.3 0.1];

x0 = [0.25
      0.25
      0.25
      0.25];

% Para calcular as probabilidades limite
m = [t-eye(4);ones(1,4)];
x = [0 0 0 0 1]';
u = m\x
% Multiplicando a probabilidade limite de A por 60 minutos, temos o tempo
% em média que é mostrada a publicidade A
60 * u(1)
