require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

r1 = Restaurant.new("Joe's")
r2 = Restaurant.new("Moe's")
r3 = Restaurant.new("Doe's")
r4 = Restaurant.new("Poe's")

c1 = Customer.new("Gene","Li")
c2 = Customer.new("Gene","Lim")
c3 = Customer.new("Gene","Lin")
c4 = Customer.new("Gene","Lee")

rv1 = Review.new(c1, r1, 5, "It was average")
rv2 = Review.new(c2, r4, 4, "It was average")
rv3 = Review.new(c3, r2, 2, "It was average")
rv4 = Review.new(c4, r3, 1, "It was average")


c1.add_review(r2, "It was k", 1)
c2.add_review(r2, "This is the longest review by far that I've ever written", 5)
c4.add_review(r2, "It was k", 3)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line