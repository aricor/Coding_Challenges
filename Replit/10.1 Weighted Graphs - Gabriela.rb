#https://repl.it/student/submissions/7946382

require 'set'
​
def weighted_graphs(matrix)
  stops = [0]
  (1...matrix.length).each do |number|
    stops << bfs(matrix, number).length - 1
  end
  stops
end
​
def bfs(matrix, goal)
  visited = [false] * matrix.length
  q = Queue.new
  node = goal
  bfs = Set.new([node])
  
  q.enq(node)
  visited[node] = true
  # while queue is not empty
  while !q.empty?
  node = q.deq
   
    matrix[node].each_with_index do |adjacent, index|
      if adjacent > 0
        bfs << node
        if index == 0
          bfs << index
          return bfs
        end
        if visited[index] == false
          q.enq(index)
          visited[index] = true
        end
      end
    end 
  end
end