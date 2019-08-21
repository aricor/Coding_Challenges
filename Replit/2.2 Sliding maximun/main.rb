def sliding_maximum(k, array)
	return -1 if k > array.length
	ans = []
	for i in 0..array.length-k
		max = max_two(array[i],array[i+1])
		for j in i+1..i+k-2
			max = max_two(max, array[j+1])
		end
		ans.push(max)
	end
	ans
end

def max_two(a, b)
	return a > b ? a : b
end

puts sliding_maximum(3, [8, 4, 2, 6, 3, 5])
puts "Should return: 8,6,6,6" 
puts "sliding_maximum(3, [1, 3, 5, 7, 9, 2])"
puts sliding_maximum(3, [1, 3, 5, 7, 9, 2])
puts "Should return: 5, 7, 9, 9"
puts "sliding_maximum(2, [1, 3, 5, 7, 9, 2])"
puts sliding_maximum(2, [1, 3, 5, 7, 9, 2])
puts "Should return: 3,5,7,9,9"
puts "sliding_maximum(4, [1, 3, 5, 7, 9, 2])"
puts sliding_maximum(4, [1, 3, 5, 7, 9, 2])
puts "Should return: 7,9,9"
puts "sliding_maximum(5, [1, 3, 5, 7, 9, 2])"
puts sliding_maximum(5, [1, 3, 5, 7, 9, 2])
puts "Should return: 9,9"
puts "sliding_maximum(3, [8, 4, 2, 6, 3, 5])"