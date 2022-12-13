t = [0.1  0.1 0.3 0.3
     0.4  0.1 0.3 0.3
     0.25 0.5 0.1 0.3
     0.25 0.3 0.3 0.1];

x0 = [0.25
      0.25
      0.25
      0.25];

% como a publicidade muda de 2 em 2 minutos, em 10 minutos, vemos 5
% publicidades, considerando x0 como a primeira, temos 4 mudanças de
% publicidade nestes 10 minutos.
r = t^4 * x0;
r(1)

