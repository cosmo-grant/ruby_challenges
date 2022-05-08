class Diamond
  def self.make_diamond(letter)
    top_rows = []
    ("A"..letter).each_with_index do |char, idx|
      top_rows << self.row(char, idx)
    end
    max_row_length = top_rows[-1].length
    all_rows = top_rows + top_rows[0...-1].reverse
    all_rows.map! do |row|
      row.center(max_row_length)
    end
    all_rows.join("\n") + "\n"
  end

  def self.row(char, idx)
    idx == 0 ? char : char + " " * (2 * idx - 1) + char
  end
end

print Diamond.make_diamond("C")