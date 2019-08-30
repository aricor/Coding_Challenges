#Codigo de gabriela
def simple_quicksort(array)
    partition(array)
  end
  def partition(array)
    return array if array.length <= 1
    pivot = array.first
    left = []
    right = []
    array.each do |item|
      unless item == pivot
        item < pivot ? left << item : right << item
      end
    end
    arr = partition(left) + [pivot] + partition(right)
    puts arr.join(' ')
    arr
  end