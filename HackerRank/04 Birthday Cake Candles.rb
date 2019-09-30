def birthdayCakeCandles(ar)
    max = ar.max
    count = 0
    ar.each{|x|  count += 1 if x == max   }
    count    
end

ar=[3, 2, 1, 3]
p birthdayCakeCandles(ar)