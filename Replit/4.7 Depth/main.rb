
def funcion(length)    
    result = (Math.log(length)+1).floor
    puts "#{length} => #{result}"
end

for element in 1..20
    funcion(element)
end



