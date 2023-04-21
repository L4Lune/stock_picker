prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(prices)
    buy_sell = []
    
    prices.reduce do |buy_day_value, next_day_value|
        p "buy_day_value: #{buy_day_value}"
        p "next_day_value: #{next_day_value}"
        if buy_day_value == prices.last
            p "This is the last day, you can't buy today!"
        elsif buy_day_value < next_day_value
                buy_day_value = buy_day_value
        else
            buy_day_value = next_day_value
        end
    end
end

stock_picker(prices)