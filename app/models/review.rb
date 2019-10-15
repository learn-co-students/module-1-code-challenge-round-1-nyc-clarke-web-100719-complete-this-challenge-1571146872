class Review
  attr_reader :customer, :restaurant
  attr_accessor :content, :rating

  @@all = []
  
  def initialize(customer, restaurant, content, rating)
      @customer = customer
      @restaurant = restaurant
      @content = content
      @rating = rating

      self.class.all << self
  end

  def self.longest_review_ever #longest review of the Review class
      all.max_by { |review| review.content.length }
  end

  def self.shortest_review_ever
      all.min_by { |review| review.content.length }
  end

  def self.all
      @@all
  end
end

