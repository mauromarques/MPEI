facesDoDado = 1:6;
x = 1:6;
y = 1:6;

%Função massa: f(x) = P(X = x)

for face = facesDoDado
    y(face) = 1/6;
end

plot(x,y)