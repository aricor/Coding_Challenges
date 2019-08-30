#https://repl.it/student/submissions/7532847

def merge_sort(array1, array2)  
  res = []
  array2[0] < array1[0]? 
    res << array2.shift :
    res << array1.shift while array1.length * array2.length > 1
  res << array1 << array2
  res.flatten
end

p merge_sort([1, 3, 9, 11], [2, 4, 6, 8])
# => [1, 2, 3, 4, 6, 8, 9, 11]

p merge_sort([-3, 2, 2, 2, 4], [-2, 0, 1, 5, 7])
# => [-3, -2, 0, 1, 2, 2, 2, 4, 5, 7]

p merge_sort([21, 32, 45, 62, 71, 83], [1, 3, 4, 7, 9, 12])
# => [1, 3, 4, 7, 9, 12, 21, 32, 45, 62, 71, 83]

p merge_sort([-91, -4, 42, 121, 265, 530], [-623, -54, -7, 651, 721, 850])

# => [-623, -91, -54, -7, -4, 42, 121, 265, 530, 651, 721, 850]