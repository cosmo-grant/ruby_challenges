INTS_TO_ROMAN_NUMERALS = {
  1 => 'I',
  4 => 'IV',
  5 => 'V',
  9 => 'IX',
  10 => 'X',
  40 => 'XL',
  50 => 'L',
  90 => 'XC',
  100 => 'C',
  400 => 'CD',
  500 => 'D',
  900 => 'CM',
  1000 => 'M'
}

class RomanNumeral
  def initialize(int)
    @int = int
  end

  def to_roman
    remainder = @int
    numeral = ''
    while remainder > 0
      number = largest_below(remainder)
      remainder -= number
      numeral += INTS_TO_ROMAN_NUMERALS[number]
    end
    return numeral
  end

  private

  def largest_below(remainder)
    INTS_TO_ROMAN_NUMERALS.keys.max_by { |int| int <= remainder ? int : 0 }
  end
end