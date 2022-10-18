facesDoDado = 1:6;
x = 1:6;
y1 = zeros(1,6);
y2 = zeros(1,6);

%Função massa: f(x) = P(X = x)
for face = facesDoDado
    y1(face) = 1/6;
end

%Função distribuição acumulada: f(x) = P(X <= x)
for face = facesDoDado
    for i = 1:1:face
        y2(face) = 1/6 + y2(face);
    end
end

subplot(1,2,1);
stairs(x,y1);
subplot(1,2,2);
stairs(x,y2);