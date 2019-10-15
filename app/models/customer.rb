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
    Review.new(self,restaurant, content,rating)
  end

  def customers
    Review.all.select {|review| review.customer == self}
  end

  def num_reviews
    customers.count{|customer| customer.content}
  end

  def restaurants
    customers.map {|customer| customer.restaurant}.uniq
  end

  

end
