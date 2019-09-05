#https://www.tutorialspoint.com/data_structures_algorithms/images/quick_sort_partition_animation.gif

def partition(arr, start, endpoint, swap = 0)
    i = start - 1
    pivot = arr[endpoint]
    for j in start..endpoint
      if arr[j] < pivot
        i = i + 1 # => 0
        arr[i], arr[j] = arr[j], arr[i] # swap elements
        swap += 1
      end
    end
    swap += 1
    arr[i + 1], arr[endpoint] = arr[endpoint], arr[i + 1]
    return [i + 1,swap]
  end
  ​
  def advanced_quicksort(arr,start = 0, endpoint = arr.length - 1, swaps=0)
    array = arr.clone
    if start < endpoint
        res = partition(array, start, endpoint)
        pivot_index = res[0]
        swaps += res[1]
        swaps += advanced_quicksort(array, start, pivot_index - 1)
        swaps += advanced_quicksort(array, pivot_index + 1, endpoint)
    end
    return swaps
  end
  ​
  def insertion_sort(array, swaps = 0)
    sorted = array.clone
    for j in (1...sorted.length)
      x = sorted[j]
      i = j
      while i > 0 && sorted[i-1] > x
        sorted[i] = sorted[i-1]
        sorted[i-1] = x
        swaps += 1
        i -= 1
      end
    end
    swaps
  end
  ​
  def quicksort_running_time(array)
    insertion_sort(array) - advanced_quicksort(array)
  end