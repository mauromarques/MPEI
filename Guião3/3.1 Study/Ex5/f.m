t = [0.7 0.2 0.3
     0.2 0.3 0.3
     0.1 0.5 0.4];

% Primeiro dia sol ------------------------
x0 = [1 0 0]';
ssol = 1;
snuvem = 0;
schuva = 0;

for i = 1:1:30
    y = t^i * x0;
    ssol = ssol + y(1);
    snuvem = snuvem + y(2);
    schuva = schuva + y(3);
end

% Primeiro dia chuva ------------------------
x0 = [0 0 1]';
csol = 1;
cnuvem = 0;
cchuva = 0;

for i = 1:1:30
    y = t^i * x0;
    csol = csol + y(1);
    cnuvem = cnuvem + y(2);
    cchuva = cchuva + y(3);
end

disp("1º sol::::");
ssol * 0.1 + snuvem * 0.3 + schuva * 0.5
disp("1º chuva::::");
csol * 0.1 + cnuvem * 0.3 + cchuva * 0.5