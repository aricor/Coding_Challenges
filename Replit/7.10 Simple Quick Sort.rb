def simple_quicksort(array)
    return array if array.length < 2
    pivot = array[0]
    left = []
    right = []
    array.each do |e|
        unless e == pivot
            if e > pivot
            right << e
            else
            left << e
            end
        end
    end    
    array = simple_quicksort(left) + [pivot] + simple_quicksort(right)   

end

p simple_quicksort([5, 8, 1, 3, 7, 10, 2])
# => 2 3
#    1 2 3
#    7 8 10
#    1 2 3 5 7 8 10


p simple_quicksort([9, 8, 6, 7, 3, 5, 4, 1, 2])
# => 1 2
# => 4 5 
#1 2 3 4 5\n1 2 3 4 5 6 7\n1 2 3 4 5 6 7 8\n1 2 3 4 5 6 7 8 9\n" to stdout, but output "[1, 2]\n[4, 5]\n[1, 2, 3, 4, 5]\n[1, 2, 3, 4, 5, 6, 7]\n[1, 2, 3, 4, 5, 6, 7, 8]\n[1, 2, 3, 4, 5, 6, 7, 8, 9]\n



p simple_quicksort([406, 157, 415, 318, 472, 46, 252, 187, 364, 481, 450, 90, 390, 35, 452, 74, 196, 312, 142, 160, 143, 220, 483, 392, 443, 488, 79, 234, 68, 150, 356, 496, 69, 88, 177, 12, 288, 120, 222, 270, 441, 422, 103, 321, 65, 316, 448, 331, 117, 183, 184, 128, 323, 141, 467, 31, 172, 48, 95, 359, 239, 209, 398, 99, 440, 171, 86, 233, 293, 162, 121, 61, 317, 52, 54, 273, 30, 226, 421, 64, 204, 444, 418, 275, 263, 108, 10, 149, 497, 20, 97, 136, 139, 200, 266, 238, 493, 22, 17, 39])