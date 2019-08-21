def connected_graph?(graph)
  flag = false
  graph.each{ |starting_point|
    if bfs(graph,starting_point[0]) != Array(0...graph.length)
      flag = true
      break
    end
  }
  flag
end
  
  #30/07 -> No corren los tests, ni siquiera comentando todo
  
  def bfs(graph, starting_point)
      q = Queue.new()
      q.enq(starting_point)
      visited = [] 
      loop do 
          node = q.deq
          visited.push(node) unless visited.include?(node) 
          graph.values[node].each{ |x| q.enq(x) }
          break if visited.length == graph.length
      end 
      visited
  end  
  
  
  
  puts connected_graph?({
    0 => [2], 
    1 => [4], 
    2 => [0, 5, 3], 
    3 => [5, 2], 
    4 => [5, 1], 
    5 => [4, 2, 3]
  })
  # => true
  
  puts connected_graph?({
    0 => [1, 2], 
    1 => [0, 2], 
    2 => [0, 1, 3, 4, 5], 
    3 => [2, 4], 
    4 => [3, 2], 
    5 => [2]
  })
  # => true