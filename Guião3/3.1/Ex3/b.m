T = rand(20); % Nada garante que vai ser estocástica
s = sum(T); % então soma o conteudo das colunas
T = T./s; % e divide a matriz por essa soma
sum(T); %agora garantimos que é estocática

% Coluna de estados tem probabilidade 1 para estar no estado 1
% e probabilidade 0 para estar nos outros, pq já sabemos
% que está no 1
x0 = zeros(1,20)';
x0(1) = 1;

iteracoes = [2 5 10 100];
y = zeros(1,4);

for i = 1:length(iteracoes)
    z = T^iteracoes(i)*x0;
    y(i) = z(20);
end

fprintf('Apos 2: %.5f \n', y(1)*100);
fprintf('Apos 5: %.5f \n', y(2)*100);
fprintf('Apos 10: %.5f \n', y(3)*100);
fprintf('Apos 100: %.5f \n', y(4)*100);