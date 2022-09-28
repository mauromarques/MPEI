N = 10000; %Numero de experiencias
p = 0.5; %probabilidade de ser rapaz
k = 1; %numero de rapazes que eu quero analisar
n = 2; %Numero de filhos no conjunto que sera analisado

filhos = rand(n, N) < 0.5;
filhosRapazes = sum(filhos) >= k;
prob = sum(filhosRapazes)/N;
disp('Simulaçao: ');
disp(prob);