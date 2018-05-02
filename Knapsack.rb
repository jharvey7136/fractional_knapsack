#John Harvey


require_relative "./Item.rb"
require_relative "./PQ.rb"




class Knapsack

  def initialize(capacity, n)

    @capacity = capacity
    @myitems = PQ.new
    n.times do
      @myitems << Item.new(rand(n).to_f,rand(n))
    end
    itemWeight = 0
    totalWeight = 0

    start = (Time.now.to_f * 1000).to_i
    p "#{start}"

    while totalWeight < capacity do
      myitem = @myitems.pop
      if myitem.weight < capacity-totalWeight
        weightNeeded = myitem.weight

      else
        weightNeeded = capacity-totalWeight
      end
      itemWeight = weightNeeded
      totalWeight = itemWeight+totalWeight
      #p "wn = #{totalWeight}"
    end

  end
  endtime = (Time.now.to_f * 1000).to_i
  p "#{endtime}"


  end



K=Knapsack.new(10, 1000)
