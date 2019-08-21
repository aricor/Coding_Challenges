def depth_first_search(graph)
    stack = Stack.new()
    visited = [0]
    node=0
    until stack.empty?
      #popeo del stack un elemento que no haya sido visitado
      node = stack.pop

      #guardo el valor del nodo si el nodo no ha sido visitado
      visited = 

      #stackeo sus hijos
      for child in children

      end
      children = graph[node].select { |child| !visited.include?(child) }      

      #guardo los hijos en sentido contrario 



      visited << node unless visited.include?(node)
      children = graph[node].select { |child| !visited.include?(child) }
      q = q.unshift(children).flatten
    end
    visited
end


  p depth_first_search({
    0 => [2], 
    1 => [4], 
    2 => [5, 0, 3], 
    3 => [2], 
    4 => [1, 5], 
    5 => [4, 2]
  })
  # => [0, 2, 5, 4, 1, 3]

  p depth_first_search({
      0=>[1, 2], 
      1=>[0, 2], 
      2=>[0, 1, 3, 4, 5], 
      3=>[2, 4], 
      4=>[3, 2], 
      5=>[2]
    })

# => [0, 1, 2, 3, 4, 5]

p depth_first_search({
    0=>[1, 2], 
    1=>[0, 3, 4], 
    2=>[0, 5, 6], 
    3=>[1], 
    4=>[1], 
    5=>[2], 
    6=>[2]
})
# => [0, 1, 3, 4, 2, 5, 6]

p depth_first_search({
    0=>[1, 2], 
    1=>[0, 3, 4], 
    2=>[0, 5, 6], 
    3=>[1], 
    4=>[1, 5], 
    5=>[2, 4], 
    6=>[2]
})

# => [0, 1, 3, 4, 5, 2, 6]