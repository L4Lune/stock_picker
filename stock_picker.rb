values = [17,3,6,9,15,8,6,1,10]

def stock_picker(values)
    buy_sell = []
    
    values[0..-2].reduce { |lowest, price| lowest.nil? || price < lowest ? price : lowest }
        values[lowest.find_index..-1].reduce(lowest) do |acc, high_price|
            acc << [lowest.find_index, high_price - lowest]
        end
    end

end

stock_picker(prices)