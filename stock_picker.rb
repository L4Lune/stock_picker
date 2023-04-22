require "pry-byebug"
# values = [17,3,6,9,15,8,6,1,10]
values = Array.new(4) { rand(0..20) }

def stock_picker(values)
    buy_sell = []
    p values

    best_delta = 0
    diff = 0

    i = 0
    held_index = 0

    while held_index < (values.length - 1) do
        values.each_with_index.reduce(0) do |diff, (price, i)| 
            if values.index(values[i]) > values.index(values[held_index])
                diff = values[i] - (values[held_index])
                # p "#{values[i]} - #{values[static_index]} = #{diff}"
                if diff > best_delta
                    best_delta = diff
                    buy_price_index = values.find_index(values[held_index])
                    sell_price_index = values.find_index(values[i])
                    buy_sell.replace([buy_price_index, sell_price_index])
                end
            end
        end
        held_index+=1
    end
    p buy_sell
    p "You made $#{best_delta} on this trade!"
end

# binding.pry
stock_picker(values)