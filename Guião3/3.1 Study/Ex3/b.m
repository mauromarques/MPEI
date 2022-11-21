T = rand(20); % Nada garante que vai ser estocástica
s = sum(T); % então soma o conteudo das colunas
T = T./s; % e divide a matriz por essa soma

% x0 = [1 0 0 0 0 ... 0], pois sabemos que está no estado 1
x0 = zeros(20,1);
x0(1) = 1;

iteracoes = [2 5 10 100];
y = zeros(1,4);

for i = 1:1:4
    z = T^iteracoes(i) * x0;
    y(i) = z(20);
end

y*100