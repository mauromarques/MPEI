disp('Probabilidade de 2 caras em 3 lançamentos: ');
    prob = calcularProbabilidade(0.5, 3, 2, 10000);
    disp(prob);
disp('Probabilidade de 6 caras em 15 lançamentos: ');
    prob = calcularProbabilidade(0.5, 15, 6, 10000);
    disp(prob);

disp('20 lançamentos:')
    matriz = [];
    for c = 20 : -1 : 0
        prob = calcularProbabilidade(0.5, 20, c, 10000);
        disp(prob);
        matriz(end+1) = prob;
    end
    stem(matriz)

disp('40 lançamentos:')
    for c = 40 : -1 : 0
        prob = calcularProbabilidade(0.5, 40, c, 10000);
        disp(prob);
    end

disp('100 lançamentos:')
    for c = 100 : -1 : 0
        prob = calcularProbabilidade(0.5, 100, c, 10000);
        disp(prob);
    end

