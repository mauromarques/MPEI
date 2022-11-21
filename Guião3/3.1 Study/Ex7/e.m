%    a   b   c d e   f
h = [0   0   0 0 1/3 1/6 %   a
     1/1 0   0 0 1/3 1/6 %   b
     0   1/2 0 1 0   1/6 %   c
     0   0   1 0 0   1/6 %   d
     0   1/2 0 0 0   1/6 %   e
     0   0   0 0 1/3 1/6]; % f

h2 = [ 1/6 1/6 1/6 1/6 1/6 1/6
       1/6 1/6 1/6 1/6 1/6 1/6
       1/6 1/6 1/6 1/6 1/6 1/6
       1/6 1/6 1/6 1/6 1/6 1/6
       1/6 1/6 1/6 1/6 1/6 1/6
       1/6 1/6 1/6 1/6 1/6 1/6 ];

h3 = (0.8 * h) + (0.2 * h2);

r0 = [1/6 1/6 1/6 1/6 1/6 1/6]';

% r(10) = h*r(9)
% r10 = h * h * h * h * h * h * h * h * h * h * r0
index = 1;
difAtual = 10;
difMax = 10^(-4);
anterior = 0;

while difAtual > difMax
    r = h3^index * r0;
    difAtual = abs(r - anterior)
    anterior = r;
    index = index + 1
end
r