#John Harvey

require_relative "./Item.rb"

class PQ

  attr_reader :items

  def initialize
    @items = []
  end

  def <<(item)
    @items << item
    bubble_up(@items.size - 1)
  end


  def bubble_up(index)
  parent_index = (index / 2)


  return if index <= 1


  return if @items[parent_index] >= @items[index]


  exchange(index, parent_index)


  bubble_up(parent_index)
end

def exchange(source, target)
  @items[source], @items[target] = @items[target], @items[source]
end

def pop

  exchange(1, @items.size - 1)


  max = @items.pop


  bubble_down(1)
  max
end

def bubble_down(index)
  child_index = (index * 2)


  return if child_index > @items.size - 1


  not_the_last_element = child_index < @items.size - 1
  left_element = @items[child_index]
  right_element = @items[child_index + 1]
  child_index += 1 if not_the_last_element && right_element > left_element


  return if @items[index] >= @items[child_index]

  exchange(index, child_index)


  bubble_down(child_index)
end

end
