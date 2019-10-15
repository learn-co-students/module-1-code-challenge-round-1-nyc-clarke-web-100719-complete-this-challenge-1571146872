class Customer
  attr_reader :first_name, :last_name


  #Class Methods

  #All instances of this class
  @@all = []
  def self.all
    @@all
  end

  #Find_by_name (Assuming full_name is given as a string "FirstName LastName")
  def self.find_by_name(full_name)
    nameArr = full_name.split
    first = nameArr[0] 
    last = nameArr[1]

    Customer.all.find {|customer|
      customer.first_name == first && customer.last_name == last
    }
  end

  #Find by all customers with a given first name
  def self.find_all_by_first_name(name)
    Customer.all.select { |customer|
      customer.first_name == name
    }
  end

  #All customer names
  def  self.all_names
    arr = []
    Customer.all.each { |customer|
      arr << "#{customer.first_name} #{customer.last_name}" 
    }
    arr
  end



  #Instance Methods
  
  #Init
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    self.class.all << self 
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  #Helper method for finding all reviews associated with Customer
  def reviews 
    Review.all.select { |review| 
      review.customer == self
    }
  end

  #Add review given Restaurant obj
  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end

  #Total num reviews of Customer
  def num_reviews
    reviews.count
  end
  
  #UNIQUE list of restaurants Customer has reviewed
  def restaurants
    reviews.map { |review| 
      review.restaurant
    }.uniq
  end





end
