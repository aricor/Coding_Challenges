def move(start, goal)
    aux = 3 if( (start == 2 || goal == 2) && (goal == 1 || start == 1) )
    aux = 2 if( (start == 3 || goal == 3) && (goal == 1 || start == 1) )
    aux = 1 if( (start == 3 || goal == 3) && (goal == 2 || start == 2) )
    toh(2,start, aux, goal)
  end
  
  def toh(n, start, aux, goal)
    if n > 1
      toh(n-1, start, goal, aux)
      toh(1, start, aux, goal)
      toh(n-1, aux, start, goal)
    else
      print "#{start} -> #{goal} "
    end
    
  end
  
  puts move(1, 3)
  # => 1->2 1->3 2->3
  
  puts move(2, 3)
  # => 2->1 2->3 1->3