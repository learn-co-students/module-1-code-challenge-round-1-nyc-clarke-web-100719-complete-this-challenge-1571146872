require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


us1 = Customer.new("Peter", "Rald")
us2 = Customer.new("Brian", "Alt")
us3 = Customer.new("Larry", "Kid")
us4 = Customer.new("Brian", "Alt")

rest1 = Restaurant.new("Best Pizza")
rest2 = Restaurant.new("Dry Land")
rest3 = Restaurant.new("No here")

r1= Review.new(us1, rest1, "Ok I guess", 2)
r2= Review.new(us2, rest1, "Love it", 100)
r3= Review.new(us1, rest2, "Never again", -100)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line