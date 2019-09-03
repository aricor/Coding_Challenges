def greatest_peaks(map)
    peaks = { }
  ​
    for i in 0...map.length
      for j in 0...map[i].length
        current = [i, j]
        peaks[[i, j]] = search_peak(map, current, peaks)
      end
    end
    peaks_count = peaks.values.uniq.map { |e| [e, peaks.values.count(e)] }.to_h
    [peaks_count.values.min, peaks_count.values.max]
  end
  ​
  def search_peak(map, current, peaks)
    neighbors = neighbors_of(map, current[0], current[1])
    maximum = (neighbors.push(current)).max_by do |element|
      map[element.first][element.last]
    end
    # memoization
    # if peaks[maximum] is present, then it is already calculated
    # no need to calculate it again
    return peaks[maximum] if peaks[maximum]
    return current if maximum == current
    
    search_peak(map, maximum, peaks)
  end
  ​
  # helper function
  def neighbors_of(map, row, col)
    neighbors = []
    # returns all neighbors of an element
    # each element can own max four neighbors	
    # a neighbor placed on its top    -> above row -> i - 1
    if row - 1 >= 0
     neighbors << [row - 1,col]
    end
    # a neighbor placed on its bottom -> below row -> i + 1
    if row + 1 < map.length
      neighbors << [row + 1,col]
    end
    # a neighbor placed on its left   -> left column -> j + 1
    if col + 1 < map.length
      neighbors << [row,col + 1]
    end
    # a neighbor placed on its right  -> right column -> j - 1
    if col - 1 >= 0
      neighbors << [row,col - 1]
    end
    
    neighbors
  end