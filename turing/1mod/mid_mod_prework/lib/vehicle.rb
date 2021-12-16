require './lib/passenger.rb'
require 'pry'

class Vehicle
  attr_reader :year, :make, :model, :speeding, :passengers

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @speeding = false
    @passengers = []
  end

  def speeding
    @speeding = @speeding
  end

  def speed
    @speeding = true
  end

  def add_passenger(pass)
    @passengers << pass
  end

  def num_adults
    x = []
    @passengers.each do |passenger|
      if passenger.adult?
        x << passenger
      end
    end
    x.length
  end
end
