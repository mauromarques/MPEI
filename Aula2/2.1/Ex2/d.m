m = [200,500,1000,2000,5000,10000,20000,50000,100000];

for mi = m
    for n = 10:10:100
        lancamentos = randi(mi,n,10000);
        somaDosLancRepetidos = 0;
        for i = 1:1:10000
            coluna = lancamentos(:,i);
            uniques = unique(coluna);
            somaDosLancRepetidos = somaDosLancRepetidos + (height(coluna) ~= height(uniques));
        end
        y2(n) = somaDosLancRepetidos/10000;
    end
end
y2 = y2(1:1:9);

x = 1:1:9;
%subplot(1,2,1);
plot(x,y2);

