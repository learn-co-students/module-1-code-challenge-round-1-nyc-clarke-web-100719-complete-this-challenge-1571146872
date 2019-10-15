require_relative '../config/environment.rb'

customer1 = Customer.new("first1", "last1")
customer2 = Customer.new("first2", "last2")
customer3 = Customer.new("first3", "last3")

rest1 = Restaurant.new("restaurant1")
rest2 = Restaurant.new("restaurant2")
rest3 = Restaurant.new("restaurant3")

review1 = Review.new(customer1, rest1, "This sucks", 1)
review2 = Review.new(customer2, rest2, "This is good", 4)
review3 = Review.new(customer1, rest2, "This sucks too and is expensive", 2)




binding.pry


