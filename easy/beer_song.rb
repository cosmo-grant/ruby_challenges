class BeerSong
  def self.verse(i)
    case i
    when (3..99)
      "#{i} bottles of beer on the wall, #{i} bottles of beer.\n" \
      "Take one down and pass it around, #{i-1} bottles of beer on the wall.\n"
    when 2
      "2 bottles of beer on the wall, 2 bottles of beer.\n" \
      "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  def self.verses(from, to=nil)
    to = to || from
    verses = []
    from.downto(to) do |i|
      verses << self.verse(i) 
    end
    verses.join("\n")
  end

  def self.lyrics
    self.verses(99, 0)
  end
end

print BeerSong.verse(5)
print BeerSong.verses(3, 0)
