class Dice

  def initialize
    @rolls = []
  end

  def roll(number = 1)
     (number).times do
       @rolls << rand(6) + 1
     end
     @rolls
  end

  def previous
    @rolls
  end

  def score
    @rolls.sum
  end
end
