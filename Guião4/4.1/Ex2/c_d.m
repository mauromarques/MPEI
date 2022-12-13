load keys

% - Cada chaining table é um array de tamanho 5.10^5 (ou outros)
% - Pegar em cada chave e passar pela hash function
% - Depois colocar o hash entre 1 e maxIndex do array
% - Colocar a chave neste array na posição dada pelo hashs 
%   depois de ser posto entre 1 e maxIndex.

tableSizes = [5e5, 1e6, 2e6];

fprintf('DJB31MA ------------------\n');
for j = 1 : length(tableSizes)
    cont = 0;
    vectorTableS = zeros(1, tableSizes(j));
    hashCodes = zeros(1, length(keys));
    tic
    for i = 1 : length(keys)
        hashCodes(i) = mod(DJB31MA(keys{i}, 127), length(vectorTableS)) + 1;
        vectorTableS(hashCodes(i)) = vectorTableS(hashCodes(i)) + 1;
    end
    fprintf('Doing for size of table: %d\n', tableSizes(j));
    % Keeping track of the number of times a position is attributed
    mapKeys = {};
    mapValues = [];
    mapCounter = 1;
    collisions = 0;
    for i = 1:tableSizes(j)
        if vectorTableS(i) > 0
            mapKeys{mapCounter} = i;
            mapValues(mapCounter) = vectorTableS(i);
            mapCounter = mapCounter + 1;
        end
        if vectorTableS(i) > 1
            collisions = collisions + 1;
        end
    end
    timesPositionAttributed = containers.Map(mapKeys, mapValues);
    fprintf('  Collisions: %d\n', collisions);
    fprintf('  Time: %f\n', toc);
end

fprintf('\n');
fprintf('hashstring ------------------\n');
for j = 1 : length(tableSizes)
    cont = 0;
    vectorTableS = zeros(1, tableSizes(j));
    hashCodes = zeros(1, length(keys));
    tic
    for i = 1 : length(keys)
        hashCodes(i) = mod(hashstring(keys{i}, length(vectorTableS)), length(vectorTableS)) + 1;
        vectorTableS(hashCodes(i)) = vectorTableS(hashCodes(i)) + 1;
    end
    fprintf('Doing for size of table: %d\n', tableSizes(j));
    % Keeping track of the number of times a position is attributed
    mapKeys = {};
    mapValues = [];
    mapCounter = 1;
    collisions = 0;
    for i = 1:tableSizes(j)
        if vectorTableS(i) > 0
            mapKeys{mapCounter} = i;
            mapValues(mapCounter) = vectorTableS(i);
            mapCounter = mapCounter + 1;
        end
        if vectorTableS(i) > 1
            collisions = collisions + 1;
        end
    end
    timesPositionAttributed = containers.Map(mapKeys, mapValues);
    fprintf('  Collisions: %d\n', collisions);
    fprintf('  Time: %f\n', toc);
end

fprintf('\n');
fprintf('string2hash ------------------\n');
for j = 1 : length(tableSizes)
    cont = 0;
    vectorTableS = zeros(1, tableSizes(j));
    hashCodes = zeros(1, length(keys));
    tic
    for i = 1 : length(keys)
        hashCodes(i) = mod(string2hash(keys{i}), length(vectorTableS)) + 1;
        vectorTableS(hashCodes(i)) = vectorTableS(hashCodes(i)) + 1;
    end
    fprintf('Doing for size of table: %d\n', tableSizes(j));
    % Keeping track of the number of times a position is attributed
    mapKeys = {};
    mapValues = [];
    mapCounter = 1;
    collisions = 0;
    for i = 1:tableSizes(j)
        if vectorTableS(i) > 0
            mapKeys{mapCounter} = i;
            mapValues(mapCounter) = vectorTableS(i);
            mapCounter = mapCounter + 1;
        end
        if vectorTableS(i) > 1
            collisions = collisions + 1;
        end
    end
    timesPositionAttributed = containers.Map(mapKeys, mapValues);
    fprintf('  Collisions: %d\n', collisions);
    fprintf('  Time: %f\n', toc);
end

fprintf('\n');
fprintf('string2hash SDBM ------------------\n');
for j = 1 : length(tableSizes)
    cont = 0;
    vectorTableS = zeros(1, tableSizes(j));
    hashCodes = zeros(1, length(keys));
    tic
    for i = 1 : length(keys)
        hashCodes(i) = mod(string2hash(keys{i}, "sdbm"), length(vectorTableS)) + 1;
        vectorTableS(hashCodes(i)) = vectorTableS(hashCodes(i)) + 1;
    end
    fprintf('Doing for size of table: %d\n', tableSizes(j));
    % Keeping track of the number of times a position is attributed
    mapKeys = {};
    mapValues = [];
    mapCounter = 1;
    collisions = 0;
    for i = 1:tableSizes(j)
        if vectorTableS(i) > 0
            mapKeys{mapCounter} = i;
            mapValues(mapCounter) = vectorTableS(i);
            mapCounter = mapCounter + 1;
        end
        if vectorTableS(i) > 1
            collisions = collisions + 1;
        end
    end
    timesPositionAttributed = containers.Map(mapKeys, mapValues);
    fprintf('  Collisions: %d\n', collisions);
    fprintf('  Time: %f\n', toc);
end

