require "pry-byebug"
# values = [17,3,6,9,15,8,6,1,10]
values = Array.new(4) { rand(0..20) }

def stock_picker(values)
    buy_sell = []
    p values

    best_delta = 0
    diff = 0

    i = 0
    static_index = 0

    while static_index < (values.length - 1) do
        values.each_with_index.reduce(0) do |diff, (price, i)| 
            if values.index(values[i]) > values.index(values[static_index])
                diff = values[i] - (values[static_index])
                # p "#{values[i]} - #{values[static_index]} = #{diff}"
                if diff > best_delta
                    best_delta = diff
                    buy_price_index = values.find_index(values[static_index])
                    sell_price_index = values.find_index(values[i])
                    buy_sell.replace([buy_price_index, sell_price_index])
                end
            end
        end
        static_index+=1
    end
    p buy_sell
    p "You made $#{best_delta} on this trade!"
end

# binding.pry
stock_picker(values)