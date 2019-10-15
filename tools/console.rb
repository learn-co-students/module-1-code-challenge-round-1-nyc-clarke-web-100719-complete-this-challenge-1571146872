require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Jack", "Staffen")
c2 = Customer.new("Jim", "Carey")
c3 = Customer.new("Jack", "Sparrow")

r1 = Restaurant.new("Indochine")
r2 = Restaurant.new("Xian")
r3 = Restaurant.new("Joe's Pizza")


# customer, restaurant, rating, content
rev1 = Review.new(c1, r1, 5, "Incredible!")
rev2 = Review.new(c1, r2, 4, "Yes!")
rev3 = Review.new(c2, r2, 2, "Eh")
rev4 = Review.new(c2, r1, 4, "The fish!")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line