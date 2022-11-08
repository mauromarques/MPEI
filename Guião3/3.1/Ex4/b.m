p = 0.4;
q = 0.6;

%    A          B    C    D
% A (p^2      | 0  | 0  | q^2     )
% B ((1-p)^2  | 0  | 0  | q(1-q)  )
% C (p(1-p)   | 0  | 0  | q(1-q)  )
% D (p(1-p)   | 1  | 1  | (1-q)^2 )

t = [p^2      0 0 q^2     
     (1-p)^2  0 0 q*(1-q)  
     p*(1-p)  0 0 q*(1-q)
     p*(1-p)  1 1 (1-q)^2];

x0 = zeros(1, 4)';
x0(1) = 1;

resultados = zeros(4,4);
transicoes = [5 10 100 200];

for i = 1:1:4
    for j = 1:1:4
        f = t^transicoes(j)*x0
        resultados(i,j) = f(i);
    end
end

resultados

