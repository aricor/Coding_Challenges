def connected_nodes(matrix, node)
  connected = []
  conections = matrix[node[0]]
  conections.each_with_index do |item, index|
    if item != 0
      connected << [index, item]
    end
  end
  connected
end
​
def matrix_to_graph(matrix, start)
  q = Queue.new 
  visited = []
  graph = { }
  q.push(start)
  while q.length > 0
    p = q.pop
    (visited.include? p) ? next : visited.push(p)
    nodes = connected_nodes(matrix, p)
    graph[p[0]] = nodes
    nodes.each{|x| q.push(x)}
  end
  graph
end
​
def shortest_path(graph,parents = [[0,0]], visited = [], visited_hash = {}, levels = [], cost = 0)
  return levels, visited, visited_hash if parents.length <=0
  #puts parents.join(' ')
  parents.each do |x| 
    if visited_hash[x[0]] == nil
      visited_hash[x[0]] = x[1]
      visited << x
    elsif visited_hash[x[0]] > x[1]
      visited_hash[x[0]] = x[1]
      visited << x
    end
  end
​
  level_nodes = []
  parents.each do |parent|
    parents_level_nodes = graph[parent[0]]
    parents_level_nodes.each do |node| 
      level_nodes.push([node[0], node[1] + parent[1]])
    end
  end
  
  selected_nodes = []
  level_nodes.each do |level_node|
    if visited_hash[level_node[0]] == nil
      selected_nodes << level_node
    elsif visited_hash[level_node[0]] > level_node[1]
      selected_nodes << level_node
    end
  end
  selected_nodes.sort_by!{ |el| [el[0],el[1]] }
​
  
  shortest_path(graph, selected_nodes, visited, visited_hash, levels, cost)
  
end
​
def shortest_path_wg(matrix)
  # write your code here
​
  graph = matrix_to_graph(matrix,[0,0])
  #puts graph
  shortest_path(graph)[2].sort.collect{|x| x[1]}
end