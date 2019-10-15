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


  # def add_review(restaurant, content, rating)
    #given a **restaurant object**, some review content (as a string), 
    #and a star rating (as an integer), 
    #creates a new review and associates it with that customer and restaurant.
    
    #i need to add a new review for any given restaurant

    # Review.new(self, restaurant)
  # end

  # def restaurants
  #   #Returns a **unique** array of all restaurants a customer has reviewed
  #   #use select to get the right customers review
  #   Review.all.select do |review|
  #     review.restaurant = self
  #   end
  # end

  # def num_reviews
  #  #create a count variable
  # count = 0
  #  #iterate over reviews a customer has given 
  #  #for each review, increment count by 1 (use .each method)
  # end

  def self.all
    @@all 
  end
end
