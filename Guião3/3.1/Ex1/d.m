v = [0.15 0.85]'
res = zeros(1, 30);
res(1) = 0.15;
for i = 2:30
    v = Tij * v;
    %v2 = Tij^2 * v;
    res(i) = v(1);
end
plot(res, '*-');