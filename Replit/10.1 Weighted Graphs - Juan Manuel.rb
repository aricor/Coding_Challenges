def bfs(matrix, res = [0], node = 0, counter = 0, visited = [])
  counter += 1
  matrix[node].each_with_index do |weight,n|
    if weight > 0
      res[n] = counter if res[n].nil? || res[n] > counter
      bfs(matrix, res, n, counter, visited |= [n]) unless visited.include? n
    end
  end
  res
end
​
def weighted_graphs(matrix)
  bfs(matrix)
end