require "pry"
class Location
  attr_accessor :address, :rent, :restaurant

  @@all = []

  #+ `Location.all`
  #+ Returns an array of all `Location` instances, irrespective of the `Restaurant` each `Location` belongs to
  def self.all
    @@all
  end

  #+ `Location.all_addresses`
  #+ Returns an array of the address of all `Location` instances.
  def self.all_addresses
    Location.all.map do |location|
      location.address
    end
  end

  def initialize(address, rent, restaurant)
     @address = address
     @rent = rent
     @restaurant = restaurant

     @@all << self
  end

  def employees
     all_my_employees = Employee.all.select do |employee|
       employee.location == self
     end
   end

  #+ `Location#hire_employee`
  #+ Creates a new `Employee` instance for this `Location`
  def hire_employee(name, pay)
   new = []
   new << Employee.new(name, self, pay)
 end
end #end of the class
