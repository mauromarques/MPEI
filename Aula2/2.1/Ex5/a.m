faces = 6;
numeroDeJogadas = 2;
N = 10000;

jogadas = randi(faces,numeroDeJogadas,N);

% A - soma dos dois valores é 9
probA = sum(sum(jogadas) == 9)/N

% B - segundo valor é par
somaSegundoPar = 0;
for i = 1:1:N
    coluna = jogadas(:,i);
    somaSegundoPar = somaSegundoPar + (rem(coluna(2), 2) == 0);
end
probB = somaSegundoPar/N

% C - pelo menos 1 dos valores é 5
somaPeloMenos1_5 = 0;
for i = 1:1:N
    coluna = jogadas(:,i);
    somaPeloMenos1_5 = somaPeloMenos1_5 + ((coluna(1) == 5) | (coluna(2) == 5));
end
probC = somaPeloMenos1_5/N

% D - nenhum valor é 1
somaNenhum1 = 0;
for i = 1:1:N
    coluna = jogadas(:,i);
    somaNenhum1 = somaNenhum1 + ((coluna(1) ~= 1) && (coluna(2) ~= 1));
end
probD = somaNenhum1/N
