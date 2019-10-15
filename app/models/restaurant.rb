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

  def reviews 
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    reviews.map { |review| review.customer }.uniq
  end

  def star_rating 
    reviews.map { |review| review.rating }
  end
  
  def average_star_rating
    total = star_rating.reduce(0) { |sum, star_rating| sum + star_rating }
    total / star_rating.length.to_f
  end

  def longest_review
    content = reviews.map { |review| review.content}
    content.max_by { |content| content.length }
  end

  def self.find_by_name(name)
    all.find { |restaurant| restaurant.name == name }
  end

  def reviewer_first_names
    reviews.map { |review| review.customer.first_name}        
  end


end
