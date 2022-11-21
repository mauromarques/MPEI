T = rand(20); % Nada garante que vai ser estocástica
s = sum(T); % então soma o conteudo das colunas
T = T/s % e divide a matriz por essa soma
