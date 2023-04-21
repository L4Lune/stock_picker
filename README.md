# stock_picker

Implement a method that accepts an array of prices and then outputs the best day to buy (day 1)
and the best day to sell (day 2). Buy must occur before sell. 

This method will compare each element of the array against the others and determine if 
the given element is either the lowest point to buy or the highest point to sell.

The logic should look something like this:

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


