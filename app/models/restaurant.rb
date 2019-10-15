class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  # def customers
  # # returns a **unique** list of all customers who have reviewed a particular restaurant.
  # # iterate over the customers array
  # # select method to grab the uniq customer
  #   Customer.all.select do |customer|
  #     customer.restaurants == self
  #   end

  # end

# Restaurant#reviews`
# returns an array of all reviews for that restaurant
# map over customers method and access the reviews
# return that

  def self.all
    @@all
  end

end
