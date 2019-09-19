require 'set'

def anagram(s)
    changes = 0
    if s.length.even?
        s1 = s[0...s.length/2]
        s2 = s[s.length/2..-1]
        h2 = Hash.new(0)
        s2.each_char { |letter| h2[letter] += 1 }
        
        s1.each_char do |item| 
            h2[item] -= 1 if h2.key?(item) && h2[item] > 0
        end
        changes = h2.values.sum
    else
        changes = -1
    end
    changes
end

puts anagram('fdhlvosfpafhalll')
# => 5