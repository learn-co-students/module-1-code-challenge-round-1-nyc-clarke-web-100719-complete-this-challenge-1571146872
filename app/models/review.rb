class Review

    attr_reader :restaurant, :customer, :rating
  
@@all = []

    def initialize(restaurant, customer, rating)
        @restaurant = restaurant
        @customer = customer
        @rating = rating 
    @@all << self 
    end 


    def rating
    end 


    def self.all
        @@all
    end 






end

