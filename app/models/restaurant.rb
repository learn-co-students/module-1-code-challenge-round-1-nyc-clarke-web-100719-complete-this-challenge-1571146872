class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all 
  end


  ##helper method
  def restaurants
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    restaurants.map {|restaurant| restaurant.customer}.uniq
  end

  def reviews
    restaurants.select {|restaurant| restaurant.content}
  end

  def average_star_rating
    rating_total = 0
    restaurants.each {|restaurant| rating_total+= restaurant.rating}
    rating_total / restaurants.length
  end

  def longest_review
    restaurants.sort_by {|restaurant| restaurant.content}.last
  end

  def self.find_by_name(name_arg)
    @@all.find {|restaurant| restaurant.name== name_arg}
  end



end
