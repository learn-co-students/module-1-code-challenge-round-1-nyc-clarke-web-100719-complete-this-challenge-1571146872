class Review
    @@all = []
    attr_accessor :customer, :restaurant, :content, :rating

    def initialize(customer, restaurant, content, rating)
        @customer = customer
        @restaurant = restaurant
        @content = content
        @rating = rating
        @@all << self
      end

    def self.all
        @@all
    end

    def customer ##
        @@all.select do |review|

        end
    end 

    def restaurant ##

    end

    def rating 

    end

end

