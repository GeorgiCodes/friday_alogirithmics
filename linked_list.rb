class LinkedList

  attr_accessor :count, :head

  def initialize
    @head = nil
    @count = 0
  end

  # add to head
  def add(newNode)
    currHead = @head
    @head = newNode
    @head.next = currHead

    if (currHead)
      currHead.prev = @head
    end

    @count += 1
    puts @head
  end

  # find
  def get(data)
    curr = @head
    while (curr)
      if (curr.data == data)
        puts "found #{curr}"
        return curr
      end
      curr = curr.next
    end
  end

  def move_to_front(node)
    # if nil
    if (!@head)
      add(node)
      return
    end

    # if node is head
    if (@head == node)
      return
    end

    # update neighbours
    curr_prev = node.prev
    curr_next = node.next
    puts "######### #{node}"
    puts curr_prev
    puts curr_next
    curr_prev.next = curr_next

    # add to front
    add(node)
  end

  def remove_tail
    curr = @head
    while (curr)
      # find tail
      if (curr.next == nil)
        curr.prev = nil
        curr = nil
        return
      end
    end

  end

end

class Node

  attr_accessor :data, :next, :prev

  def initialize(data)
    @data = data
    @next = nil
    @prev = nil
  end

  def to_s
    "node with data: #{@data} "
  end

end

