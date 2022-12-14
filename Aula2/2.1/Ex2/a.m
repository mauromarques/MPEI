%randi(x, y, z) -> Random no intervalo de 1 até x,
%                  Numa matriz com Y linhas e Z colunas
lancamentos = randi(100,20,10000);

somaDosLancUnicos = 0;
%Isolar cada coluna e verificar se o numero de numeros 
%únicos é igual ao numero de dardos lançados
for i = 1:1:10000
    %unique(matrix) -> Retorna uma coluna com todos os numeros
    %                  não repetidos em uma matriz
    coluna = lancamentos(:,i);
    uniques = unique(coluna);
    %Se a altura dos unicos for igual a altura da coluna
    %todos os lancamentos atingiram um alvo apenas uma vez
    somaDosLancUnicos = somaDosLancUnicos + (height(coluna) == height(uniques));
end

prob_unicos = somaDosLancUnicos/10000
