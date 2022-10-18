nPessoas = 0;
probMesmaData = 0.9;
probAtual = 0;
dias = 365;
N = 10000;

while probAtual <= probMesmaData
    nPessoas = nPessoas + 1;
    aniversarios = randi(dias,nPessoas,N);
    somaAnivIguais = 0;
    for i = 1:1:N
        coluna = aniversarios(:,i);
        uniques = unique(coluna);
        somaAnivIguais = somaAnivIguais + (height(coluna) ~= height(uniques));
    end
    probAtual = somaAnivIguais/N;
end

nPessoas
