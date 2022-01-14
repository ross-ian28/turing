class Employee
  attr_reader :name, :age, :salary

  def initialize(info)
    @name = info.fetch(:name)
    @age = info.fetch(:age).to_i
    @salary = info.fetch(:salary).to_i
  end
end
