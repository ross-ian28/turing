class Passenger
  attr_reader :feat, :driver

  def initialize(feat)
    @feat = feat
    @driver = false
  end

  def name
    @name = feat["name"] #returns value
  end

  def age
    @age = feat["age"]
  end

  def adult?
    if feat["age"] >= 18
      true
    else
      false
    end
  end

  def drive
    @driver = true
  end
end
