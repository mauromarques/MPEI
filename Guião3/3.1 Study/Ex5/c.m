t = [0.7 0.2 0.3
     0.2 0.3 0.3
     0.1 0.5 0.4];

% 1º dia sol -> 2º dia não chuva -> 3º dia não chuva
% prob. de: sol - sol - sol +
%           sol - sol - nuvem + 
%           sol - nuvem - sol +
%           sol - nuvem - nuvem
%
%
%         sol     : 0.7*0.7 = 0.49 ----|
%     sol                              |
%         nuvem   : 0.7*0.2 = 0.14 ----|
% sol                                  |-----> 0.73
%           sol   : 0.2*0.2 = 0.04 ----|
%     nuvem                            |
%           nuvem : 0.2*0.3 = 0.06 ----|