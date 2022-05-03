class Triangle
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
    raise ArgumentError, "invalid side lengths" if invalid? 
  end

  def kind
    case @sides.uniq.length
    when 1 then 'equilateral'
    when 2 then 'isosceles'
    when 3 then 'scalene'
    end
  end

  private

  def invalid?
    @sides.any? { |side| side <= 0 } || 
    (@sides[0] + @sides[1] <= @sides[2]) || 
    (@sides[0] + @sides[2] <= @sides[1]) || 
    (@sides[1] + @sides[2] <= @sides[0])
  end
end