require_relative '../config/environment.rb'

r = Restaurant.new("my restaurant name")

l1 = Location.new("my address", 4500, r)
l2 = Location.new("another address", 5000, r)
l3 = Location.new("yep, another one", 6000, r)

puts "did i run?"
binding.pry
