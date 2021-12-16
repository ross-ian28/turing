require './lib/vehicle.rb'
require 'pry'

RSpec.describe "Vehicle`" do

  it "exists" do
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    expect(vehicle).to be_a(Vehicle)
  end

  it "has a year" do
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    expect(vehicle.year).to eq("2001")
  end

  it "has a make" do
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    expect(vehicle.make).to eq("Honda")
  end

  it "has a model" do
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    expect(vehicle.model).to eq("Civic")
  end

  it "is speeding?" do
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    expect(vehicle.speeding).to eq(false)
    vehicle.speed
    expect(vehicle.speeding).to eq(true)
  end

  it "has passengers" do
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    expect(vehicle.passengers).to eq([])
    vehicle.add_passenger(charlie)
    expect(vehicle.passengers.length).to eq(1)
    vehicle.add_passenger(taylor)
    expect(vehicle.passengers.length).to eq(2)
  end

  it "shows num of adults" do
    vehicle = Vehicle.new("2001", "Honda", "Civic")
  end
end
