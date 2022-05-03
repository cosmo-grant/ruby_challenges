class PerfectNumber
  def self.classify(num)
    raise StandardError, "number must be positive" if !num.positive?
    case aliquot_sum(num)
    when ((num + 1)..) then "abundant"
    when num then "perfect"
    when (...num) then "deficient"
    end
  end

  def self.aliquot_sum(num)
    proper_factors(num).sum
  end

  def self.proper_factors(num)
    factors = [1]
    2.upto(num ** 0.5) do |candidate|
      factors.concat([candidate, num / candidate]) if num % candidate == 0
    end
    factors
  end
end