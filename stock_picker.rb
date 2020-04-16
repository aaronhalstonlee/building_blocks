def stock_picker(arr)
    diff = 0
    result = nil
    new_arr = arr.clone

    new_arr.each do |price|
        i = 0
        new_arr = new_arr[new_arr.index(price)..-1]
        while i < new_arr.length
            if (new_arr[i] - price > diff)
                diff = new_arr[i]-price
                result = [arr.index(price), arr.index(new_arr[i])]
                i += 1
            else
                i += 1
            end
        end
    end
    result.to_s
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
puts stock_picker([3,17,6,9,15,8,6,1,10])
