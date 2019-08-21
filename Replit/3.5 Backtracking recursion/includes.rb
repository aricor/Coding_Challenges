i = 0
journey = []
while i<9 do    
    journey.push(i)
    i += 1
end
puts journey
avoid = [3,6]


final_journey = journey - avoid
#print journey