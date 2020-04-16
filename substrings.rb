dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dict)
    result = {}
    freq = 0
    arr = []
    if word.class == String
        word = word.split(' ')
    end
    
    word.each do |str|
        if arr.include?(str)
            result[str]+=1
        else
            arr.push(str)
            result[str] = 1
        end
    end
    result
end

puts substrings('below going go below part', dictionary)