def transpose(string)
    while flag
        flag = false
        for i in 0..string.length
            if string[i] == 'g' && string[i+1] == 'n'
                string[i] = 'n'
                string[i+1] = 'g'
                flag = true
            end
        end
    end
    puts string
end

puts transpose('he was searchign on Bign for signign kigns')
# => he was searching on Bing for singing kings


puts transpose('rignadingdiggn!')
# => ringadingdingg!


puts transpose('gngngnnggnngggnnn')








# => nnnnnnnnngggggggg