class Node
  attr_accessor :value, :next_node
  
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class Stack

	def initialize
		@top = nil
	end

  def push(number)
		new_node = Node.new(number)

		if(@top)#If it's not empty
			new_node.next_node = @top
			@top = new_node
		else
			@top = new_node
		end

  end
  
  def pop
    aux = @top
		@top = @top.next_node
		aux.value
  end
  
  def min
		selected = @top
		min = @top.value
    while selected	
			value = selected.value		
			min = value if min > value
			selected = selected.next_node
		end
		min
  end

end

stack = Stack.new

stack.push(3)
puts "Pushed 3"

stack.push(5)
puts "Pushed 5"


puts "Popping from the stack:"
puts stack.pop
puts "Should return 5"

puts "Popping from the stack:"
puts stack.pop
puts "Should return 3"

stack.push(4)
puts "Pushed 4"

puts "Popping from the stack"
puts stack.pop
puts "Should return 4"

stack.push(3)
puts "Pushed 3"

stack.push(5)
puts "Pushed 5"

stack.push(7)
puts "Pushed 7"


puts "Running the min"
puts stack.min
puts "It should return 3"
## => 3

#stack.push(7)
#puts stack.min
# => 3

#stack.push(2)
#puts stack.min
# => 2

#stack.pop
#puts stack.min
# => 3
