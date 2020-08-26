def stock_picker(stocks)
    choice = [0,0]
    profit = 0

    (stocks.length - 1).times do |buy|
        (buy + 1).upto(stocks.length - 1) do |sell|
            diff = stocks[sell] - stocks[buy]
            if diff > profit
                profit = diff
                choice = [buy, sell]
            end
        end    
    end
    choice
end

s = [3,6,9,15,8,6,1,10]

puts stock_picker(s)