% CONCEITOS DE CADEIAS DE MARKOV---------------------------------

% p(Xt+1 | Xt, Xt-1, ... , X2, X1) = p(Xt+1|Xt)
% p(X1, X2, ... Xn) = p(X1)*p(X2|X1)* ... * p(Xn|Xn-1)

% pji = P(Xn+1 = j | Xn = i) <- Transiçaõ de i para j
%     <- Quando pji não depende de n, esta cadeia diz-se homogenea

% 1- Identificar estados
% 2- Identificar transições
% 3- Identificar probabilidades para transições

% Exemplo de faltas: Se faltou, tem 80% de chance de ir a aula,
% se foi, tem 70% de chance de ir a aula
%
% -Estados: {faltar, não faltar}
% -Transições: {Faltar     -> não faltar,
%               Faltar     -> faltar,
%               Não faltar -> não faltar,
%               Não faltar -> faltar}
% -Probabilidades: {Faltar     -> não faltar = 0.8,
%                   Faltar     -> faltar     = 0.2,
%                   Não faltar -> não faltar = 0.7,
%                   Não faltar -> faltar     = 0.3}
% 
% Considerando o estado 1 "não faltar", temos:
%          NF   F
%   T= NF (0.7  0.8)
%       F (0.3  0.2)

% Exemplo de grupos de alunos: Dividimos as turmas em 3 grupos: A,
% B, C. No final de cada aula: 1/3 do A vai para B, 1/3 do A vai
% para o C. 1/4 de B vai para A, 1/4 de B vai para C. 1/2 de C vai
% B.
%
%        A    B    C
% T = A (1/3  1/4  0  )
%     B (1/3  2/4  1/2)
%     C (1/3  1/4  1/2)
