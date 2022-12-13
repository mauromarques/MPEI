% Read strings from file line by line
fileID = fopen('u1.txt','r');
tline = fgetl(fileID);
wordsCounter = 1;
words = {};
while ischar(tline)
    words{wordsCounter} = tline;
    tline = fgetl(fileID);
    wordsCounter = wordsCounter + 1;
end

% Inserts words into bloom filter
bf = BloomFilter(8000, 3);
for i = 1:length(words)
    bf = bf.insert(words{i});
end

% verifies false negatives (if unique is 1, everything is fine)
checking = [];
for i = 1:length(words)
    checking(i) = bf.exists(words{i});
end
unique(checking)