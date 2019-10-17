require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("yoan", "ante")
c2 = Customer.new("Brad", "Farberman")
c3 = Customer.new("Tony", "Lam")

rest1 = Restaurant.new("Yips")
rest2 = Restaurant.new("Burger king")
rest3 = Restaurant.new("Mickis")

rev1 = Review.new(c1, rest1, "okay", 3)

c1.add_review(rest1, "meh", 1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line