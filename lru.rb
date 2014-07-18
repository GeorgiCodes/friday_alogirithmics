require_relative "linked_list"

class LRUCache

  attr_reader :hash, :ll, :size

  def initialize
    @ll = LinkedList.new
    @hash = {}
    @max = 5
    @size = 0
  end

  def set(key, data)
    puts "attempting to set #{key}, #{data}"
    if (@ll.count == @max)
      puts "reached max of #{@max} with #{@ll.count}"
      @ll.remove_tail
    end

    # if exists
    hash_value = @hash[key]
    if (hash_value)
      @hash[key] = data # update value
      @ll.move_to_front(@hash[key])
    else
      newNode = Node.new(data)
      @hash[key] = newNode
      @ll.add(newNode)
    end

    @size += 1
    puts @hash
  end

  def get(key)
    node = @hash[key]
    return false unless node

    @ll.move_to_front(node)
    return node.data
  end

end

#c = LRUCache.new
#c.set("key", 123241)
#c.set("key1", 1)
#c.set("key2", 2)
#
#val = c.get("key")
#p val
#
#c.set("key3", 3)
#c.set("key4", 4)
#c.set("key5", 5)
#v = c.get("key")
#p v


