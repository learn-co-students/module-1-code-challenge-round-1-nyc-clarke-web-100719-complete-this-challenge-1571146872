class Restaurant
  attr_reader :name
  
  #Class methods

  #All instances of this class
  @@all = []
  def self.all
    @@all
  end

  #Find by name 
  def self.find_by_name(name)
    Restaurant.all.find {|restaurant|
      restaurant.name == name
    }
  end

  #Instance methods

  #Init
  def initialize(name)
    @name = name
    self.class.all << self 
  end

  #All reviews that are of restaurant
  def reviews
    Review.all.select { |review|
      review.restaurant == self 
    }
  end

  #UNIQUE customers who reviewed this restaurant
  def customers 
    reviews.map { |review| 
      review.customer
    }.uniq
  end

  #Average rating
  def average_star_rating
    sum = 0.0
    reviews.each { |review| 
      sum += review.rating 
    }
    (sum / reviews.count).round(2)
  end

  #Longest review content
  def longest_review
    max_length = reviews[0].content.size
    max_review = reviews[0]
    reviews.each { |review|
      if review.content.size > max_length
        max_length = review.content.size
        max_review = review
      end
    }
    max_review
  end

  #Pay Review Website to remove bad reviews
  def bribe(dollar_amount)

    Review.take_bribe(self, dollar_amount)

  end





end
