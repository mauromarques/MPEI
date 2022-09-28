N = 10000; %Numero de experiencias
p = 0.5; %probabilidade de ser rapaz
n = 5; %Numero de filhos no conjunto que sera analisado

% B -> pelo menos um filho é rapaz
% A -> um (e apenas um) outro filho é rapaz
                                                                                                                                                                                    
%P(A|B) = P(AnB)/P(B)
%---------------------
%P(AnB) = 0,25
%P(B) = 0,50
%P(A|B) = 0,25/ 0,50 = 0,50      
%---------------------

lancamentos = rand(n, N) > p;
prob_primeiroRapaz = sum(lancamentos(1,:) == 1)/N; %P(B)
prob_segundoRapaz = sum(lancamentos(2,:) == 1)/N; %P(A)
prob_primeiroESegundo = prob_primeiroRapaz * prob_segundoRapaz; %P(AnB)
prob_segundoSabendoPrimeiro = prob_primeiroESegundo/prob_primeiroRapaz %P(A|B)

