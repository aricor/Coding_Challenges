#https://repl.it/student/submissions/7532837
#https://microverse.pathwright.com/library/fast-track-algorithms-data-structures/69123/path/step/55144808/

def full_merge_sort array 
    aux = [] 
    sorted =  merge_sort(array) 
    sorted.each_with_index{ |e,i|
        
        aux << e
        
        if(e[0] != sorted[i-1][0] && i != 0)
            aux[0..-2].each_with_index{ |e2,j|
                sorted[i-1-j] = aux[j]
            }
            aux = []
        end
    }
    sorted
end

def merge_sort(array)
    return [[array[0].split(' ')[0].to_i,array[0].split(' ')[1]]] if array.length < 2                
   
    left = merge_sort(array[0..array.length/2-1])  

    right = merge_sort(array[array.length/2..array.length])   

    res = []
    left[0][0] < right[0][0]? 
        res << left.shift :
        res << right.shift while left.length * right.length != 0
    res.concat(left).concat(right) 
end

#array = [0, 6, 0, 6, 4, 0, 6, 88, 99, 5, 6 , 0 , 4 , 3 , 0 , 1 , 5 , 1 , 2 , 4 , 2 , 4 ]
array = ["0 ab", "6 cd", "0 ef", "6 gh", "4 ij", "0 ab", "6 cd", "0 ef", "6 gh", "0 ij", "4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"]
p full_merge_sort(array)
# => ["ab", "ef", "ab", "ef", "ij", "to", "be", "or", "not", "to", "be", "ij", "that", "is", "the", "question", "cd", "gh", "cd", "gh"]
  