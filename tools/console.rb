require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


#customer

c1 = Customer.new("Soufiane", "oucherrou")
c2 = Customer.new("Adam", "somthing")
c3 = Customer.new("James", "bond")


#restaurants 

res1 = Restaurant.new("Felix")
res2 = Restaurant.new("Soho")
res3 = Restaurant.new("Guilligins")


#review 

rev1 = Review.new(c1,res2, "First review", 5)
rev2 = Review.new(c3,res1, "Second review",6 )
rev3 = Review.new(c1,res2, "Third lolo lo  review", 10 )
binding.pry
0 #leave this here to ensure binding.pry isn't the last line