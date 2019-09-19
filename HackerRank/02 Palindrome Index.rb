def palindromeIndex(s)    
    s = s.split("")
    inv = s.reverse
    return -1 if inv == s 
    half = s.length / 2
    half -= 1 if half%2 != 2
    index = 0
    s[0..half].each_with_index{ |e,i|
        if s[i] != s[s.length - i - 1]
            index = s.length - i - 1
        end
    }
    index    
end

s="aaab"
p palindromeIndex(s)

s="baa"
p palindromeIndex(s)

s="aaa"
p palindromeIndex(s)

s="sasssa7"
p palindromeIndex(s)


