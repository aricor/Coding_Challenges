#No pasa los test cases porque demora mucho
def anagram(s)    
    return -1 if s.length % 2 == 1
    half = s.length / 2
    left = s[0..half-1].split("")
    right = s[half..-1].split("")
    res = 0
    left.each_with_index{|e1,i|
        right.each_with_index{ |e2,j|
            if e1 == e2
                left[i]=0
                right[j]=0
                break
            end
        }
    }
    left.delete(0)
    left.length
end

puts anagram('fdhlvosfpafhalll')
# => 5


'fdhlvosf
 pafhalll'