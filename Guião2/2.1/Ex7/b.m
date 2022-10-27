% P(erro|C) = 0.001
% P(C) = 0.5

% P(erro|C) = P(ERROnC)/P(C)
% 0.001 x 0.5 = P(ERROnC)
% P(ERROnC) = 0.0005

% P(ERRO) = P(ERROnA) + P(ERROnB) + P(ERROnC)
%         = P(ERRO|A)P(A) + P(ERRO|-B)P(B) + P(ERRO|C)P(C)
%         = 0.01 x 0.2 + 0.05 x 0.3 + 0.001 x 0.5

% P(C|ERRO) = P(CnERRO)/P(ERRO)
%           = 0.0005/P(ERRO)

% P(A|ERRO) = P(AnERRO)/P(ERRO)
%           = P(ERRO|A)P(A)/P(ERRO)
%           = 0.01 x 0.2/P(ERRO)

% P(B|ERRO) = P(BnERRO)/P(ERRO)
%           = P(ERRO|B)P(B)/P(ERRO)
%           = 0.05 x 0.3/P(ERRO)

perro = (0.01 * 0.2 + 0.05 * 0.3 + 0.001 * 0.5);
probCarlos = (0.001*0.5)/perro
probAndre = (0.01*0.2)/perro
probBruno = (0.05*0.3)/perro