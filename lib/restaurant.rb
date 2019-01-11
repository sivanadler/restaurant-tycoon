require "pry"
class Restaurant

  attr_accessor :name

 @@all = []

 def initialize(name)
   @name = name
   @@all << self
 end

 #+ `Restaurant.all`
 #+ Returns all `Restaurant` instances
 def self.all
   @@all
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
    Location.new(address,rent, self)
  end

end #end of the class
