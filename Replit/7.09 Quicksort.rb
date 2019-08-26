#https://microverse.pathwright.com/library/fast-track-algorithms-data-structures/69123/path/step/55112908/

#https://repl.it/student/submissions/7587039?lite=true


def partition(array)
    pivot = array[0]
    left = []
    right = []
    array.each{|e|
        unless e == pivot
            if e > pivot
            right << e
            else
            left << e
        end
    end
    }
    # puts "left" 
    # print left
    # puts
    # puts "pivot"
    # puts pivot
    # puts "right"
    # print right
    # puts

    res = []
    res << left    
    res << pivot
    res << right

    res.flatten
  end
  
  p partition([4, 5, 3, 9, 1])
  # => [3, 1, 4, 5, 9]