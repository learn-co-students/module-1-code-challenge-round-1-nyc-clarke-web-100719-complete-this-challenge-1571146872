class Restaurant
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    review.map do |reviews|
      reviews.customer
    end
  end

  def average_star_rating
    sum = 0
    reviews.each do |review|
    sum += review.rating
    end
    sum / reviews.length
  end

  def longest_review  ##
    reviews.each do |review|
      review.content.length
    end
  end

  def self.find_by_name(rest_name)
    @@all.select do |restaurant|
      restaurant.name == rest_name
    end
  end


end
