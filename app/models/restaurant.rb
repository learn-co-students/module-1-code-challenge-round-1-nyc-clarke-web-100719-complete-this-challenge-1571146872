class Restaurant
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self 
  end


  #Begin class methods
  def self.all
    @@all
  end 
  
end
