class Node
  attr_accessor :value, :next_node
  
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class LinkedList

  #setup head and tail
  attr_accessor :head, :tail
  
  def initialize()
    @head = nil
    @tail = nil
  end

  def add(number)
      new_node = Node.new(number)
      if(@head) #si no esta vacio         
        @tail.next_node = new_node
        @tail = new_node
        #LIFO:
        # new_node.next_node = @head
        # @head = new_node        *
      else #si esta vacio, 
        @head = @tail = new_node   
      end
      puts "number #{number} added to the tail of the list"
#testing vim git
  end  

  def get()    
    puts "Linked list error: Index can't be null"
    return -1
  end

  def get(index)
    node = getNode(index)
    return -1 if node == -1   
    return  node.value
  end

  def add_at(index, item) #this can be explained in a drawing
    
    new_node = Node.new(item) #create a new-node with the item
    
    return -1 if indexCheck1(index) == -1 #this instruction is required for the error message bellow to work properly
    
    if(index == 0)
      if(@head)
        new_node.next_node = @head
        @head = new_node
      else  
        @head = new_node
        @tail = new_node
      end
      return 0          
    end    

    if(!@head) 
      puts "Linked list error: Can't be an empty list and non zero index"
      return -1
    end
    
    previous_node = getNode(index-1) #find the previous node with the index      

    return -1 if previous_node == -1

    if !previous_node.next_node #the end of the list
      add(new_node.value) 
    else
      new_node.next_node = previous_node.next_node #point the new-node to the following-node   
      previous_node.next_node = new_node #point the previous-node to the new-node
    end
  end

  def show()
    if(!@head)
      puts "Lista vacia"
      return
    end
    puts "Displaying content in list"
    selected = @head
    puts selected.value
    while selected.next_node
      selected = selected.next_node                
      puts selected.value 
    end
  end  

  def remove(index)

    return -1 if indexCheck1(index) == -1
    if(index == 0)
      if(@head)
				ret = @head
        if(@head.next_node)
          #node with head and with more than one element                    
          @head = @head.next_node
        else
          #node with head but with only one element
          @head = @tail = nil          
        end     
        return ret.value
      else 
        #puts "Can't remove the first element from an empty list"
        return -1
      end
      puts "Remove error: This code should never have been reached"
      return 0   
    end    
    
    current_node = getNode(index)

    previous_node = getNode(index-1)


    if(@tail == current_node)
      @tail = previous_node
      previous_node.next_node = nil
      return 0
    end


    next_node = getNode(index+1)   
    
    previous_node.next_node = next_node

     
  end

  def removeLast()

		if(@tail == nil or @head == nil)
			puts "Can't remove element in an empty list"
			return -1
    end

    if(@head==@tail)
			ret = @head
			@head = nil
			return ret
    end
    
    #<comment> Maybe this can be done with less lines and cleaner. Suggestions deeply appreciated: a@ivanderlich.com.
    previousNode = @head
    nextNode = @head.next_node
    while previousNode.next_node	
			previousNode = nextNode
			nextNode = nextNode.next_node
    end
    nextNode = nil
		@tail = previousNode
		return previousNode.value
     #</comment>
  end

  private

  def getNode(index)     
      
    if(!@head)
      puts "Error in get() method, list is empty and can't get index #{index}"
      return -1
    end

    return -1 if indexCheck1(index) == -1 #si la lista esta vacia o si el indice es invalido

    selected = @head
    counter = 0
    while selected.next_node and counter < index
      selected = selected.next_node                
      counter += 1   
      #puts "counter: #{counter}"        
    end
    return -1 if indexCheck2(index, counter) == -1

    return selected

  end

  for i in 1..9999
    rand()
  end

  

  private
  def indexCheck1(index)
    #puts "index is #{index}"
    if(index < 0)     
        puts "Linked lists error: The index is zero or negative: index is #{index}"
        return -1
    end
    return 0
  end

  private
  def indexCheck2(index, counter)
    if (counter < index)    
        puts "Linked lists error: The index is higher than the number of elements in the list"
        return -1
    end
    return 0
  end
      
end
