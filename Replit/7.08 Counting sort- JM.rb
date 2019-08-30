def full_counting_sort_juan(array)
  helper = []
  array.each do |item|
    helper[item.to_i].nil? ? helper[item.to_i] = [item.split(' ')[1]] :  
                             helper[item.to_i] << item.split(' ')[1]
  end
  helper.flatten
end