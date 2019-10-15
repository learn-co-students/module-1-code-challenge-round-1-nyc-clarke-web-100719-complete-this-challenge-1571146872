class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
    arr = []
    Review.all.each {|review_instance|
      if review_instance.restaurant == self
        if !arr.include? review_instance.customer
          arr << review_instance.customer
        end
      end
    }
    arr
  end

  def reviews
    arr = []
    Review.all.each {|review_instance|
      if review_instance.restaurant == self
        if !arr.include? review_instance.content
          arr << review_instance.content
        end
      end
    }
    arr
  end

  def average_star_rating
    total_rating = 0
    ratings = 0
    Review.all.each {|review_instance|
      if review_instance.restaurant == self
        total_rating += review_instance.rating
        ratings += 1
      end
    }
    (total_rating / ratings)
  end

  def longest_review
    review = ""
    Review.all.each {|review_instance|
      if review_instance.restaurant == self
        if review_instance.content.length > review.length
          review = review_instance.content
        end
      end
    }
    review
  end

  def self.find_by_name(name)
    Restaurant.all.each { |restaurant_instance|
      if restaurant_instance.name == name
        return restaurant_instance
      end
    }
  end


end
