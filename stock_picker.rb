# > stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12


def stock_picker(stock_array)

  buy_day = 0
  sell_day = 0
  profit = 0

  (0...stock_array.length).each do |buy_test|
    (buy_test...stock_array.length).each do |sell_test|
      potential_profit = stock_array[sell_test] - stock_array[buy_test]


      if potential_profit > profit
        buy_day = buy_test
        sell_day = sell_test
        profit = potential_profit
      end

    end
  end

  [buy_day,sell_day]

end



p stock_picker([17,3,6,9,15,8,6,1,10])