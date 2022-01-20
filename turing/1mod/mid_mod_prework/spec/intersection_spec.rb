require './lib/passenger.rb'
require './lib/vehicle.rb'
require './lib/intersection.rb'
require 'pry'

RSpec.describe "Intersection" do

  it "exists" do
    street1 = Intersection.new
    street2 = Intersection.new
    expect(street1).to be_a(Intersection)
    expect(street2).to be_a(Intersection)
  end

  it "counts a car" do
    street1 = Intersection.new
    street2 = Intersection.new
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    street1.car_passes(vehicle)
    expect(street1.street).to eq([vehicle])
  end

  xit "counts speeding cars" do
    street1 = Intersection.new
    street2 = Intersection.new
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    vehicle2 = Vehicle.new("2003", "Nissan", "Maxima")
    vehicle2.speed
    street1.car_passes(vehicle2)
    expect(street1.is_speeding).to eq([vehicle])
  end

  it "counts speeding drivers" do

  end


end
