values = [17,3,6,9,15,8,6,1,10]

def stock_picker(values)
    buy_sell = []
    
    values[0..-2].reduce { |lowest, price| lowest.nil? || price < lowest ? price : lowest }
        values[lowest.find_index..-1].reduce(lowest) do |acc, high_price|
            if (high_price - acc) > acc
            buy_sell << [lowest.find_index, high_price.find_index]
        end
    end

end

stock_picker(values)