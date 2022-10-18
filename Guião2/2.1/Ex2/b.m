%randi(x, y, z) -> Random no intervalo de 0 até x,
%                  Numa matriz com Y linhas e Z colunas
lancamentos = randi(100,20,10000);

somaDosLancRepetidos = 0;
%Isolar cada coluna
for i = 1:1:10000
    %unique(matrix) -> Retorna uma coluna com todos os numeros
    %                  não repetidos em uma matriz
    coluna = lancamentos(:,i);
    uniques = unique(coluna);
    %Se a altura dos unicos for diferente da altura da coluna
    %houve pelo menos um lancamento que atingiu um alvo repetido
    somaDosLancRepetidos = somaDosLancRepetidos + (height(coluna) ~= height(uniques));
end

prob_repetidos = somaDosLancRepetidos/10000