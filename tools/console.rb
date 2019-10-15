require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
c1 = Customer.new("John", "Giamaldi")
c2 = Customer.new("Karin", "Weaver")
c3 = Customer.new("Susan", "Monster-Face")

rest1 = Restaurant.new("Mikky D's")
rest2 = Restaurant.new("A Classy Restaurant")
rest3 = Restaurant.new("Dave's BIG Grill")
rest4 = Restaurant.new("Just 3 More Bites")
rest5 = Restaurant.new("Eat Your Damn Dinner")

rev1 = Review.new(c1, rest1)
rev2 = Review.new(c2, rest1)
rev3 = Review.new(c1, rest3)
rev4 = Review.new(c3, rest4)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line