t = 1000;
numKeys = 10;
numRepetidos = 2;
N = 10000;

y = [1:1:numKeys];
for numK = 1:1:numKeys
    hashes = randi(t,numK,N);
    somaDosHashesRepetidos = 0;
    for i = 1:1:N
        coluna = hashes(:,i);
        uniques = unique(coluna);
        somaDosHashesRepetidos = somaDosHashesRepetidos + (height(coluna) ~= height(uniques));
    end
    y(numK) = somaDosHashesRepetidos/N;
end

x = [1:1:numKeys];

plot(x,y)

