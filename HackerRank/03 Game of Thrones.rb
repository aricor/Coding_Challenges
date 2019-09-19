def gameOfThrones(s)    
    occurrences = Hash.new 0    
    s.each_char{|x|  occurrences[x] += 1  }
    occurrences.each{|key,value| occurrences[key] = value % 2  }
    return occurrences.values.sum < 2? "YES": "NO" 
end

s = "aaabbbb"
p gameOfThrones(s)
# => YES

s = "cdefghmnopqrstuvw"
p gameOfThrones(s)
# => NO

s = "cdcdcdcdeeeef"
p gameOfThrones(s)
# => YES