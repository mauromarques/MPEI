fileID = fopen('u1.txt','r');
tline = fgetl(fileID);
wordsCounter = 1;
words = {};
while ischar(tline)
    words{wordsCounter} = tline;
    tline = fgetl(fileID);
    wordsCounter = wordsCounter + 1;
end

bf = BloomFilter(8000, 3);
for i = 1:length(words)
    bf = bf.insert(words{i});
end
