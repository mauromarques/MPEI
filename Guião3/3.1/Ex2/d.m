x = [1/3 1/3 1/3]';
T = [1/3 1/4   0
     1/3 11/20 1/2
     1/3 1/5   1/2];
x30 = (T^30)*x;
x30 = x30*90;
x30 = round(x30,0);
fprintf('O grupo A contem %d alunos\nO grupo B contem %d alunos\nO grupo C contem %d alunos\n\n', x30);

