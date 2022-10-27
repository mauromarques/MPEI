%P(X>10) = 1 - P(X<=10)
p = 0;
for i = 0:1:10
    p = p + (15^i)*exp(-15)/factorial(i);
end
disp(1-p)
