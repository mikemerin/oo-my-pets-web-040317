class Cat

  attr_accessor :mood
  attr_reader :name

  def initialize(name)
    @name, @mood = name, "nervous"
  end

end
