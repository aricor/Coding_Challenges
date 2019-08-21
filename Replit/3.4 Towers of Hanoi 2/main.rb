def hanoi_steps(n)
    toh(n,1, 2, 3)
  end
  
  def toh(n, start, aux, goal)
    if n > 1
      toh(n-1, start, goal, aux)
      toh(1, start, aux, goal)
      toh(n-1, aux, start, goal)
    else
      puts "#{start} -> #{goal} "
    end
    
  end
puts "Two disks"
hanoi_steps(2)
# => 1->2 
#    1->3 
#    2->3

puts "Three disks"
hanoi_steps(3)
# => 1->3 
#    1->2
#    3->2
#    1->3
#    2->1
#    2->3
#    1->3

puts "4 disks"
hanoi_steps(4)
# => 1->2
#    1->3
#    2->3
#    1->2
#    3->1
#    3->2
#    1->2
#    1->3
#    2->3
#    2->1
#    3->1
#    2->3
#    1->2
#    1->3
#    2->3