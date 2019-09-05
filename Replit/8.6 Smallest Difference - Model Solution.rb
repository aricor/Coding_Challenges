def smallest_difference(array)
  # write your code here
  numbers = [array[0], array[1]]
  min_dif = (array[0] - array[1]).abs
  
  array.each_with_index do |n1, i|
    array[(i + 1)..-1].each do |n2|
      diff = (n1 - n2).abs
      
      if min_dif > diff
        numbers = [n1, n2]
        min_dif = diff
      end
    end
  end
  
  [numbers.min, numbers.max]
end