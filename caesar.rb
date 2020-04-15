def caesar(str, cyph)
    alph = ('a'..'z').to_a
    split = str.split('')
    nums = split.map { |el|
        if (alph.index(el) + cyph <= 26)
            alph.index(el) + cyph
        else
            (alph.index(el) + cyph) - 26
        end
    }

    return nums.map { |el|
        alph[el]
    }.join('')
end

puts caesar('hello', 1)

puts caesar('ifmmp', -1)