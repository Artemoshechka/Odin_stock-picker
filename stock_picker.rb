def stock_picker(stock_prices)
  best_value = 0
  best_days = []
  (0...stock_prices.length).each do |buy|
    (buy + 1...stock_prices.length).each do |sell|
      if stock_prices[sell] - stock_prices[buy] > best_value
        best_value = stock_prices[sell] - stock_prices[buy]
        best_days.clear.push(buy, sell)
      end
    end
  end
  best_days
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
