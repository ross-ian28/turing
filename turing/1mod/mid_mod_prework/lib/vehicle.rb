require './lib/passenger.rb'

class Vehicle
  attr_reader :year, :make, :model, :speeding, :passengers

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @speeding = false
    @passengers = []
  end

  def speed
    @speeding = true
  end

  def add_passenger(pass)
    @passengers << pass
  end

  def num_adults
    passengers.length
  end
end
