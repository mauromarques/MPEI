p = 0;
for i = 0:1:1
    p = p + (2^i)*exp(-2)/factorial(i);
end
disp(p)

