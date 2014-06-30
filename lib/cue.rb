class Cue
  def initialize
    @items = []
  end

  def size
    @items.length
  end

  def empty?
    @items.empty?
  end

  def enqueue(item)
    @items << item
  end

  def dequeue
    @items.delete_at(0)
  end

  def each
    @items.each {|item| yield item}
  end
end