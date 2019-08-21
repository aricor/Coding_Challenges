#mop 2
#https://opendsa-server.cs.vt.edu/ODSA/Books/Everything/html/CompleteTree.html

#mop 2
#https://opendsa-server.cs.vt.edu/ODSA/Books/Everything/html/CompleteTree.html

def search_tree?(tree, i=0, parent=nil)

    present = tree[i]
    return true if present == nil || present == 0

    left_child_index = 2 * i + 1 
    left_child = tree[left_child_index]

    right_child_index = 2 * i + 2 
    right_child = tree[right_child_index]

    return true if (left_child == nil || left_child == 0) && (right_child == nil || right_child == 0)

    condition1 = condition2 = condition3 = condition4 = condition5 = true

    condition1 = left_child < right_child unless left_child == nil || right_child == nil
    condition2 = left_child < present unless left_child == nil 
    condition3 = right_child > present unless right_child == nil

    unless parent == nil
      #parent is left child
      condition4 = right_child < parent unless right_child == nil || right_child == 0 || i%2 == 0 
      #parent is right child
      condition5 = left_child > parent unless left_child == nil || left_child == 0 ||i%2 == 1        
    end

    conditions = 
        condition1 && 
        condition2 && 
        condition3 && 
        condition4 && 
        condition5 && 
        search_tree?(tree,left_child_index,present) && 
        search_tree?(tree,right_child_index,present)       

    return conditions
      
  end
  
  puts "[20, 10, 27, 5, 14, 23, 30]"
  puts search_tree?([20, 10, 27, 5, 14, 23, 30])  
  puts "---Expected true"

  puts "[21, 11, 26, 5, 14, 23, 30, 2, 8, 13, 16, 0, 0, 0, 0]"
  puts search_tree?([21, 11, 26, 5, 14, 23, 30, 2, 8, 13, 16, 0, 0, 0, 0])  
  puts "---Expected true"

  puts "[19, 9, 26, 4, 13, 17, 29]"
  puts search_tree?([19, 9, 26, 4, 13, 17, 29])  
  puts "---Expected false"

  # puts "[10, 4, 12]"
  # puts search_tree?([10, 4, 12]) 
  # puts "---Expected true"
  
  # puts "[10, 5, 7]"
  # puts search_tree?([10, 5, 7])
  # puts "---Expected false"