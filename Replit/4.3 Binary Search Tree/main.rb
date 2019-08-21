class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end


def binary_search_tree(array)
  
  root = Node.new(array[0])
  array.each_with_index{ |item, index|
    insert_element(root,item) unless index == 0
  }
  
  pre_order(root)
  
end

def insert_element(node, element)
  
  return Node.new(element) if node == nil #if node is null then I create the node with the data
  if element > node.data
     node.right = insert_element(node.right,element)
  else #smaller or equal
    node.left = insert_element(node.left,element)
  end
  node
end

def pre_order(node)
  if node == nil
    return ''
  end

  result = "#{node.data}"
  result += pre_order(node.left)
  result += pre_order(node.right)
end

puts binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])
# => "8 3 1 6 4 7 10 14 13"
