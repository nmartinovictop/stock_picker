# > stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12


def stock_picker(array)

    profit = array[1] - array[0] 
    returned_array = [nil,nil]

    array.each_with_index do |ele,i|

        (i+1...array.length).each do |a|
            if array[a] - array[i] > profit
                profit = array[a] - array[i] 
                returned_array = [i,a]
            end

        end

    end
    returned_array
end





p stock_picker([9,8,7,6,5,4,3,2,1])
#=> [1,4]  # for a profit of $15 - $3 == $12