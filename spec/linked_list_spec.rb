require "spec_helper"

describe "LinkedList" do
  describe "add" do
    it "adds value to start when list is empty" do
      ll = LinkedList.new
      node = (Node.new(1))
      ll.add(node)

      expect(ll.count).to be 1
      expect(ll.head).to eq node
      expect(ll.head.data).to eq 1
      expect(ll.head.next).to be nil
      expect(ll.head.prev).to be nil
    end

    it "adds second value to start when list contains elements" do
      ll = LinkedList.new
      node = Node.new(1)
      node2 = Node.new(2)
      ll.add(node)
      ll.add(node2)

      expect(ll.count).to be 2
      expect(ll.head).to eq node2
      expect(ll.head.data).to eq 2
      expect(ll.head.next).to be node
      expect(ll.head.prev).to be nil
      expect(ll.head.next.prev).to be node2
      expect(ll.head.next.next).to be nil
    end
  end

  describe "move_to_front" do
    it "adds value as head when list is empty" do
      ll = LinkedList.new
      node = Node.new(1)
      ll.move_to_front(node)

      expect(ll.count).to be 1
      expect(ll.head).to eq node
    end

    it "leaves head untouched when node to be moved is head" do
      ll = LinkedList.new
      node = Node.new(1)
      ll.add(node)
      ll.move_to_front(node)

      expect(ll.count).to be 1
      expect(ll.head).to eq node
    end

    it "adds value as head when there are multiple items in list" do
      ll = LinkedList.new
      ll.add(Node.new(1))
      ll.add(Node.new(2))
      node3 = Node.new(3)
      ll.add(Node.new(3))
      ll.move_to_front(node3)

      expect(ll.count).to be 3
      expect(ll.head).to eq node3
    end
  end

end