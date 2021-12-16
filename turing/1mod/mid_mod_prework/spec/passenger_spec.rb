require './lib/passenger.rb'
require 'pry'

RSpec.describe "Passenger" do

  it "exists" do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    expect(charlie).to be_a(Passenger)
  end

  it "charlies features are a hash" do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    expect(charlie.feat).to be_a(Hash)
  end

  it "has a name" do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    expect(charlie.name).to eq("Charlie")
  end

  it "has an age" do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    expect(charlie.age).to eq(18)
  end

  it "is Charlie an adult?" do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    expect(charlie.adult?).to eq(true)
  end

  it "is Taylor an adult" do
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    expect(taylor.adult?).to eq(false)
  end

  it "is Charlie a driver" do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    expect(charlie.driver).to eq(false)
    charlie.drive
    expect(charlie.driver).to eq(true)
  end
end
