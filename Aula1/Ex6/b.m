N = 10000; %Numero de experiencias
p = 0.3; %probabilidade de erro
k = 2; %numero de erros que eu quero analisar
n = 5; %Numero de peças no conjunto que sera analisado

%Simulação----------------------------------
pecas = rand(n, N) < p;
pecasDefeituosas = sum(pecas)<=k;
probsimulacao = sum(pecasDefeituosas)/ N;
disp('Simulaçao: ');
disp(probsimulacao);
%Analitica----------------------------------
%prob de ter 1 + prob de ter 2 + prob de ter 0 = prob de no máximo 2
prob = probAnalitica(p, 1, n) + probAnalitica(p, 2, n) + probAnalitica(p, 0, n);
disp('Analitica: ');
disp(prob);