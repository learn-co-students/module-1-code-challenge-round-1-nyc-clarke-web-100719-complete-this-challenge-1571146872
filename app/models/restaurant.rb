class Restaurant
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self 
  end

  def customers 
    reviews.map do |review|
      review.customer
    end.uniq
  end 

  def reviews 
    Review.all.select do |review|
      review.restaurant == self 
    end 
  end

  def avg_star_rating
    sum = 0
    reviews.each do |review|
      sum += review.rating
    end 
    sum / reviews.length 
  end

  def longest_review
    reviews.sort_by do |review|
      review.content
    end.last.content
  end 

  #Begin class methods
  def self.all
    @@all
  end 
  
end
