class Review
    attr_reader :customer, :restaurant, :rating, :content
    @@all = []

    def self.all
      @@all
    end


  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    self.class.all << self 
  end



end

