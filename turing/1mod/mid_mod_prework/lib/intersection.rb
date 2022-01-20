require './lib/passenger.rb'
require './lib/vehicle.rb'
require 'pry'

class Intersection
  attr_reader :street, :speeding_through

  def initialize
    @street = []
    @speeding_through = []
    #@driving_through = []
  end

  def car_passes(vehicle)
    @street << vehicle
  end

  def is_speeding
    @street.each do
      if Vehicle.speeding
        @speeding_through
      end
    end
  end

end
