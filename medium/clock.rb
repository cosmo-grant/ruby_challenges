class Clock

  HOURS_PER_DAY = 24
  MINS_PER_HOUR = 60
  MINS_PER_DAY = HOURS_PER_DAY * MINS_PER_HOUR

  def initialize(hours, mins)
    self.minutes = hours * MINS_PER_HOUR + mins
  end

  def self.at(hours, mins=0)
    Clock.new(hours, mins)
  end

  def to_s
    hours, mins = minutes.divmod(MINS_PER_HOUR)
    "#{"%02d" % hours}:#{"%02d" % mins}"
  end

  def +(mins)
    Clock.new(0, minutes + mins)
  end

  def -(mins)
    Clock.new(0, minutes - mins)
  end

  def ==(other)
    to_s == other.to_s
  end

  private

  def minutes=(mins)
    @minutes = mins
    @minutes %= MINS_PER_DAY
  end

  attr_reader :minutes

end
