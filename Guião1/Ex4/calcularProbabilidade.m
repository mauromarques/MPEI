function prob = calcularProbabilidade(p, n, k, N)
    lancamentos = rand(n, N) > p;
    sucessos = sum(lancamentos)==k;
    prob = sum(sucessos)/ N;
end

