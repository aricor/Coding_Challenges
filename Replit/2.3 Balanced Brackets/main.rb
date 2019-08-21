def balanced_brackets?(string)
    st = []
    b = 0
    for i in 0...string.length
        l = string[i]   

        if(l == '{' || l == '(' || l == '[')
            st.push(l) 
            b += 1
        end

        #<comment> if you can make this code cleaner, please @ivanderlich.com
        #maybe a procedure or a block
        if(l == ']')
            if (st[-1] != '[')
                return false         
            else
                b -= 1
                st.pop
            end 
        end

        if(l == '}')
            if (st[-1] != '{')
                return false         
            else
                b -= 1
                st.pop
            end 
        end

        if(l == ')')
            if (st[-1] != '(')
                return false         
            else
                b -= 1
                st.pop
            end 
        end
        #</comment>
                     
        
    end
    
    return false if( b != 0)        
    return true    
end

  
puts balanced_brackets?('(hello)[world]')
# => true

puts balanced_brackets?('([)]')
# => false

puts balanced_brackets?('[({}{}{})([])]')
# => true