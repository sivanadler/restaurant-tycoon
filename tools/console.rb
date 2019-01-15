require_relative '../config/environment.rb'

#RESTAURANTS
taco_bell = Restaurant.new("taco_bell")
wendys = Restaurant.new("wendys")

#LOCATIONS
noho = Location.new("noho", 4500, taco_bell)
ues = Location.new("ues", 5000, wendys)
mdtwn = Location.new("mdtwn", 6000, taco_bell)

#Employees
e1 = Employee.new("Amanda", noho, 100)
e2 = Employee.new("Sarah", ues, 200)
e3 = Employee.new("Austin", noho, 500)

puts "did i run?"
binding.pry
