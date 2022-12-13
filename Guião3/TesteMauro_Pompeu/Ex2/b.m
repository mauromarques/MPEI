l = load('L.mat');
H = l.L;
somas = sum(l.L);

for i = 1:1:90
    coluna = H(:, i);
    for j = 1:1:length(coluna)
        if coluna(j) == 1
            H(j,i) = 1/somas(i);
        end
    end
end

H

