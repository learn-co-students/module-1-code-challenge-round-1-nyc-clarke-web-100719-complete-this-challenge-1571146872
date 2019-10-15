class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def self.all
    @@all
  end


  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    self.class.all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  #Done
  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  #Done
  def num_reviews
    Review.all.select {
     |review| review.customer == self
    }
  end

  #Done
  def restaurants
    Review.all.select {
     |review| review.customer == self
    }.map {|review| review.restaurant}
  end

  # Done
  def self.find_by_name(name)
    Review.all.select {
        |review| review.customer.full_name == name
    }
  end

  #Done
  def self.find_all_by_first_name(name)
    Review.all.select {
        |review| review.customer.first_name == name
    }
  end

  #Done
  def self.all_names
    Review.all.select {
        |review| review.customer.full_name
    }.uniq
  end



end
