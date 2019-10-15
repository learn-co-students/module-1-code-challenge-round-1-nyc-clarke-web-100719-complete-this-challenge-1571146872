class Restaurant
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end


  def initialize(name)
    @name = name

    self.class.all << self
  end

  #Done
  def customers
    Review.all.select {
     |review| review.restaurant == self
    }.map {|review| review.customer}
  end

  #Done
  def reviews
    Review.all.select {
        |review| review.restaurant == self
    }
  end

  #Done
  def average_star_rating
    average = 0

    nums_of_reviews = Review.all.select {
        |review| review.restaurant == self
    }.each {|review| average += review.rating}.count

    return average / nums_of_reviews
  end

  #Fix
  def longest_review
    long_review = nil

    Review.all.select {
        |review| review.restaurant == self
    }.each do |review|
      if long_review.nil?
        long_review = review
      elsif review.content.length >= long_review.content.length
        long_review = review
      end
    end

    return long_review
  end

  #Done
  def self.find_by_name(name)
    Review.all.select {
        |review| review.restaurant.name == name
    }
  end
end
