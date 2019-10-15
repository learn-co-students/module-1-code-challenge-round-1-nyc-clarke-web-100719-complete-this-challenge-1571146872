require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Customer.new("nick", "jardine")
c2 = Customer.new("pat", "jardine")
c3 = Customer.new("rye", "jardine")
c4 = Customer.new("heather", "schechter")
c5 = Customer.new("heather", "jardine")

rest1 = Restaurant.new("sonny's")
rest2 = Restaurant.new("lilia")
rest3 = Restaurant.new("best")
rest4 = Restaurant.new("sonny's")

rev1 = Review.new(c2, rest2, "good", 3)
rev2 = Review.new(c1, rest3, "not best", 1)
rev3 = Review.new(c4, rest3, "grand", 4) 
rev4 = Review.new(c4, rest1, "great", 5)
rev4 = Review.new(c4, rest1, "not great this time", 1)
rev5 = Review.new(c3, rest3, "ok", 2)
rev6 = Review.new(c3, rest2, "excellent", 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line