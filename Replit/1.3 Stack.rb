require_relative "../1.1 LinkedListRuby/main.rb"

class Stack    
    def initialize()
        @top = nil
        @list = LinkedList.new
    end

    def push(number)        
        @list.add_at(0, number)
    end  

    def pop    
        element = @list.get(0)
        @list.remove(0)
        element
    end
end
  
  stack = Stack.new
  stack.push(3)
  stack.push(5)
  puts stack.pop
  puts "Should return: 5"
  # => 5
  
  stack.push(2)
  stack.push(7)
  puts stack.pop
  puts "Should return: 7"
  # => 7
  
  puts stack.pop
  puts "Should return: 2"
  # => 2
  
  puts stack.pop
  puts "Should return: 3"
  # => 3
