class Customer
  attr_reader :first_name, :last_name

  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end 

  def reviews
    myreviews = Review.all.select do |review|
      review.customer == self 
    end 
    myreviews
  end 

  def num_reviews
    reviews.count
  end 

  def restaurants 
    reviews.map do |review|
      review.restaurant
    end.uniq 
  end 

  def restaurant_name
    restaurants.map do |restaurant |
      restaurant.name
    end
  end 

  # Begin class methods
  def self.all 
    @@all 
  end 
end
