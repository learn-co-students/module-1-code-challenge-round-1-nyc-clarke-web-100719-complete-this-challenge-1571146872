class Review
    attr_reader :customer, :restaurant, :rating, :content
   
    #Class Methods

    #All instances of this class
    @@all = []
    def self.all
      @@all
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

