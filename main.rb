require 'pry-byebug'

stocks = [17,3,6,9,15,8,6,1,10]


def stock_picker(prices)
    avg = 0
    profit = 0
    current_stock = 0
    prices_sorted = prices.sort
    if prices_sorted[prices_sorted.length] == prices[0]
        prices.shift()
    elsif prices_sorted[0] == prices[prices.length]
        prices.pop()
    end
    for price in prices do
        unless prices.find_index(price) == 0
            avg += price / prices.find_index(price)
        else
            avg = price
        end
        if price < avg 
            current_stock = price
        elsif current_stock < price && price >= (avg + 1)
            profit += (price - current_stock)
            current_stock = 0
        else 
            next
        end
    end
end
            
