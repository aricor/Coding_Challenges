



def maze_escape(maze,visited=[],x=0,y=0)
  
    # checks if its out of range
    if  x < 0 || y < 0 || x > maze.[x].length || y > maze.length  
      return false
    end
  
    if maze[x][y] == 9
      #add this cell to the visited array
      return visited
    end
    
    return false if maze[x][y]==1 #checks if its a wall
    
    #if all conditions fail, it means the value of the array is zero
    #if it's not zero there is problem outside the scope of this solution
    
    visited.push([x,y]) #add tis cell to the visited array
    
    paths = []
    lengths = []
    
    right = maze_escape(maze,visited,x+=1,y)
    
    unless right == false
      lengths.add(right.length)
      paths.add(right) 
    else
      lengths.add(-1)
    end
    
   
    bottom =  maze_escape(maze,visited,x,y+1)
    unless bottom == false
      lengths.add(bottom.length)
      paths.add(bottom) 
    else
      lengths.add(-1)
    end
  
    left =  maze_escape(maze,visited,x-1,y)
    unless left == false
      lengths.add(left.length)
      paths.add(left) 
    else
      lengths.add(-1)
    end
  
    top =  maze_escape(maze,visited,x,y-1)
    unless top == false
      lengths.add(top.length)
      paths.add(top) 
    else
      lengths.add(-1)
    end
    
    return false if path.empty?
         
    #pick the sortest array, if there are two shortest paths, then return the first one
    lengths = 
    
  end
  
  
  p maze_escape(
    [
      [0, 0, 0, 0, 0], 
      [0, 1, 0, 1, 0], 
      [0, 1, 0, 1, 1], 
      [0, 1, 0, 0, 0], 
      [0, 0, 0, 1, 9]
    ]
  )
  # => [ 
  #      [0, 0],
  #      [1, 0],
  #      [2, 0],
  #      [2, 1],
  #      [2, 2],
  #      [2, 3],
  #      [3, 3],
  #      [4, 3],
  #      [4, 4]
  #    ]
  