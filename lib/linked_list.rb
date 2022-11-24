require_relative './node'
# require 'pry'

class LinkedList
  attr_accessor :head, :tail, :length

  def initialize
    @head = nil
    @tail = nil
    @length = 0
  end

  def reverse!
    reverse(head)
    # while length > 0 
    #   reverse(head)  
    #   length -= 1
    # end  
  end

  def reverse(head)
    return nil if head.nil? 
    return head if head.next_node.nil?
     
    curr_node = head
    new_head = nil
    while (curr_node != nil)
      new_head = curr_node.prev_node
      curr_node.prev_node = curr_node.next_node
      curr_node.next_node = new_head
      curr_node = curr_node.prev_node
    end
    new_head.prev_node
  end

  def append(node)
    if head.nil?
      self.length += 1
      self.head = node
      self.tail = node
    else
      self.length += 1
      node.prev_node = self.tail
      tail.next_node = node
      self.tail = node
    end
  end
end

# binding.pry
# 0
