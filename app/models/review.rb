class Review
    attr_reader :customer, :restaurant, :rating, :content
   
    #Class Methods

    #All instances of this class
    @@all = []
    def self.all
      @@all
    end

    #Remove bad reviews
    def self.take_bribe(restaurant, dollar_amount)
        if dollar_amount > 5000
            @@all = Review.all.select { |review|
                if review.restaurant == restaurant
                    review.rating >= 4
                else
                    true
                end
            }
            return "Check your rating now"
        else
        "You think I'm going to compromise the moral integrity of this platform for your dirty money?"
        end
    end


    #Instance methods

    #Init    
    def initialize(customer, restaurant, rating, content)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @content = content
        self.class.all << self 
    end



end

