def balanced_tree?(array_tree,index=0,depth=0)        
    return depth if array_tree[index] == 0 || array_tree[index] == nil
    left_depth = balanced_tree?(array_tree, 2 * index + 1,depth+1)
    right_depth = balanced_tree?(array_tree, 2 * index + 2,depth+1)    
    return false if left_depth == false || right_depth == false || (left_depth - right_depth).abs > 1    
    index == 0 ? true : [left_depth,right_depth].max    
end       

  puts balanced_tree?([1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 0, 0, 10, 0, 0])
                    #  0  1  2  3  4  5  6  7  8  9  10 11 12
  #                    0  1  1  2  2  3  3  4  4  5  5  6  6   7  7
  puts "---Expected true"  

  puts balanced_tree?([1, 2, 0, 3, 4, 0, 0])
  puts "---Expected false"
  
  puts balanced_tree?([1, 2, 3, 4, 5, 6, 7])
  puts "---Expected true"

  puts balanced_tree?([1, 0, 2])
  puts "---Expected true"

  puts balanced_tree?([1, 2, 3, 4, 5, 0, 0])
  puts "---Expected true"



