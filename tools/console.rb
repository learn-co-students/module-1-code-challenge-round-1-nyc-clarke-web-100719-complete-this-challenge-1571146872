require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

r1 = Restaurant.new('BK')
r2 = Restaurant.new("Mickey D's")
r3 = Restaurant.new('Shake Shack')

c1 = Customer.new('Jackie', 'Chan')
c2 = Customer.new('Stephen', 'Hawking')
c3 = Customer.new('Barack', 'Obama')
c4 = Customer.new('Jackie', 'Robinson')

rv1 = c1.add_review(r1, 'Cheap and good', 4)
rv2 = c2.add_review(r1, 'Yuck not my thing', 1)
rv3 = c3.add_review(r1, 'This company is immoral', 3)
rv4 = c1.add_review(r3, 'Quality but expensive', 3)
rv5 = c1.add_review(r1, 'Changed my mind, found a rat', 1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line