def sum(number)
    if number == 0
      0
    else
      number + sum(number-1)
    end
  end
  
puts sum(4)
puts sum(10)