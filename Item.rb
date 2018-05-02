#John Harvey

class Item
  include Comparable

  attr_accessor :weight, :benifit, :value

  def initialize(weight, benifit)
    @weight, @benifit = weight, benifit
    @value = benifit/weight
  end

  def <=>(other)
      @value <=> other.value
    end
end
