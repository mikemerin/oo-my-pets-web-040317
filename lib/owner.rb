class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []

  def initialize(name)
    @name, @species = name, "human"
    @pets = {fishes: [], dogs: [], cats: []}
    @@owners << self
  end

  def self.all() @@owners end

  def self.reset_all() @@owners.clear end

  def self.count() @@owners.size end

  def species() @species end

  def say_species() "I am a #{@species}." end

  def buy_fish(name) @pets[:fishes] << Fish.new(name) end

  def buy_cat(name) @pets[:cats] << Cat.new(name) end

  def buy_dog(name) @pets[:dogs] << Dog.new(name) end

  def walk_dogs() @pets[:dogs].each { |x| x.mood = "happy" } end

  def play_with_cats() @pets[:cats].each { |x| x.mood = "happy" } end

  def feed_fish() @pets[:fishes].each { |x| x.mood = "happy" } end

  def sell_pets() @pets.each { |k,v| v.each { |x| x.mood = "nervous" }.clear } end

  def list_pets
    f = @pets[:fishes].size
    d = @pets[:dogs].size
    c = @pets[:cats].size
    "I have #{f} fish, #{d} dog(s), and #{c} cat(s)."
  end

end
