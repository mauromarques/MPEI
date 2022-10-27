%P(AnB) = P(A)P(B)
%P(A|B) = P(A)
%P(AnB)/ P(B) = P(A)

%A - Soma dos dois valores é 9
%B - O segundo valor é par

% Casos possíveis = 6x6 = 36
% Segundo dado é par = (x, 2), (x, 4), (x, 6) = 3x6 = 18
% Soma 9 = (6,2), (5,3), (4,4), (3,5), (2,6)
% Soma 9 && Segundo par = (6,2), (4,4), (2,6)

%P(AnB) = 3/36
%P(B) = 18/36
%P(A) = 5/36

if 18/36 * 5/36 == 3/36
    disp("São independentes")
else
    disp("São dependentes")
end