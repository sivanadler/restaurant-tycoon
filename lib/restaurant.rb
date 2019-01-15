require "pry"
class Restaurant

  attr_accessor :name

  @@all = []

  #+ `Restaurant.all`
  #+ Returns all `Restaurant` instances
  def self.all
    @@all
  end

 def initialize(name)
   @name = name

   @@all << self
 end

  # `Restaurant#locations`
  #+ Returns an array of all `Locations`s of this particular `Restaurant` instance
  def locations
    Location.all.select do |location|
      location.restaurant == self
    end
  end

  # `Restaurant#total_rent`
  #+ Returns the total amount this `Restaurant` pays for all of its `Location`s
  def total_rent
    rent_array = self.locations.map do |location|
      location.rent
    end
    rent_array.inject(:+)
  end

  #`Resturant#create_location`
  #+ Creats a new `Location` instance for this particular `Restuarant
  def create_location(address, rent)
    # binding.pry
    Location.new(address, rent, self)
    # binding.pry
  end

  #+ `Restaurant#employees`
  #+ Returns an array of each `Employee` instance that works for this `Restaurant`
  def employees
    employee_array = []
    locations.each do |location|
      location.employees.each do |employee|
        employee_array << employee
      end
    end
    employee_array
  end

  #+ `Restaurant#total_pay`
  #+ Returns the total amount this `Restaurant` pays out to all of its employees
  def total_pay
    total_pay = self.employees.map do |employee|
      employee.pay
    end
    total_pay.inject(:+)
  end

  #+ `Restaurant#total_expenes
  #+ Returns the total amount this `Restaurant` pays out to all of its employees AND in rent
  def total_expenses
    binding.pry
    self.total_rent + self.total_pay
  end

end #end of the class
