class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    self.class.all << self
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    reviews.map { |review| review.customer }.uniq
  end

  def average_star_rating
    reviews.any? ? reviews.sum(&:rating) / reviews.count.to_f : 0.0
  end

  def longest_review
    reviews.max_by { |review| review.content.length }
  end

  def shortest_review #opposite of #longest_review 
    reviews.min_by { |review| review.content.length }
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    all.find { |restaurant| restaurant.name == name }
  end
end
