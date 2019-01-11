require "pry"
class Location
  attr_accessor :address, :rent, :restaurant

  @@all = []

  def initialize(address, rent, restaurant)
     @address = address
     @rent = rent
     @restaurant = restaurant
     @@all << self
   end
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

end #end of the class
