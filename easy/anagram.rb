class Anagram
  def initialize(word)
    @word = word
  end

  def match(arr)
    arr.select { |word| Anagram.anagram?(word, @word) }
  end

  def self.anagram?(word1, word2)
    word1, word2 = word1.downcase, word2.downcase
    (word1 != word2) && (word1.chars.sort == word2.chars.sort)
  end
end