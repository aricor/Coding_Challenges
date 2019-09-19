def birthdayCakeCandles(ar)
    max = ar.max    #find the maximum number
    count = 0
    ar.each{|x|
        count += 1 if x == max
    }
    count
    #find how many times that number appears and return that number        
end

ar=[3, 2, 1, 3]
p birthdayCakeCandles(ar)