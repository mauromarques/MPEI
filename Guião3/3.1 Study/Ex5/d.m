t = [0.7 0.2 0.3
     0.2 0.3 0.3
     0.1 0.5 0.4];

% - primeiro dia é sol
% - qual o numero médio de numeros de sol, nuvem e chuva
%   no mês de janeiro? (31 dias)

%m = [t-eye(3);ones(1,3)];
%x = [0 0 0 1]';
%u = m\x * 10

x0 = [1 0 0]';
sol = 1;
nuvem = 0;
chuva = 0;

for i = 1:1:30
    y = t^i * x0;
    sol = sol + y(1);
    nuvem = nuvem + y(2);
    chuva = chuva + y(3);
end
sol
nuvem
chuva