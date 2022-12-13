function [output] = gerarChaves(nChaves,iMin, iMax, chars, probs)
    output = cell(1, nChaves);

    if nargin == 4
        innerProbs = ones(1,width(chars))/width(chars);
    else
        innerProbs = probs;
    end

    for i = 1:1:nChaves
        add = 0;
        while add == 0
            nChars = randi([iMin, iMax]);
            chaveGerada = [];
            for j = 1:1:nChars
                % Choose the char-------
                U=rand();
                k = 1 + sum(U > cumsum(innerProbs)); 
                c = chars(k);
                % ----------------------
                rand(1);
                chaveGerada(j) = c;
            end
            add = 1;
            for j = 1:1:i-1
                if strlength(output{j}) == strlength(char(chaveGerada))
                    if output{j} == char(chaveGerada)
                        add = 0;
                    end
                end
            end
    
            if add == 1
                output{i} = char(chaveGerada);
                disp(i)
            end
        end
    end
end