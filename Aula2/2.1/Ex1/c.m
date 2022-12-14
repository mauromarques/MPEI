N = 10000; %Numero de experiencias
p = 0.5; %probabilidade de ser rapaz
k = 1; %numero de rapazes que eu quero analisar
n = 2; %Numero de filhos no conjunto que sera analisado

% B -> tem um filho rapaz
% A -> tem dois filhos rapazes
%P(A|B) = P(AnB)/P(B)
%---------------------
%P(AnB) = 0,25
%P(B) = 0,75
%P(A|B) = 0,25/ 0,75 = 0,33
probAnB = probAnalitica(p, 1, n) - probAnalitica(p, 2, n);
probB = probAnalitica(p, 1, n) + probAnalitica(p, 2, n);
probAcondB = probAnB/probB;
disp('Analitica: ');
disp(probAcondB);
%---------------------

lancamentos = rand(n, N) > p;

%P(B)
peloMenosUmRapaz = sum(lancamentos)>=1;
probPeloMenos1Rapaz = sum(peloMenosUmRapaz)/ N;
%P(AnB)
doisRapazes = sum(lancamentos) == 2;
probDoisRapazes = sum(doisRapazes)/N;
%P(A|B) = P(AnB)/P(B)
probCond = probDoisRapazes/probPeloMenos1Rapaz;

disp('Simulacao: ');
disp(probCond);