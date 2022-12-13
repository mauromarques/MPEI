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

% Read strings from ANOTHER file line by line
fileID2 = fopen('u2.txt','r');
tline2 = fgetl(fileID2);
wordsCounter2 = 1;
words2 = {};
while ischar(tline2)
    words2{wordsCounter2} = tline2;
    tline2 = fgetl(fileID2);
    wordsCounter2 = wordsCounter2 + 1;
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

% verifies false negatives (if unique is 1, everything is fine)
checking = [];
for i = 1:length(words)
    checking(i) = bf.exists(words{i});
end
unique(checking)

% verifies false positives
trueCount = 0;
for i = 1:length(words2)
    if bf.exists(words2{i}) == true
       trueCount = trueCount + 1;
    end
end
trueCount/length(words2)*100