require 'pry'

class DNA
  def initialize(dna_string)
    @dna_string = dna_string
  end

  def hamming_distance(other_dna_string)
    min_size = [@dna_string.size, other_dna_string.size].min
    return 0 if min_size == 0
    self_dna_arr = @dna_string.chars[0, min_size]
    other_dna_arr = other_dna_string.chars[0, min_size]
    self_dna_arr.zip(other_dna_arr).count do |from_self, from_other|
      from_self != from_other
    end
  end
end