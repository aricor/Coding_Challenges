def advanced_quicksort(array)  
    print array
    puts 
    index = sort(array,-1)[1]   
    index = sort(array,index)[1]  
    index = sort(array,index)[1]  
    index = sort(array,index)[1]  
    #index = sort(array,index)[1]
    #index = sort(array,index)[1]
    #array
    #como identifico y como exporto ese indice?
    #como finalizo el flujo?
end

def sort(array,pivot_index)    
    offset = -1    
    pivot = array[pivot_index]
    array[0..-2].each_with_index do |e,index|
        if e < pivot && index != offset + 1           
            array[index],array[offset+1] = array[offset+1],array[index]                        
        end    
        offset += 1 if e < pivot
    end    
    array[pivot_index],array[offset+1] = array[offset+1], array[pivot_index]    
    
    pivot_index = offset
    if offset == 0
        array.each_with_index{|e,i|
            if e < array[i-1] && i != 0
                pivot_index = i
                break
            end
        }
    end
    puts "pivot index: #{pivot_index}"
    print array
    puts

    [array,pivot_index]
end
  
  advanced_quicksort([1, 3, 9, 8, 2, 7, 5])
  # => 1 3 2 5 9 7 8
  #    1 2 3 5 9 7 8
  #    1 2 3 5 7 8 9

  #advanced_quicksort([9, 8, 6, 7, 3, 5, 4, 1, 2])
  # => 1 2 6 7 3 5 4 9 8
  #    1 2 6 7 3 5 4 8 9
  #    1 2 3 4 6 5 7 8 9
  #    1 2 3 4 6 5 7 8 9
  #    1 2 3 4 5 6 7 8 9
  
  #advanced_quicksort([406, 157, 415, 318, 472, 46, 252, 187, 364, 481, 450, 90, 390, 35, 452, 74, 196, 312, 142, 160, 143, 220, 483, 392, 443, 488, 79, 234, 68, 150, 356, 496, 69, 88, 177, 12, 288, 120, 222, 270, 441, 422, 103, 321, 65, 316, 448, 331, 117, 183, 184, 128, 323, 141, 467, 31, 172, 48, 95, 359, 239, 209, 398, 99, 440, 171, 86, 233, 293, 162, 121, 61, 317, 52, 54, 273, 30, 226, 421, 64, 204, 444, 418, 275, 263, 108, 10, 149, 497, 20, 97, 136, 139, 200, 266, 238, 493, 22, 17, 39])
