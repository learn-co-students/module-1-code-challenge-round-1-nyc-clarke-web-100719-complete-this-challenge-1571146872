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
    Review.all.select { |review| review.restaurant == self}
  end

  # #added more methods in here ====================
  # def bad_reviews
  #   reviews.select { |review| review.rating <= 3 }
  # end

  # def good_reviews
  #   reviews.select { |review| review.rating > 3 }
  # end
  # #===========================================  
  def customers
    reviews.map { |review| review.customer }.uniq
  end

  def total_rating
    reviews.reduce(0) { |acc, review| acc + review.rating }
  end

  def average_star_rating
    avg = (total_rating.to_f / reviews.length).round(2)
  end

  def longest_review
    content_arr = reviews.sort_by { |review| review.content.length }
    content_arr[-1].content
  end

  def self.find_by_name(name)
    @@all.find { |restaurant| restaurant.name == name }
  end

end
