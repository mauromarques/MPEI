t = 1000;
numKeys = 50;
numRepetidos = 2;
N = 10000;

y = [1:1:10];
x = [1:1:10];
for tamanho = 1:1:10
    hashes = randi(tamanho*100,numKeys,N);
    somaDosHashesUnicos = 0;
    for i = 1:1:N
        coluna = hashes(:,i);
        uniques = unique(coluna);
        somaDosHashesUnicos = somaDosHashesUnicos + (height(coluna) == height(uniques));
    end
    y(tamanho) = somaDosHashesUnicos/N;
    x(tamanho) = tamanho*100;

end

plot(x,y)

