require_relative "../1.1 LinkedListRuby/main.rb"

class Queue
	def initialize
		@list = LinkedList.new	
	end
  def add(number)
    @list.add(number)
  end
  
  def remove
    @list.remove(0)
  end
end

queue = Queue.new
queue.add(3)
puts queue.remove
puts "Should return 3"

queue.add(5)
queue.add(7)
puts queue.remove

puts queue.remove
