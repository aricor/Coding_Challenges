def exact_sum?(k, coins)
    checked = []
    max_checks = (1..coins.length).inject(:*) || 1 # factorial function

    sum(0,k,checked,coins, max_checks)
end

def sum(i,k,checked,coins,max_checks)    
    i = 0
    journey = []
    while i < coins.length do    
        journey.push(i)
        i += 1
    end

    journey = journey - checked
    checked.push(i)

    for i in journey        
        k = k - coins[i]
        return true if k == 0
        return false if checked.length == max_checks || k < 0
        sum(i,k,checked,coins,max_checks)
    end    
    
end
    
puts exact_sum?(12, [1, 2, 3, 4, 5])
# => true

puts exact_sum?(11, [1, 5, 9, 13])
# => false