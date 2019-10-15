class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    self.class.all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def reviews #returns all reviews associated with customer
    Review.all.select { |review| review.customer == self }
  end

  def restaurants
    reviews.map { |review| review.restaurant }.uniq
  end

  def num_reviews
    reviews.count
  end

  def top_three_reviews #finds the top three rated reviews from customer
    reviews.max_by(3) { |review| review.rating }
  end

  def self.all
    @@all
  end

  def self.find_by_name(full_name)
    all.find { |customer| customer.full_name == full_name }
  end

  def self.find_all_by_first_name(first_name)
    all.select { |customer| customer.first_name == first_name }
  end

  def self.all_names
    all.map { |customer| customer.full_name }
  end
end
