def index_match(array, start = 0, finish = array.length)
    half = ((finish + start) / 2).floor
    return half if array[half] == half
    return -1 if start == finish || start == half
    array[half] > half ? index_match(array,start,half) :
                         index_match(array,half,finish)
  end
  