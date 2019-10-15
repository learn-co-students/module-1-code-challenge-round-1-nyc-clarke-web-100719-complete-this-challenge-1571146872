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



def num_reviews
customer.all.select do |customer|
customer.review == self 
end 




def self.all
  @@all 
end 



end
