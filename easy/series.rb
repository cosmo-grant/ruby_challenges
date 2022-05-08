class Series
  def initialize(digit_str)
    @digit_str = digit_str
  end

  def slices(length)
    raise ArgumentError if length > @digit_str.size
    accumulator = []
    @digit_str.chars.map(&:to_i).each_cons(length) do |subarr|
      accumulator << subarr
    end
    accumulator
  end
end