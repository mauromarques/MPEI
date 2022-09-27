N = 10000;
p = 0.5;
k = 6;
n = 15;
lancamentos = rand(n, N) > p;
sucessos = sum(lancamentos)==k;
probsimulacao = sum(sucessos)/ N;
disp('Probabilidade de obter 6 caras em 15 lançamentos: ');
disp(probsimulacao);