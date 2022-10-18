exp = 100000;
p= logspace(-3,log10(1/2),100);

probs2 = zeros(1,100);
for i = 1:1:100
    n2 = 0;
    motor2 = rand(2,exp) <= p(1,i);
    motor2 = sum(motor2);
    for j = 1:1:exp
        n_falhas = motor2(1,j);
        if n_falhas >= 2
            n2 = n2 + 1;
        end
    end
    probs2(1,i) = n2/exp;
end

probs4 = zeros(1,100);
for i = 1:1:100
    n4 = 0;
    motor4 = rand(4,exp) <= p(1,i);
    motor4 = sum(motor4);
    for j = 1:1:exp
        n_falhas = motor4(1,j);
        if n_falhas >= 3
            n4 = n4 + 1;
        end
    end
    probs4(1,i) = n4/exp;
end

probs2 = [0 probs2 0];
probs4 = [0 probs4 0];
p = [0 p 0.51];
plot(p, probs2)
hold on
plot(p, probs4)