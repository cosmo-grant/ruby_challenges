class Robot
  attr_reader :name
  
  @@names = []

  def initialize
    reset 
  end

  def reset
    @@names.delete(@name)
    name = nil
    loop do
      name = ("AA".."ZZ").to_a.sample + ("000"..."999").to_a.sample
      break unless @@names.include?(name)
    end
    @name = name
    @@names << name
  end

end