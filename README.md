# stock_picker

Implement a method that accepts an array of prices and then outputs the best day to buy (day 1)
and the best day to sell (day 2). Buy must occur before sell. 

This method will compare each element of the array against the others and determine if 
the given element is either the lowest point to buy and the highest point to sell.

The logic should look something like this:
I think that this should be accomplished using nested reduce statements (god help me)
1. We will determine the lowest position of the array to buy
    values[0..-2].reduce { |lowest, price| lowest.nil? || price < lowest ? price : lowest }
    The range provided will prevent the last day from becoming the buy date.
2. Then in the next reduce statement we will take those values and subtract them from the values in the array.
3. We will need to specify the range to be no further left than the current lowest value in the array that is being subtracted
    values[lowest..-1].reduce { |diff, price| price - diff > diff ? diff : ???}
    This reduce statement makes no sense but its a work in progress.
4. Might need to switch the reduce statements to make this work the way I want it to.
Might need to have the difference reduce statement be first and feed the return of the lowest value finding reduce to it.
5. 


values[lowest..-1].reduce {|values[0..-2].reduce { |lowest, price| lowest.nil? || price < lowest ? price : lowest }, high_price| high_price - first_reduce_return > first_reduce_return ? buy_sell << [first_reduce_return.find_index, high_price.find_index] }