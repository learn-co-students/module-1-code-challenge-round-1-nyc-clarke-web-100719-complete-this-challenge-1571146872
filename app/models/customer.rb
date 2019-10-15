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
  
  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    count = 0
    Review.all.each {|review_instance|
      if review_instance.customer == self
        count += 1
      end
    }
    count
  end

  def restaurants
    arr = []
    Review.all.each {|review_instance|
      if review_instance.customer == self
        if !arr.include? review_instance.restaurant
          arr << review_instance.restaurant
        end
      end
    }
    arr
  end

  def self.find_by_name(name)
    Customer.all.each { |customer_instance|
    full_name = name.split(" ")
      if customer_instance.first_name == full_name[0] && customer_instance.last_name == full_name[1]
        return customer_instance
      end
    }
  end

  def self.find_all_by_first_name(name)
    arr = []
    Customer.all.each { |customer_instance|
      if customer_instance.first_name == name
        arr << customer_instance
      end
    }
    arr
  end

  def self.all_names
    arr = []
    Customer.all.each { |customer_instance|
      full_name = []
      full_name << customer_instance.first_name
      full_name << customer_instance.last_name
      full_name.join(" ")
      arr << full_name
    }
    arr
  end

end
