def custom_dijkstra(matrix, res = [0], node = 0, counter = 0, visited = [])
  matrix[node].each_with_index do |weight,n|
    if weight > 0
      aux = counter + weight
      res[n] = aux if res[n].nil? || res[n] > aux
      custom_dijkstra(matrix, res, n, res[n], visited |= [n]) unless visited.include? n
    end
  end
  res
end
​
def shortest_path_wg(matrix)
  custom_dijkstra(matrix)
end
