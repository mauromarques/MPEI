%
% B -> pelo menos um filho é rapaz
% A -> um (e apenas um) outro filho é rapaz

lancamentos = rand(n, N) > p;
mat_peloMenos1Rapaz = sum(lancamentos) >= 1;
mat_peloMenosMais1Rapaz = sum(lancamentos) >= 2; 
prob_peloMenos1Rapaz = sum(mat_peloMenos1Rapaz)/N;
prob_peloMenosMais1Rapaz = sum(mat_peloMenosMais1Rapaz)/N;

prob = prob_peloMenosMais1Rapaz / prob_peloMenos1Rapaz