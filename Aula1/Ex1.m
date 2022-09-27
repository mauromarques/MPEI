%Primeiro método
experiencias = rand(3,10000);
lancamentos = experiencias > 0.5;
resultados = sum(lancamentos);
sucessos = resultados == 2;
probsimulacao = sum(sucessos)/10000;
disp('Primeiro método: ');
disp(probsimulacao);

%Segundo método
N = 10000;
p = 0.5;
k = 2;
n = 3;
lancamentos = rand(n, N) > p;
sucessos = sum(lancamentos)==k;
probsimulacao = sum(sucessos)/ N;
disp('Segundo método: ');
disp(probsimulacao);