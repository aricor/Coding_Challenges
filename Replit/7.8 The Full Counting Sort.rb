#https://microverse.pathwright.com/library/fast-track-algorithms-data-structures/69123/path/step/55046229/

#https://repl.it/student/submissions/7532987?lite=true

require 'benchmark'

def full_counting_sort(test_arr) 
    array = []
    test_arr.each_with_index{|e,i| 
        array[i] = [
            e.split(' ')[0].to_i,
            e.split(' ')[1]
        ]
    } 

    nums = []
    array.each{|e| nums << e[0]} 

    range = nums.max+1 > array.length ? 
        nums.max+1 : 
        range = array.length   

    count = Array.new(range,0)      
    array.each{ |e| count[e[0]] += 1 }  

    for i in 1..count.length-1           
        count[i] += count[i-1]
    end      

    count.unshift(0) 
    res = [] 

    array.each_with_index{ |e,i|     
        position = count[ e[0] ]
        res[position] = e[1]
        count[e[0]] += 1       
    }     
    res     
  end

  #Juan Manuel's solution
  def full_counting_sort_juan(array)
    helper = []
    array.each do |item|
      helper[item.to_i].nil? ? helper[item.to_i] = [item.split(' ')[1]] :  
                               helper[item.to_i] << item.split(' ')[1]
    end
    helper.flatten
  end

  test_arr = ["0 ab", "6 cd", "0 ef", "6 gh", "4 ij", "0 ab", "6 cd", "0 ef", "6 gh", "0 ij", "4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"]
#   p full_counting_sort(test_arr)
#   p full_counting_sort_juan(test_arr)

n = 100000

Benchmark.bm do |benchmark|

    x = benchmark.report("Ivan") do
      n.times do
        full_counting_sort(test_arr)
      end
    end
  
    y = benchmark.report("Juan") do
      n.times do
        full_counting_sort_juan(test_arr)
      end
    end
  
    puts "#{(y.real/x.real)*100}%"
    puts "#{(x.real/y.real)*100}%"
  end


  # => ["ab", "ef", "ab", "ef", "ij", "to", "be", "or", "not", "to", "be", "ij", "that", "is", "the", "question", "cd", "gh", "cd", "gh"]
  #    ["ab", "ef", "ab", "ef", "ij", "to", "be", "or", "not", "to", "be", "ij", "that", "is", "the", "question", "cd", "gh", "cd", "gh"]