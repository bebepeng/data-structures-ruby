class Stack
  def initialize
    @items = []
  end

  def size
    @items.length
  end

  def empty?
    @items.empty?
  end

  def push(item)
    @items << item
  end

  def pop
    @items.pop
  end

  def each
    @items.reverse_each {|item| yield item}
  end
end