t = 1000;
numKeys = 10;
numRepetidos = 2;
N = 10000;

hashes = randi(t,numKeys,N);
somaDosHashesRepetidos = 0;
for i = 1:1:N
    coluna = hashes(:,i);
    uniques = unique(coluna);
    somaDosHashesRepetidos = somaDosHashesRepetidos + (height(coluna) ~= height(uniques));
end

prob = somaDosHashesRepetidos/N
