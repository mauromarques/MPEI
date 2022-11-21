p = 0.4;
q = 0.6;

t = [p^2     0 0 q^2
     (1-p)^2 0 0 q*(1-q)
     p*(1-p) 0 0 q*(1-q)
     p*(1-p) 1 1 (1-q)^2];

x0 = [1
      0
      0
      0];

iteracoes = [5 10 100 200];
res = zeros(4);

for i = 1:1:4
    z = t^iteracoes(i) * x0;
    res(:,i) = z;
end

res
