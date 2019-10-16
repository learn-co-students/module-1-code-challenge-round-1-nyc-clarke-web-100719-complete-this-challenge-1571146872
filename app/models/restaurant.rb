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
  
  def reviews #returns an array of all reviews for that restaurant
    Review.all.select {|review| review.restaurant == self}
  end

  def customers #returns a **unique** list of all customers who have reviewed a particular restaurant
    reviews.map {|review| review.customer}.uniq
  end

  def all_ratings
    reviews.map {|review| review.rating}
  end

  def average_star_rating #returns the average star rating for a restaurant based on its reviews
    #first get sum of all ratings
    #divide by number of ratings
    all_ratings.sum/all_ratings.count.to_f
  end

  def all_content #gets content for all reviews
    reviews.map {|review| review.content}
  end

  def longest_review #returns the longest review content for a given restaurant
  #find longest one
    all_content.max_by {|content| content.length}
  end

  def self.find_by_name(name)#given a string of restaurant name, returns the first restaurant that matches
      all.select {|restaurant| restaurant.name == name}
  end
end
