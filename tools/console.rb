require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Barbara", "Muesing")
customer2 = Customer.new("Shadman", "Asif")
customer3 = Customer.new("Jamie", "Muesing")
customer4 = Customer.new("Barbara", "Asif")

restaurant1 = Restaurant.new("Milk Bar")
restaurant2 = Restaurant.new("Otto's Tacos")
restaurant3 = Restaurant.new("Kawi")

review1 = Review.new(customer1, restaurant3, "Not great", 1)
review2 = Review.new(customer1, restaurant1, "Okay", 2)
review3 = Review.new(customer1, restaurant1, "Awesome!", 5)
review4 = Review.new(customer2, restaurant3, "pretty good", 4)
# review5 = Review.new(customer2, restaurant1, "Gross", 1)
# review6 = Review.new(customer3, restaurant3, "Amazing", 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line