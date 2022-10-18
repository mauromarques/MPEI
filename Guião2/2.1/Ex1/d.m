N = 10000; %Numero de experiencias
p = 0.5; %probabilidade de ser rapaz
k = 1; %numero de rapazes que eu quero analisar
n = 2; %Numero de filhos no conjunto que sera analisado

% B -> primeiro filho é rapaz
% A -> segundo filho rapaz
%P(A|B) = P(AnB)/P(B)

lancamentos = rand(n, N) > p;
prob_primeiroRapaz = sum(lancamentos(1,:) == 1)/N; %P(B)
prob_segundoRapaz = sum(lancamentos(2,:) == 1)/N; %P(A)
prob_primeiroESegundo = prob_primeiroRapaz * prob_segundoRapaz; %P(AnB)
prob_segundoSabendoPrimeiro = prob_primeiroESegundo/prob_primeiroRapaz %P(A|B)

