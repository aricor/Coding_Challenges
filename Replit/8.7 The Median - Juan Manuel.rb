def quick_select(arr, left, right, k)
  pivot_index = partition(arr,left,right)
  return arr[pivot_index] if pivot_index == k-1
  return quick_select(arr,left, pivot_index-1, k) if pivot_index > k-1
  return quick_select(arr, pivot_index+1, right, k)
end
​
def partition(arr,left,right)
pivot = arr[right]
current = left
for i in left..right-1
  if arr[i] <= pivot
    arr[i], arr[current] = arr[current], arr[i]
    current += 1
  end
end
arr[current], arr[right] = arr[right], arr[current]
return current
end
​
def median(array)
quick_select(array, 0, array.length-1, (array.length/2)+1)
end