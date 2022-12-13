classdef BloomFilter
    properties
        n=0
        k=0
        bits=[]
        nElements=0
    end
    methods

        % INIT ------------------------
        function obj = BloomFilter(nInput, kInput)
            obj.n = nInput;
            obj.k = kInput;
            obj.bits = zeros(1, nInput);
        end
        
        % INSERT -----------------------
        function obj = insert(obj, toInsert)
            for i = 1 : obj.k
                hash = string2hash(toInsert);
                idx = abs(mod((hash * i), obj.n))+1;
                obj.bits(idx) = true;
            end
            obj.nElements = obj.nElements + 1;
        end

        % EXISTS -----------------------
        function returnValue = exists(obj, toCheck)
            returnValue = true;
            for i = 1:obj.k
                hash = string2hash(toCheck);
                idx = abs(mod((hash*i), obj.n))+1;
                returnValue = obj.bits(idx) && returnValue;
            end
        end
    end
end
