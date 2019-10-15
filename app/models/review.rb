class Review
  attr_reader :customer, :restaurant, :content, :rating
  @@all = []

  def self.all
    @@all
  end

  def initialize(customer, restaurant,content,rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating if rating >=1 && rating <= 5
    @rating = 5 if rating > 5
    @rating = 1 if rating < 1

    self.class.all << self
  end

end

