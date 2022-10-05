m = [200,500,1000,2000,5000,10000,20000,50000,100000];

ind = 1;
for mi = m
        lancamentos = randi(mi,100,10000);
        somaDosLancRepetidos = 0;
        for i = 1:1:10000
            coluna = lancamentos(:,i);
            uniques = unique(coluna);
            somaDosLancRepetidos = somaDosLancRepetidos + (height(coluna) ~= height(uniques));
        end
        y2(ind) = somaDosLancRepetidos/10000;
        ind = ind + 1;
end

x = m;
%subplot(1,2,1);
plot(x,y2);

