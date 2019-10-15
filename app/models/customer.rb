class Customer
  @@all = []
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all 
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def reviews
  Review.all.select do |reviews|
    reviews.customer == self
    end
  end

  def num_reviews
    array = reviews
    array.length
  end

  def restaurants
    array = reviews.map do |review|
      review.restaurant
    end
    array.uniq
  end

  def self.find_by_name(full_name) 
    @@all.select do |customers|
      customers.full_name = full_name
    end
  end

  def self.find_all_by_first_name(name)
    @@all.select do |customers|
      customers.first_name == name
    end
  end


end
