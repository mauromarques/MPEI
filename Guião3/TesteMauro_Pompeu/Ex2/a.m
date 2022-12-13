l = load('L.mat')

size(l.L)
somas = sum(l.L);
deadEnds = find(~somas)
