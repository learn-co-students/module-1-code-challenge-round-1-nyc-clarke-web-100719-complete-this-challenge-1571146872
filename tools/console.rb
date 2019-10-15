require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Eli", "Kantor")
c2 = Customer.new("Danny", "Brito")
c3 = Customer.new("Jane", "Smith")
c4 = Customer.new("Eli", "Smith")

res1 = Restaurant.new("Happys")
res2 = Restaurant.new("Elviras")
res3 = Restaurant.new("Burger King")

rev1 = Review.new(c1, res1, 4, "Really Good")
rev2 = Review.new(c1, res3, 2, "The burgers could use more pickles")
rev3 = Review.new(c3, res2, 5, "I love this place")
rev4 = Review.new(c2, res1, 1, "This place is terrible!")





binding.pry
0 #leave this here to ensure binding.pry isn't the last line