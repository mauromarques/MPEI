for n = 10:10:100
    lancamentos = randi(1000,n,10000);
    somaDosLancRepetidos = 0;
    for i = 1:1:10000
        coluna = lancamentos(:,i);
        uniques = unique(coluna);
        somaDosLancRepetidos = somaDosLancRepetidos + (height(coluna) ~= height(uniques));
    end
    y1(n) = somaDosLancRepetidos/10000;
end
y1 = y1(10:10:end);

for n = 10:10:100
    lancamentos = randi(100000,n,10000);
    somaDosLancRepetidos = 0;
    for i = 1:1:10000
        coluna = lancamentos(:,i);
        uniques = unique(coluna);
        somaDosLancRepetidos = somaDosLancRepetidos + (height(coluna) ~= height(uniques));
    end
    y2(n) = somaDosLancRepetidos/10000;
end
y2 = y2(10:10:end);

x = 1:10:100;
subplot(1,2,1);
plot(x,y1);
subplot(1,2,2);
plot(x,y2);