class Employee

  attr_accessor :name, :location, :pay

  @@all = []

  #+ `Employee.all`
  #+ Returns an array of each `Employee` instance, irrespective of which `Restaurant` they work for
  def self.all
    @@all
  end

  #+ `Employee.average_pay`
  #+ Returns the average pay of all employees, irrespective of which `Restaurant` they work for
  def self.average_pay
    total_pay = Employee.all.map do |employee|
      employee.pay
    end
    total_pay.inject(:+).to_f / total_pay.size
  end

  def initialize(name, location, pay)
    @name = name
    @pay = pay
    @location = location

    @@all << self
  end

end #end of the employee class
