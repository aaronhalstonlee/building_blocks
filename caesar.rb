def caesar(str, cyph)
    str_arr = str.split('')
    str_arr.map{|letter|
        letter.ord
    }.map { |ord|
        if ord < 65 || ord > 122
            ord.chr
        else
            ord > 65 && ord < 97 ?
            ((ord - 65 + cyph)%26 +65).chr :
            ((ord - 97 + cyph)%26 +97).chr
            
        end
    }.join()
end

puts caesar('Hello! What are your name?', 30)