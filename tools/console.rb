require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



review1 = Review.new("Dar", "Brad", 5)
review2 = Review.new("Calexico", "Alina", 7)
review3 = Review.new("Grumpy", "Avo", 9)

customer1 = Customer.new("Brad", "Farberman")
customer2 = Customer.new("Alina", "Gregorian")
customer3 = Customer.new("Avo", "Farberman")

restaurant1 = Restaurant.new("Dar")
restaurant2 = Restaurant.new("Calexico")
restaurant3 = Restaurant.new("Grumpy")

# Hi! I was able to set it all up and get the "basic methods" to work, but I struggled to write the more advanced methods off the top of my head. You'll see I attempted one in Customer.rb. I know what I need to work on!








binding.pry
0 #leave this here to ensure binding.pry isn't the last line