class CustomSet
  def initialize(enum=[])
    @members = enum.to_a.uniq
  end

  def empty?
    members.empty?
  end

  def contains?(obj)
    members.include?(obj)
  end

  def subset?(other)
    members.all? { |obj| other.contains?(obj) }
  end

  def disjoint?(other)
    members.none? { |obj| other.contains?(obj) }
  end

  def eql?(other)
    subset?(other) && other.subset?(self)
  end

  alias == eql?

  def add(obj)
    members << obj if !contains?(obj)
    self
  end

  def intersection(other)
    CustomSet.new( members.select { |obj| other.contains?(obj) } )
  end

  def difference(other)
    CustomSet.new( members.select { |obj| !other.contains?(obj) } )
  end

  def union(other)
    CustomSet.new(members + other.members)
  end

  protected

  attr_reader :members
end