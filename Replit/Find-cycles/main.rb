def graph_cycle?(graph)
    print dfs(graph)
  end
  
  def dfs(graph)
    q = Array.new(1, graph.keys.first)
    visited = Array.new  
    until q.empty? ||
        visited.length >= graph.length ||
        graph[node].empty? == true

      node = q.shift #deque
      visited << node unless visited.include?(node)
      children = graph[node].select { |child| !visited.include?(child) }
      q = q.unshift(children).flatten #enque
    end
    visited
end
  
  
  puts graph_cycle?({
    0=>[2], 
    1=>[4], 
    2=>[0, 5, 3], 
    3=>[5, 2], 
    4=>[5, 1], 
    5=>[4, 2, 3]
  })
  # => true
  
  puts graph_cycle?({
    0=>[2], 
    1=>[2], 
    2=>[0, 1, 3, 4, 5], 
    3=>[2], 
    4=>[2]
  })
  # => false
  
  puts graph_cycle?({
    0=>[1, 2],
    1=>[0, 3, 4],
    2=>[0, 5, 6],
    3=>[1],
    4=>[1],
    5=>[2],
    6=>[2]
  })
  # => false
  
  puts graph_cycle?({
    0=>[2],
    1=>[4, 3],
    2=>[0, 5],
    3=>[5, 1],
    4=>[1],
    5=>[2, 3]
  })
  
  # => false
  
  puts graph_cycle?({
    0 => [1],
    1 => [2],
    2 => [3],
    3 => [0]
  })
  
  # => true
  
  puts graph_cycle?({
    0 => [1],
    1 => [2],
    2 => [3],
    3 => [4],
    4 => [5],
    5 => [0],
  })
  
  # => true