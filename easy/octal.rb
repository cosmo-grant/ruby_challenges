class Octal
  def initialize(octal_str)
    @octal_str = octal_str
  end

  def to_decimal
    return 0 if invalid?
    decimal = 0
    @octal_str.reverse.chars.each_with_index do |digit, index|
      decimal += digit.to_i * 8 ** index
    end
    decimal
  end

  private

  def invalid?
    /[^0-7]/ =~ @octal_str
  end
end