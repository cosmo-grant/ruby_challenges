class SumOfMultiples
  def initialize(*numbers)
    numbers == [] ? @numbers = [3, 5] : @numbers = numbers
  end

  def to(upper_bound)
    (1...upper_bound).select { |num| evenly_divides?(num) }.sum
  end

  def self.to(upper_bound)
    SumOfMultiples.new.to(upper_bound)
  end

  private

  def evenly_divides?(num)
    @numbers.any? { |i| num % i == 0 }
  end

end