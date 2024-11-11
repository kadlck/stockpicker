def stock_picker(array)
  max_profit = 0
  best_days = []
  array.each_with_index {|buyDay, index1|
  array.each_with_index{ |sellDay, index2|
    if (sellDay - buyDay) > max_profit
      if index1 > index2
      else
      max_profit = (sellDay - buyDay)
      best_days = [index1, index2]
      end
    end
    }
  }
  puts(best_days)
end

stock_picker([17,3,6,9,15,8,6,1,10])