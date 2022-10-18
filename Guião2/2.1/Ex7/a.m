%Erradooooooooooooooooooo------------------------

Exp = 100000;
pA = 0.01;
pB = 0.05;
pC = 0.001;

mA = rand(20,Exp) < pA;
mB = rand(30,Exp) < pB;
mC = rand(50,Exp) < pC;

probA = 0;
probB = 0;
probC = 0;

total = [mA; mB; mC];

for i = 1:1:Exp
    coluna = total(:,i);
    countA = 0;
    countB = 0;
    countC = 0;
    for j = 1:1:100
        if coluna(j,1) == true
            if j > 50
                countC = countC + 1;
            elseif j > 20
                countB = countB + 1;
            else 
                countA = countA + 1;
            end
        end
    end
    probA = countA/100 + (probA);
    probB = countB/100 + (probB);
    probC = countC/100 + (probC);
end

probA = probA / Exp;
probB = probB / Exp;
probC = probC / Exp;

disp("Andre")
disp(probA);
disp("Bruno")
disp(probB);
disp("Carlos")
disp(probC);