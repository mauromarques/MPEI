N = 10000; %Numero de experiencias
p = 0.3; %probabilidade de erro
k = 3; %numero de erros que eu quero analisar
n = 5; %Numero de peças no conjunto que sera analisado

%Simulação----------------------------------
pecas = rand(n, N) < p;
pecasDefeituosas = sum(pecas)==k;
probsimulacao = sum(pecasDefeituosas)/ N;
disp('Simulaçao: ');
disp(probsimulacao);
%Analitica----------------------------------
prob = nchoosek(n, k)*p^k*(1-p)^(n-k);
disp('Analitica: ');
disp(prob);