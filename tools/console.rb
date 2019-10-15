require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("James", "Bond")
customer2 = Customer.new("Chun", "Lee")
customer3 = Customer.new("Hulk", "Hogan")
customer4 = Customer.new("Random", "Guy")

restaurant1 = Restaurant.new("Pizza Hut")
restaurant2 = Restaurant.new("Fridays")
restaurant3 = Restaurant.new("Apple Beeee's")

customer1.add_review(restaurant1, "Great Place!", 5)
customer2.add_review(restaurant1, "yass!", 5)
customer3.add_review(restaurant1, "tried it", 3)
customer4.add_review(restaurant1, "maybe not", 2)
customer1.add_review(restaurant1, "ok", 1)
customer3.add_review(restaurant1, "Mehhhh", 2)


customer1.add_review(restaurant2, "Its ok", 3)
customer2.add_review(restaurant3, "Like it", 3)


restaurant1.average_star_rating

binding.pry
0 #leave this here to ensure binding.pry isn't the last line