%P(CnD) = P(C)P(D)
%P(C|D) = P(D)
%P(CnD)/ P(D) = P(C)

%C - pelo menos um dos valores é 5
%D - Nenhum valor é igual a 1

% Casos possíveis = 6x6 = 36
% C = (x, 5), (5, x), (5,5) = 6x2 + 1 = 13
% D = 5x5 = 25

%P(CnD) = (13-2)/36 = 11/36
%P(C) = 13/36
%P(D) = 25/36

if 13/36 * 25/36 == 11/36
    disp("São independentes")
else
    disp("São dependentes")
end