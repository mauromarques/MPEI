p = 0.4;
q = 0.6;

t = [p^2     0 0 q^2
     (1-p)^2 0 0 q*(1-q)
     p*(1-p) 0 0 q*(1-q)
     p*(1-p) 1 1 (1-q)^2];
%Como fazer para descobrir o limite-----
m = [t-eye(4);ones(1,4)];
x = [0 0 0 0 1]';
u = m\x