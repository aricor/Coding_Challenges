def smallest_difference(array)
    # write your code here
    array = array.sort
    diffs = []
    array[1..-1].each_with_index{|e,i|
      diff = (array[i] - array[i-1]).abs
      diffs << diff
    }  
    index = diffs.rindex(diffs.min)
    [array[index], array[index-1]]
end
  
p smallest_difference([-20, -3916237, -357920, -3620601, 7374819, -7330761, 30, 6246457, -6461594, 266854])
# => [-20, 30]