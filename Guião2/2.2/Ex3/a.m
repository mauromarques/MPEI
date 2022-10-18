% x = {0,1,2,3,4} -> Número de coroas
x = [0,1,2,3,4];
exp = 100000;
lancamentos = rand(4,exp) <= 0.5;
probs = zeros(1,5);

for i = 1:1:exp
    coluna = lancamentos(:,i);
    coluna = sum(coluna);
    if coluna == 0
        probs(1,1) = probs(1,1) +1;
    end
    if coluna == 1
        probs(1,2) = probs(1,2) +1;
    end
    if coluna == 2
        probs(1,3) = probs(1,3) +1;
    end
    if coluna == 3
        probs(1,4) = probs(1,4) +1;
    end
    if coluna == 4
        probs(1,5) = probs(1,5) +1;
    end
end

probs = probs/exp
probs = [0 probs 0];
x = [-1 x 5];
stairs(x, probs)


