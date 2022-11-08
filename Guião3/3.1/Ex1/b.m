% Tem todas as semanas 2 aulas às 9. Se tiver ido na aula
% anterior, 70% de chance de ir, se faltou a aula anterior,
% 80% de chance de ir.
%
% Considerando o estado 1 "faltar", temos:
%          NF   F          F
%   T= NF (0.7  0.8) = NF (0.8)
%       F (0.3  0.2)    F (0.2)
%
% Entre as aulas de quarta, existe uma outra aula.
% Como sabemos que faltou a de quarta, tem 0.8 de chance
% de não faltar a proxima, e 0.2 de chance de faltar.
%
% A - Faltar na segunda aula
% B - Estar ausente na proxima quarta
%
% P(A) = 0.2
% P(!A) = 0.8
% P(B) = P(!A)*0.3 + P(A)*0.2
% P(B) = 0.8*0.7 + 0.2*0.8

PB = 0.8*0.7 + 0.2*0.8

