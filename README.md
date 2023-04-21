# stock_picker

Implement a method that accepts an array of prices and then outputs the best day to buy (day 1)
and the best day to sell (day 2). Buy must occur before sell. 

This method will compare each element of the array against the others and determine if 
the given element is either the lowest point to buy and the highest point to sell.

The logic should look something like this:
I think that this should be accomplished using nested reduce statements (god help me)
1. We will determine the lowest position of the array to buy
    values[0..-2].reduce { |lowest, price| lowest.nil? || price < lowest ? price : lowest }
2. Then in the next reduce statement we will take those values and subtract them from the values in the array.
3. We will need to specify the range to be no further left than the current lowest value in the array that is being subtracted
    price[lowest..-1].reduce
4. 
5. 



BUY:
1. Is day zero less than day 1? If so, keep day 0 and compare against day 2 until day n. 
2. If the lowest day is at index -1, find the next lowest day that is not day at index -1. This edge case will keep the 
method from logically working properly because you cannot buy at the last day and sell after that. You have reached the end. 

    prices.reduce do |buy_day_value, next_day_value|
        if buy_day_value < next_day_value
            buy_day_value = buy_day_value
        elsif
            buy_day_value = next_day_value
        else
            buy_day_value == prices.last
                buy_day_value = next greatest value
            end
        end

SELL:
1. Which day holds the greatest value? Does it occur after the buy day? If yes, push to array, if no find the second greatest value
and see if it occurs after the buy day until the greatest value is found after the buy date.


This might work with two reduce functions in the body of the program and have the first be the buy condition and the second the sell condition.


