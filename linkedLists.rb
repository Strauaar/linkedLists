class LinkedList
  attr_accessor :head, :tail
  @@size = 0
  def initialize
    @head = nil
    @tail = nil
    @@index = []
  end

  def append(data)
    if @tail
      temp = @tail
    end
    newData = Node.new
    newData.value = data
    newData.next_node = nil
    @tail = newData
    if temp
      temp.next_node = @tail
    end
    @@size += 1
    @@index << newData
  end

  def prepend(data)
    if @head
      temp = @head.value
    end
      newData = Node.new
      newData.value = data
    if temp
      newData.next_node = temp
    end
      @head = newData
      @@size += 1
      @@index.unshift(newData)
  end

  def size
    puts @@size
  end

  def head
    puts @head.value
  end

  def tail
    puts @tail.value
  end

  def at(index)
    puts @@index[index].value
  end

  def pop
    temp = @tail
    temp.value = nil
    @@index[-2].next_node = nil
    @tail = @@index[-2]
  end

  def contains?(data)
    contains = false
    @@index.each do |node|
      if node.value == data
        contains = true
      end
    end
    puts contains
  end

  def find(data)
    found_at = nil
    @@index.each do |node|
      if node.value == data
        found_at = @@index.index(node)
      end
    end
    puts found_at
  end

  def to_s
    
  end

end

class Node
attr_accessor :value, :next_node

  def initialize
  end


end
nodeLast = "nodeLast"
linkedlist = LinkedList.new
linkedlist.append nodeLast
linkedlist.prepend "nodeFirst"
linkedlist.prepend "newNode"
linkedlist.append "newAppendedNode"
linkedlist.size
#linkedlist.head
linkedlist.tail
#linkedlist.at 2
linkedlist.pop
linkedlist.tail
linkedlist.contains? "nodeLast"
linkedlist.find "nodeLast"
