#https://repl.it/student/submissions/7361263

def weighted_graphs(matrix)
  res = []
  (0...matrix.length).each{|e|
    res << min_stops(matrix,0,e)
  }
  #Check excercise 4.4 Graphs in order to check how to find the occurrence  
  #Check Dijkstra algorithm and try to implement it with an internodal distance of one
  res
end

def min_stops (matrix,start,goal)
  
end

weighted_graphs([
[0, 0, 1, 3, 0, 0],
[0, 0, 0, 5, 0, 0],
[1, 0, 0, 2, 1, 4],
[3, 5, 2, 0, 7, 0],
[0, 0, 1, 7, 0, 2],
[0, 0, 4, 0, 2, 0]]).each{
  |x| print x
  puts
}
# => [0, 2, 1, 1, 2, 2]