require "pry-byebug"
# values = [17,3,6,9,15,8,6,1,10]
values = Array.new(7) { rand(1...20) }

def stock_picker(values)
    buy_sell = []
    p values

    low_price_index = 0
    high_price_index = 0
    i = 0
    best_delta = 0
    static_index = 0

    while static_index < (values.length - 1) do
        values.each_with_index.reduce(0) do |diff, (price, i)| 
            # binding.pry
            if values.index(values[i]) > values.index(values[static_index])
                diff = values[i] - (values[static_index])
                p "#{values[i]} - #{values[static_index]} = #{diff}"
                if diff < 0
                    p "Bad day at the stock market"
                elsif diff > best_delta
                    best_delta = diff
                    low_price_index = values.find_index(values[static_index])
                    high_price_index = values.find_index(values[i])
                    p "lpi : #{low_price_index}"
                    p "hpi : #{high_price_index}"
                    buy_sell.replace([low_price_index, high_price_index])
                end
            end
        end
        static_index+=1
    end
    p buy_sell
    p "You made $#{best_delta} on this trade!"
end

stock_picker(values)