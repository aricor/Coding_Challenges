# This function takes last element as pivot, places 
# the pivot element at its correct position in sorted 
# array, and places all smaller (smaller than pivot) 
# to left of pivot and all greater elements to right 
# of pivot 
def partition(arr, start, endpoint)
    #puts "low #{low}, high #{high}"
    i = start - 1   # -1   index of smaller element 
    pivot = arr[endpoint] # 5  pivot - last element of the array
    for j in start..endpoint
      # If current element is smaller than the pivot 
      if arr[j] < pivot
        # increment index of smaller element 
        i = i + 1 # => 0
        #puts "i #{i}, j #{j}, arr[i] #{arr[i]}, arr[j] #{arr[j]}"
        arr[i], arr[j] = arr[j], arr[i] # swap elements
      end
    end      
    arr[i + 1], arr[endpoint] = arr[endpoint], arr[i + 1] # here we place the pivot in the correct position
                                                          # so all smaller elements are to the left of pivot
                                                          # and greater elements are to the right of pivot
    return i + 1 
  end
  def advanced_quicksort(arr,start = 0, endpoint = arr.length - 1)
    if start < endpoint
        # pi is partitioning index, arr[p] is now 
        # at right place 
        pivot_index = partition(arr, start, endpoint) 
        puts arr.join(' ') # printing the array for challenge purpose
        # Separately sort elements before 
        # partition and after partition
        #p "pi #{pi}, low #{low}, high #{pi - 1}" 
        advanced_quicksort(arr, start, pivot_index - 1)
        #p "pi #{pi}, low #{pi + 1}, high #{high}" 
        advanced_quicksort(arr, pivot_index + 1, endpoint)
    end
  end 