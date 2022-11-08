% Tem todas as semanas 2 aulas às 9. Se tiver ido na aula
% anterior, 70% de chance de ir, se faltou a aula anterior,
% 80% de chance de ir.
%
% Considerando o estado 1 "não faltar", temos:
%          NF   F          NF
%   T= NF (0.7  0.8) = NF (0.7)
%       F (0.3  0.2)    F (0.3)
%
% Entre as aulas de quarta, existe uma outra aula.
% Como sabemos que não faltou a de quarta, tem 0.7 de chance
% de não faltar a proxima, e 0.3 de chance de faltar.
%
% A - Faltar na segunda aula
% B - Estar presente na proxima quarta
%
% P(A) = 0.3
% P(!A) = 0.7
% P(B) = P(!A)*0.7 + P(A)*0.8
% P(B) = 0.7*0.7 + 0.3*0.8

pb = 0.7*0.7 + 0.3*0.8